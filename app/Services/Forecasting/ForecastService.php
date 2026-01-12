<?php

namespace App\Services\Forecasting;

use App\Models\Forecast;
use App\Models\ItemMonthlyDemand;
use Illuminate\Support\Facades\DB;

class ForecastService
{
    private const MIN_DATA_POINTS = 6;
    private const TEST_SIZE_MONTHS = 3;

    private const METHOD_AUTO = 'auto';
    private const METHOD_SEASONAL = 'seasonal';
    private const METHOD_TREND = 'trend';
    private const METHOD_SIMPLE = 'simple';

    private const ALPHAS = [0.2, 0.4, 0.6, 0.8];
    private const BETAS = [0.1, 0.3, 0.5];

    public function __construct(private HoltWinters $holtWinters)
    {
    }

    public function generate(
        int $horizon = 12,
        int $seasonLength = 12,
        string $method = 'auto',
        string $source = 'qty_out',
        ?int $limit = null
    ): int {
        $method = $this->normalizeMethod($method);
        $itemIds = ItemMonthlyDemand::query()
            ->select('item_id')
            ->distinct()
            ->pluck('item_id');

        if ($limit) {
            $itemIds = $itemIds->take($limit);
        }

        $runAt = now();
        $totalSaved = 0;
        foreach ($itemIds as $itemId) {
            $totalSaved += $this->generateForItem($itemId, $horizon, $seasonLength, $method, $source, $runAt);
        }

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
        $series = $seriesData['series'];

        if ($this->countNonZero($series) < self::MIN_DATA_POINTS) {
            return 0;
        }

        $seriesCount = count($series);
        $testSize = min(self::TEST_SIZE_MONTHS, max(1, $seriesCount - 1));
        $train = array_slice($series, 0, $seriesCount - $testSize);
        $test = array_slice($series, $seriesCount - $testSize);

        $evalMethod = $method === self::METHOD_AUTO
            ? $this->resolveAutoMethod(count($train))
            : $method;
        $evalResult = $this->forecastSeries($train, $seasonLength, $testSize, $evalMethod);
        $accuracy = $this->calculateAccuracy($test, $evalResult['forecast']);

        $finalMethod = $method === self::METHOD_AUTO
            ? $this->resolveAutoMethod($seriesCount)
            : $method;
        $result = $this->forecastSeries($series, $seasonLength, $horizon, $finalMethod);

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
                        'method' => $finalMethod,
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

    private function normalizeMethod(string $method): string
    {
        $method = strtolower(trim($method));

        return match ($method) {
            self::METHOD_AUTO => self::METHOD_AUTO,
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

    private function resolveAutoMethod(int $length): string
    {
        if ($length >= 24) {
            return self::METHOD_SEASONAL;
        }

        if ($length >= 12) {
            return self::METHOD_TREND;
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
            default => $this->fitSimple($series, $horizon),
        };
    }

    private function fitSeasonalAdditive(array $series, int $seasonLength, int $horizon): array
    {
        $seasonLength = max(2, $seasonLength);

        return $this->holtWinters->fitAdditiveBest($series, $seasonLength, $horizon);
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
                $fit = $this->holtLinear($series, $alpha, $beta, $horizon);
                if ($best === null || ($fit['mae'] !== null && ($best['mae'] === null || $fit['mae'] < $best['mae']))) {
                    $best = $fit;
                }
            }
        }

        return $best ?? $this->holtLinear($series, 0.4, 0.3, $horizon);
    }

    private function holtLinear(array $series, float $alpha, float $beta, int $horizon): array
    {
        $count = count($series);
        $level = (float) $series[0];
        $trend = $count > 1 ? (float) ($series[1] - $series[0]) : 0.0;
        $maeTotal = 0.0;
        $maeCount = 0;

        for ($t = 1; $t < $count; $t++) {
            $fitted = $level + $trend;
            $maeTotal += abs($series[$t] - $fitted);
            $maeCount++;

            $prevLevel = $level;
            $level = $alpha * $series[$t] + (1 - $alpha) * ($level + $trend);
            $trend = $beta * ($level - $prevLevel) + (1 - $beta) * $trend;
        }

        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $forecast[$m] = $level + ($trend * $m);
        }

        return [
            'forecast' => $forecast,
            'alpha' => $alpha,
            'beta' => $beta,
            'gamma' => null,
            'season_length' => null,
            'mae' => $maeCount > 0 ? $maeTotal / $maeCount : null,
        ];
    }

    private function calculateAccuracy(array $actuals, array $predicted): array
    {
        $errors = [];
        foreach ($actuals as $index => $actual) {
            if ($actual <= 0) {
                continue;
            }

            $forecastValue = $predicted[$index + 1] ?? 0.0;
            $errors[] = abs($actual - $forecastValue) / $actual;
        }

        if (count($errors) === 0) {
            return ['percent' => 0.0, 'value' => 0.0];
        }

        $mape = array_sum($errors) / count($errors);
        $accuracyPercent = max(0, 100 - ($mape * 100));

        return [
            'percent' => round($accuracyPercent, 2),
            'value' => round($mape, 4),
        ];
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
        return count(array_filter($series, fn ($value) => $value > 0));
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
