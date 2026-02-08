<?php

namespace App\Services\Forecasting;

use App\Models\Forecast;
use App\Models\ItemMonthlyDemand;
use Illuminate\Support\Facades\DB;

class ForecastService
{
    private const MIN_DATA_POINTS = 1;
    private const TEST_SIZE_MONTHS = 3;
    private const MAX_HISTORY_MONTHS = 36;

    // Minimum periods for backtesting
    private const MIN_BACKTEST_PERIODS = 3;
    private const MAX_BACKTEST_PERIODS = 12;

    private const METHOD_AUTO = 'auto';
    private const METHOD_HYBRID = 'hybrid';
    private const METHOD_SEASONAL = 'seasonal';
    private const METHOD_TREND = 'trend';
    private const METHOD_SIMPLE = 'simple';
    private const METHOD_WMA = 'wma';
    private const METHOD_ENSEMBLE = 'ensemble';

    // Expanded parameter grid for better optimization
    private const ALPHAS = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9];
    private const BETAS = [0.05, 0.1, 0.2, 0.3, 0.4, 0.5];
    private const PHIS = [0.8, 0.9, 0.95, 0.98, 1.0]; // Damping factors

    public function __construct(private HoltWinters $holtWinters)
    {
    }

    public function generate(
        int $horizon = 12,
        int $seasonLength = 6,
        string $method = 'auto',
        string $source = 'qty_out',
        ?int $limit = null
    ): int {
        @set_time_limit(0);
        @ini_set('max_execution_time', '0');

        $method = $this->normalizeMethod($method);
        $query = ItemMonthlyDemand::query()
            ->select('item_id')
            ->distinct()
            ->orderBy('item_id');

        if ($limit) {
            $query->limit($limit);
        }

        $runAt = now();
        $totalSaved = 0;
        $query->chunk(200, function ($rows) use (&$totalSaved, $horizon, $seasonLength, $method, $source, $runAt) {
            foreach ($rows as $row) {
                $totalSaved += $this->generateForItem((int) $row->item_id, $horizon, $seasonLength, $method, $source, $runAt);
            }
        });

        return $totalSaved;
    }

    public function generateForItem(
        int $itemId,
        int $horizon,
        int $seasonLength,
        string $method,
        string $source,
        ?\DateTimeInterface $runAt = null
    ): int {
        $method = $this->normalizeMethod($method);
        $demands = ItemMonthlyDemand::query()
            ->where('item_id', $itemId)
            ->orderBy('year')
            ->orderBy('month')
            ->get(['year', 'month', $source]);

        if ($demands->isEmpty()) {
            return 0;
        }

        $seriesData = $this->buildSeries($demands->toArray(), $source);
        $series = $this->trimRecentSeries($seriesData['series'], $seasonLength);

        // Apply outlier detection and smoothing
        $series = $this->removeOutliers($series);

        if ($this->countNonZero($series) < self::MIN_DATA_POINTS) {
            return 0;
        }

        $seriesCount = count($series);

        // Determine the best method and calculate accuracy using backtesting
        if ($seriesCount < 3) {
            $finalMethod = self::METHOD_SIMPLE;
            $result = $this->forecastSeries($series, $seasonLength, $horizon, $finalMethod);
            $accuracy = $this->backtestAccuracy($series, $seasonLength, $finalMethod);
        } else {
            if ($method === self::METHOD_AUTO) {
                // Use backtesting to select the best method
                $selection = $this->selectBestMethodByBacktest($series, $seasonLength);
                $finalMethod = $selection['method'];
                $accuracy = $selection['accuracy'];
            } elseif ($method === self::METHOD_HYBRID) {
                $finalMethod = $this->selectHybridMethod($seriesCount, $seasonLength);
                $accuracy = $this->backtestAccuracy($series, $seasonLength, $finalMethod);
            } elseif ($method === self::METHOD_ENSEMBLE) {
                $finalMethod = self::METHOD_ENSEMBLE;
                $accuracy = $this->backtestEnsembleAccuracy($series, $seasonLength);
            } else {
                $finalMethod = $method;
                $accuracy = $this->backtestAccuracy($series, $seasonLength, $finalMethod);
            }

            $result = $this->forecastSeries($series, $seasonLength, $horizon, $finalMethod);
        }

        $lastPeriod = $seriesData['end'];
        $saved = 0;
        $runAt = $runAt ?? now();

        DB::beginTransaction();
        try {
            foreach ($result['forecast'] as $step => $value) {
                $period = $this->addMonths($lastPeriod['year'], $lastPeriod['month'], $step);
                Forecast::updateOrCreate(
                    [
                        'item_id' => $itemId,
                        'year' => $period['year'],
                        'month' => $period['month'],
                        'horizon' => $step,
                        'source' => $source,
                    ],
                    [
                        'predicted_qty' => max(0, (int) round($value)),
                        'method' => $result['method'] ?? $finalMethod,
                        'alpha' => $result['alpha'],
                        'beta' => $result['beta'],
                        'gamma' => $result['gamma'],
                        'season_length' => $result['season_length'] ?? $seasonLength,
                        'mae' => $result['mae'],
                        'accuracy_percent' => $accuracy['percent'],
                        'accuracy_value' => $accuracy['value'],
                        'run_at' => $runAt,
                    ]
                );
                $saved++;
            }

            DB::commit();
        } catch (\Throwable $e) {
            DB::rollBack();
            throw $e;
        }

        return $saved;
    }

    /**
     * Rolling Window Backtesting - Calculate accuracy over multiple periods
     * This provides a more robust accuracy measure than single train/test split
     */
    private function backtestAccuracy(array $series, int $seasonLength, string $method): array
    {
        $count = count($series);
        $minTrain = max($seasonLength * 2, 6);

        // Need enough data for backtesting
        if ($count < $minTrain + self::MIN_BACKTEST_PERIODS) {
            // Fall back to simple MAE-based accuracy
            return $this->estimateAccuracyFromMAE($series, $seasonLength, $method);
        }

        $errors = [];
        $absoluteErrors = [];

        // Rolling window: train on first N periods, predict next, slide window
        $numTests = min(self::MAX_BACKTEST_PERIODS, $count - $minTrain);

        for ($i = 0; $i < $numTests; $i++) {
            $trainEnd = $count - $numTests + $i;
            $train = array_slice($series, 0, $trainEnd);
            $actual = $series[$trainEnd];

            if ($actual <= 0) {
                continue; // Skip zero actuals
            }

            // Make 1-step ahead forecast
            $forecast = $this->forecastSeries($train, $seasonLength, 1, $method);
            $predicted = $forecast['forecast'][1] ?? 0;

            // Calculate percentage error
            $error = abs($actual - $predicted) / $actual;
            $errors[] = $error;
            $absoluteErrors[] = abs($actual - $predicted);
        }

        if (empty($errors)) {
            return $this->estimateAccuracyFromMAE($series, $seasonLength, $method);
        }

        $mape = array_sum($errors) / count($errors);
        $accuracyPercent = max(0, min(100, (1 - $mape) * 100));

        return [
            'percent' => round($accuracyPercent, 2),
            'value' => round($mape, 4),
            'samples' => count($errors),
        ];
    }

    /**
     * Select the best method using backtesting across all candidates
     */
    private function selectBestMethodByBacktest(array $series, int $seasonLength): array
    {
        $candidates = [self::METHOD_SIMPLE, self::METHOD_WMA, self::METHOD_TREND];

        if (count($series) >= $seasonLength * 2) {
            $candidates[] = self::METHOD_SEASONAL;
        }

        $best = null;

        foreach ($candidates as $method) {
            $accuracy = $this->backtestAccuracy($series, $seasonLength, $method);

            // Higher accuracy percent is better
            if ($best === null || $accuracy['percent'] > $best['accuracy']['percent']) {
                $best = [
                    'method' => $method,
                    'accuracy' => $accuracy,
                ];
            }
        }

        return $best ?? [
            'method' => self::METHOD_SIMPLE,
            'accuracy' => ['percent' => 0.0, 'value' => 0.0, 'samples' => 0],
        ];
    }

    /**
     * Backtest ensemble method
     */
    private function backtestEnsembleAccuracy(array $series, int $seasonLength): array
    {
        $count = count($series);
        $minTrain = max($seasonLength * 2, 6);

        if ($count < $minTrain + self::MIN_BACKTEST_PERIODS) {
            return $this->estimateAccuracyFromMAE($series, $seasonLength, self::METHOD_ENSEMBLE);
        }

        $errors = [];
        $numTests = min(self::MAX_BACKTEST_PERIODS, $count - $minTrain);

        for ($i = 0; $i < $numTests; $i++) {
            $trainEnd = $count - $numTests + $i;
            $train = array_slice($series, 0, $trainEnd);
            $actual = $series[$trainEnd];

            if ($actual <= 0) {
                continue;
            }

            $forecast = $this->forecastEnsemble($train, $seasonLength, 1);
            $predicted = $forecast['forecast'][1] ?? 0;

            $error = abs($actual - $predicted) / $actual;
            $errors[] = $error;
        }

        if (empty($errors)) {
            return ['percent' => 0.0, 'value' => 0.0, 'samples' => 0];
        }

        $mape = array_sum($errors) / count($errors);
        $accuracyPercent = max(0, min(100, (1 - $mape) * 100));

        return [
            'percent' => round($accuracyPercent, 2),
            'value' => round($mape, 4),
            'samples' => count($errors),
        ];
    }

    /**
     * Estimate accuracy from MAE when not enough data for backtesting
     * Uses coefficient of variation as proxy
     */
    private function estimateAccuracyFromMAE(array $series, int $seasonLength, string $method): array
    {
        $result = $this->forecastSeries($series, $seasonLength, 1, $method);
        $mae = $result['mae'] ?? null;

        if ($mae === null) {
            return ['percent' => 0.0, 'value' => 0.0, 'samples' => 0];
        }

        // Calculate mean of series
        $nonZeroValues = array_filter($series, fn($v) => $v > 0);
        if (empty($nonZeroValues)) {
            return ['percent' => 0.0, 'value' => 0.0, 'samples' => 0];
        }

        $mean = array_sum($nonZeroValues) / count($nonZeroValues);

        if ($mean <= 0) {
            return ['percent' => 0.0, 'value' => 0.0, 'samples' => 0];
        }

        // Accuracy based on MAE relative to mean
        $maeRatio = $mae / $mean;
        $accuracyPercent = max(0, min(100, (1 - $maeRatio) * 100));

        return [
            'percent' => round($accuracyPercent, 2),
            'value' => round($maeRatio, 4),
            'samples' => count($nonZeroValues),
        ];
    }

    /**
     * Remove outliers using IQR method and replace with interpolated values
     */
    private function removeOutliers(array $series): array
    {
        $count = count($series);
        if ($count < 4) {
            return $series;
        }

        $sorted = $series;
        sort($sorted);

        $q1Index = (int) floor($count * 0.25);
        $q3Index = (int) floor($count * 0.75);

        $q1 = $sorted[$q1Index];
        $q3 = $sorted[$q3Index];
        $iqr = $q3 - $q1;

        // Define bounds (using 1.5 * IQR as typical)
        $lowerBound = $q1 - (1.5 * $iqr);
        $upperBound = $q3 + (1.5 * $iqr);

        $cleaned = [];
        for ($i = 0; $i < $count; $i++) {
            $value = $series[$i];

            if ($value < $lowerBound || $value > $upperBound) {
                // Replace outlier with interpolated value
                $prev = $i > 0 ? $cleaned[$i - 1] : $value;
                $next = $i < $count - 1 ? $series[$i + 1] : $value;

                // Check if next is also outlier, use moving average instead
                if ($next < $lowerBound || $next > $upperBound) {
                    $window = array_slice($series, max(0, $i - 3), min(6, $count - max(0, $i - 3)));
                    $validValues = array_filter($window, fn($v) => $v >= $lowerBound && $v <= $upperBound);
                    $cleaned[$i] = !empty($validValues) ? array_sum($validValues) / count($validValues) : $prev;
                } else {
                    $cleaned[$i] = ($prev + $next) / 2;
                }
            } else {
                $cleaned[$i] = $value;
            }
        }

        return $cleaned;
    }

    /**
     * Weighted Moving Average method
     */
    private function fitWMA(array $series, int $horizon): array
    {
        $count = count($series);
        if ($count < 2) {
            return $this->fitSimple($series, $horizon);
        }

        // Use last 6 months with exponentially decreasing weights
        $window = min(6, $count);
        $weights = [];
        $totalWeight = 0;

        for ($i = 0; $i < $window; $i++) {
            $weight = pow(0.85, $window - 1 - $i); // Most recent gets highest weight
            $weights[] = $weight;
            $totalWeight += $weight;
        }

        // Normalize weights
        $weights = array_map(fn($w) => $w / $totalWeight, $weights);

        // Calculate weighted average
        $slice = array_slice($series, $count - $window, $window);
        $weightedSum = 0;
        for ($i = 0; $i < $window; $i++) {
            $weightedSum += $slice[$i] * $weights[$i];
        }

        // Calculate weighted trend
        $trend = 0;
        if ($window >= 3) {
            $recentTrends = [];
            for ($i = 1; $i < $window; $i++) {
                $recentTrends[] = $slice[$i] - $slice[$i - 1];
            }
            $trend = array_sum($recentTrends) / count($recentTrends) * 0.5; // Damped trend
        }

        // Calculate MAE on training data
        $maeTotal = 0;
        $maeCount = 0;
        for ($t = $window; $t < $count; $t++) {
            $startIdx = $t - $window;
            $testSlice = array_slice($series, $startIdx, $window);
            $predicted = 0;
            for ($i = 0; $i < $window; $i++) {
                $predicted += $testSlice[$i] * $weights[$i];
            }
            $maeTotal += abs($series[$t] - $predicted);
            $maeCount++;
        }

        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $forecast[$m] = max(0, $weightedSum + ($trend * $m));
        }

        return [
            'method' => self::METHOD_WMA,
            'forecast' => $forecast,
            'alpha' => null,
            'beta' => null,
            'gamma' => null,
            'season_length' => null,
            'mae' => $maeCount > 0 ? $maeTotal / $maeCount : null,
        ];
    }

    /**
     * Ensemble forecasting - combines multiple methods
     */
    private function forecastEnsemble(array $series, int $seasonLength, int $horizon): array
    {
        $methods = [
            self::METHOD_SIMPLE => $this->fitSimple($series, $horizon),
            self::METHOD_WMA => $this->fitWMA($series, $horizon),
            self::METHOD_TREND => $this->fitHoltLinear($series, $horizon),
        ];

        // Add seasonal if enough data
        if (count($series) >= $seasonLength * 2) {
            $methods[self::METHOD_SEASONAL] = $this->fitSeasonalAdditive($series, $seasonLength, $horizon);
        }

        // Calculate weights based on inverse MAE
        $totalWeight = 0;
        $weights = [];
        foreach ($methods as $name => $result) {
            $mae = $result['mae'] ?? 999999;
            if ($mae <= 0) {
                $mae = 0.001;
            }
            $weight = 1 / $mae;
            $weights[$name] = $weight;
            $totalWeight += $weight;
        }

        // Normalize weights
        foreach ($weights as $name => $weight) {
            $weights[$name] = $totalWeight > 0 ? $weight / $totalWeight : 1 / count($methods);
        }

        // Combine forecasts
        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $weightedValue = 0;
            foreach ($methods as $name => $result) {
                $value = $result['forecast'][$m] ?? 0;
                $weightedValue += $value * $weights[$name];
            }
            $forecast[$m] = max(0, $weightedValue);
        }

        // Calculate combined MAE
        $maes = array_filter(array_map(fn($r) => $r['mae'], $methods), fn($m) => $m !== null);
        $avgMae = !empty($maes) ? array_sum($maes) / count($maes) : null;

        return [
            'method' => self::METHOD_ENSEMBLE,
            'forecast' => $forecast,
            'alpha' => null,
            'beta' => null,
            'gamma' => null,
            'season_length' => $seasonLength,
            'mae' => $avgMae,
        ];
    }

    private function normalizeMethod(string $method): string
    {
        $method = strtolower(trim($method));

        return match ($method) {
            self::METHOD_AUTO => self::METHOD_AUTO,
            self::METHOD_HYBRID => self::METHOD_HYBRID,
            self::METHOD_ENSEMBLE, 'combined' => self::METHOD_ENSEMBLE,
            self::METHOD_WMA, 'weighted', 'weighted_ma' => self::METHOD_WMA,
            self::METHOD_SEASONAL,
            'holt-winters',
            'holt_winters',
            'hw',
            'additive',
            'multiplicative' => self::METHOD_SEASONAL,
            self::METHOD_TREND,
            'holt',
            'holt-linear',
            'holt_linear' => self::METHOD_TREND,
            self::METHOD_SIMPLE,
            'ses',
            'simple_exp',
            'simple-exp' => self::METHOD_SIMPLE,
            default => self::METHOD_AUTO,
        };
    }

    private function selectHybridMethod(int $seriesCount, int $seasonLength): string
    {
        $seasonLength = max(2, $seasonLength);
        $seasonalMin = $seasonLength * 2;

        if ($seriesCount >= $seasonalMin) {
            return self::METHOD_SEASONAL;
        }

        if ($seriesCount >= $seasonLength) {
            return self::METHOD_TREND;
        }

        if ($seriesCount >= 4) {
            return self::METHOD_WMA;
        }

        return self::METHOD_SIMPLE;
    }

    private function forecastSeries(array $series, int $seasonLength, int $horizon, string $method): array
    {
        if ($horizon <= 0) {
            return $this->emptyForecast();
        }

        return match ($method) {
            self::METHOD_SEASONAL => $this->fitSeasonalAdditive($series, $seasonLength, $horizon),
            self::METHOD_TREND => $this->fitHoltLinear($series, $horizon),
            self::METHOD_WMA => $this->fitWMA($series, $horizon),
            self::METHOD_ENSEMBLE => $this->forecastEnsemble($series, $seasonLength, $horizon),
            default => $this->fitSimple($series, $horizon),
        };
    }

    private function fitSeasonalAdditive(array $series, int $seasonLength, int $horizon): array
    {
        $seasonLength = max(2, $seasonLength);

        return $this->holtWinters->selectBest($series, $seasonLength, $horizon);
    }

    private function fitSimple(array $series, int $horizon): array
    {
        if (empty($series)) {
            return $this->emptyForecast();
        }

        $best = null;
        foreach (self::ALPHAS as $alpha) {
            $fit = $this->simpleExp($series, $alpha, $horizon);
            if ($best === null || ($fit['mae'] !== null && ($best['mae'] === null || $fit['mae'] < $best['mae']))) {
                $best = $fit;
            }
        }

        return $best ?? $this->simpleExp($series, 0.4, $horizon);
    }

    private function simpleExp(array $series, float $alpha, int $horizon): array
    {
        $count = count($series);
        $level = (float) $series[0];
        $maeTotal = 0.0;
        $maeCount = 0;

        for ($t = 1; $t < $count; $t++) {
            $fitted = $level;
            $maeTotal += abs($series[$t] - $fitted);
            $maeCount++;
            $level = $alpha * $series[$t] + (1 - $alpha) * $level;
        }

        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $forecast[$m] = $level;
        }

        return [
            'method' => self::METHOD_SIMPLE,
            'forecast' => $forecast,
            'alpha' => $alpha,
            'beta' => null,
            'gamma' => null,
            'season_length' => null,
            'mae' => $maeCount > 0 ? $maeTotal / $maeCount : null,
        ];
    }

    private function fitHoltLinear(array $series, int $horizon): array
    {
        if (empty($series)) {
            return $this->emptyForecast();
        }

        $best = null;
        foreach (self::ALPHAS as $alpha) {
            foreach (self::BETAS as $beta) {
                foreach (self::PHIS as $phi) {
                    $fit = $this->holtLinearDamped($series, $alpha, $beta, $phi, $horizon);
                    if ($best === null || ($fit['mae'] !== null && ($best['mae'] === null || $fit['mae'] < $best['mae']))) {
                        $best = $fit;
                    }
                }
            }
        }

        return $best ?? $this->holtLinearDamped($series, 0.4, 0.3, 0.95, $horizon);
    }

    /**
     * Holt-Linear with damped trend
     */
    private function holtLinearDamped(array $series, float $alpha, float $beta, float $phi, int $horizon): array
    {
        $count = count($series);
        $level = (float) $series[0];
        $trend = $count > 1 ? (float) ($series[1] - $series[0]) : 0.0;
        $maeTotal = 0.0;
        $maeCount = 0;

        for ($t = 1; $t < $count; $t++) {
            $dampedTrend = $phi * $trend;
            $fitted = $level + $dampedTrend;
            $maeTotal += abs($series[$t] - $fitted);
            $maeCount++;

            $prevLevel = $level;
            $level = $alpha * $series[$t] + (1 - $alpha) * ($level + $dampedTrend);
            $trend = $beta * ($level - $prevLevel) + (1 - $beta) * $dampedTrend;
        }

        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            // Cumulative damping: phi + phi^2 + ... + phi^m
            $cumulativeDamping = $this->cumulativeDamping($phi, $m);
            $forecast[$m] = $level + ($trend * $cumulativeDamping);
        }

        $methodName = $phi < 1.0 ? 'trend_damped' : self::METHOD_TREND;

        return [
            'method' => $methodName,
            'forecast' => $forecast,
            'alpha' => $alpha,
            'beta' => $beta,
            'gamma' => null,
            'season_length' => null,
            'mae' => $maeCount > 0 ? $maeTotal / $maeCount : null,
        ];
    }

    private function cumulativeDamping(float $phi, int $m): float
    {
        if (abs($phi - 1.0) < 0.0001) {
            return (float) $m;
        }

        return $phi * (1 - pow($phi, $m)) / (1 - $phi);
    }

    private function emptyForecast(): array
    {
        return [
            'forecast' => [],
            'alpha' => null,
            'beta' => null,
            'gamma' => null,
            'season_length' => null,
            'mae' => null,
        ];
    }

    private function countNonZero(array $series): int
    {
        return count(array_filter($series, fn($value) => $value > 0));
    }

    private function trimRecentSeries(array $series, int $seasonLength): array
    {
        $seasonLength = max(2, $seasonLength);
        $keepMonths = max($seasonLength * 2, self::MAX_HISTORY_MONTHS);

        if (count($series) <= $keepMonths) {
            return $series;
        }

        return array_slice($series, -$keepMonths);
    }

    private function buildSeries(array $rows, string $source): array
    {
        $first = $rows[0];
        $last = $rows[count($rows) - 1];

        $startIndex = $this->periodIndex((int) $first['year'], (int) $first['month']);
        $endIndex = $this->periodIndex((int) $last['year'], (int) $last['month']);

        $series = array_fill(0, $endIndex - $startIndex + 1, 0.0);

        foreach ($rows as $row) {
            $year = (int) $row['year'];
            $month = (int) $row['month'];
            $value = (float) $row[$source];
            $index = $this->periodIndex($year, $month) - $startIndex;
            if ($index >= 0 && $index < count($series)) {
                $series[$index] += $value;
            }
        }

        return [
            'series' => $series,
            'end' => ['year' => (int) $last['year'], 'month' => (int) $last['month']],
        ];
    }

    private function periodIndex(int $year, int $month): int
    {
        return ($year * 12) + ($month - 1);
    }

    private function addMonths(int $year, int $month, int $steps): array
    {
        $index = $this->periodIndex($year, $month) + $steps;
        $newYear = intdiv($index, 12);
        $newMonth = ($index % 12) + 1;

        return ['year' => $newYear, 'month' => $newMonth];
    }
}
