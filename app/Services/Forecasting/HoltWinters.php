<?php

namespace App\Services\Forecasting;

class HoltWinters
{
    private array $alphas;
    private array $betas;
    private array $gammas;
    private array $phis; // Damping factors

    public function __construct(
        ?array $alphas = null,
        ?array $betas = null,
        ?array $gammas = null,
        ?array $phis = null
    ) {
        // More granular parameter grid for better optimization
        $this->alphas = $alphas ?? [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9];
        $this->betas = $betas ?? [0.05, 0.1, 0.2, 0.3, 0.4, 0.5];
        $this->gammas = $gammas ?? [0.05, 0.1, 0.2, 0.3, 0.4, 0.5];
        $this->phis = $phis ?? [0.8, 0.9, 0.95, 0.98, 1.0]; // 1.0 = no damping
    }

    /**
     * Select the best model from all variants including damped versions
     */
    public function selectBest(array $series, int $seasonLength, int $horizon): array
    {
        $best = null;

        // Try auto-detect optimal season length
        $optimalSeasonLength = $this->detectSeasonLength($series, $seasonLength);

        foreach (['additive', 'multiplicative'] as $type) {
            if ($type === 'multiplicative' && $this->hasNonPositive($series)) {
                continue;
            }

            foreach ($this->alphas as $alpha) {
                foreach ($this->betas as $beta) {
                    foreach ($this->gammas as $gamma) {
                        foreach ($this->phis as $phi) {
                            $fit = $this->fitDamped(
                                $series,
                                $optimalSeasonLength,
                                $type,
                                $alpha,
                                $beta,
                                $gamma,
                                $phi,
                                $horizon
                            );

                            if ($fit['mae'] === null) {
                                continue;
                            }

                            if ($best === null || $fit['mae'] < $best['mae']) {
                                $best = $fit;
                            }
                        }
                    }
                }
            }
        }

        return $best ?? $this->naiveAverage($series, $horizon);
    }

    /**
     * Detect optimal season length using autocorrelation
     */
    private function detectSeasonLength(array $series, int $defaultLength): int
    {
        $count = count($series);
        if ($count < 12) {
            return min($defaultLength, max(2, intdiv($count, 2)));
        }

        // Test common season lengths: 3, 4, 6, 12 months
        $candidates = [3, 4, 6, 12];
        $bestLength = $defaultLength;
        $bestCorrelation = -1;

        foreach ($candidates as $lag) {
            if ($count < $lag * 2) {
                continue;
            }

            $correlation = $this->autocorrelation($series, $lag);
            if ($correlation > $bestCorrelation && $correlation > 0.3) {
                $bestCorrelation = $correlation;
                $bestLength = $lag;
            }
        }

        return $bestLength;
    }

    /**
     * Calculate autocorrelation at given lag
     */
    private function autocorrelation(array $series, int $lag): float
    {
        $count = count($series);
        if ($count <= $lag) {
            return 0;
        }

        $mean = array_sum($series) / $count;
        $variance = 0;
        $covariance = 0;

        for ($i = 0; $i < $count; $i++) {
            $variance += pow($series[$i] - $mean, 2);
        }

        for ($i = $lag; $i < $count; $i++) {
            $covariance += ($series[$i] - $mean) * ($series[$i - $lag] - $mean);
        }

        if ($variance == 0) {
            return 0;
        }

        return $covariance / $variance;
    }

    public function fitAdditiveBest(array $series, int $seasonLength, int $horizon): array
    {
        $best = null;

        foreach ($this->alphas as $alpha) {
            foreach ($this->betas as $beta) {
                foreach ($this->gammas as $gamma) {
                    foreach ($this->phis as $phi) {
                        $fit = $this->fitDamped($series, $seasonLength, 'additive', $alpha, $beta, $gamma, $phi, $horizon);
                        if ($fit['mae'] === null) {
                            continue;
                        }

                        if ($best === null || $fit['mae'] < $best['mae']) {
                            $best = $fit;
                        }
                    }
                }
            }
        }

        return $best ?? $this->naiveAverage($series, $horizon);
    }

    public function naiveAverage(array $series, int $horizon): array
    {
        $count = count($series);
        $window = min(6, $count);
        $slice = $window > 0 ? array_slice($series, $count - $window, $window) : [];
        $average = $window > 0 ? array_sum($slice) / $window : 0;

        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $forecast[$m] = max(0, $average);
        }

        return [
            'method' => 'naive_avg',
            'alpha' => null,
            'beta' => null,
            'gamma' => null,
            'phi' => null,
            'season_length' => null,
            'mae' => null,
            'forecast' => $forecast,
        ];
    }

    /**
     * Fit Holt-Winters with damping (Damped Holt-Winters)
     */
    public function fitDamped(
        array $series,
        int $seasonLength,
        string $type,
        float $alpha,
        float $beta,
        float $gamma,
        float $phi,
        int $horizon
    ): array {
        $count = count($series);

        if ($type === 'multiplicative' && $this->hasNonPositive($series)) {
            return $this->naiveAverage($series, $horizon);
        }
        if ($count < $seasonLength * 2) {
            return $this->naiveAverage($series, $horizon);
        }

        // Improved initialization using regression
        $initResult = $this->initializeComponents($series, $seasonLength, $type);
        $level = $initResult['level'];
        $trend = $initResult['trend'];
        $seasonals = $initResult['seasonals'];

        $maeTotal = 0;
        $maeCount = 0;

        for ($t = $seasonLength; $t < $count; $t++) {
            $prevLevel = $level;
            $prevTrend = $trend;
            $seasonIndex = $t % $seasonLength;
            $prevSeason = $seasonals[$seasonIndex];

            // Damped trend in forecast
            $dampedTrend = $phi * $prevTrend;

            $fitted = $type === 'additive'
                ? ($prevLevel + $dampedTrend + $prevSeason)
                : ($prevLevel + $dampedTrend) * $prevSeason;

            $maeTotal += abs($series[$t] - $fitted);
            $maeCount++;

            if ($type === 'additive') {
                $level = $alpha * ($series[$t] - $prevSeason) + (1 - $alpha) * ($prevLevel + $dampedTrend);
                $trend = $beta * ($level - $prevLevel) + (1 - $beta) * $dampedTrend;
                $seasonals[$seasonIndex] = $gamma * ($series[$t] - $level) + (1 - $gamma) * $prevSeason;
            } else {
                $level = $alpha * ($prevSeason == 0 ? 0 : $series[$t] / $prevSeason) + (1 - $alpha) * ($prevLevel + $dampedTrend);
                $trend = $beta * ($level - $prevLevel) + (1 - $beta) * $dampedTrend;
                $seasonals[$seasonIndex] = $gamma * ($level == 0 ? 1 : $series[$t] / $level) + (1 - $gamma) * $prevSeason;
            }
        }

        $mae = $maeCount > 0 ? $maeTotal / $maeCount : null;

        // Generate forecast with damped trend
        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $seasonIndex = ($count + $m - 1) % $seasonLength;
            $seasonal = $seasonals[$seasonIndex] ?? ($type === 'additive' ? 0 : 1);

            // Calculate cumulative damped trend: phi + phi^2 + ... + phi^m
            $cumulativeDamping = $this->cumulativeDamping($phi, $m);

            $value = $type === 'additive'
                ? ($level + $trend * $cumulativeDamping + $seasonal)
                : ($level + $trend * $cumulativeDamping) * $seasonal;

            $forecast[$m] = max(0, $value);
        }

        $methodName = $phi < 1.0 ? "{$type}_damped" : $type;

        return [
            'method' => $methodName,
            'alpha' => $alpha,
            'beta' => $beta,
            'gamma' => $gamma,
            'phi' => $phi,
            'season_length' => $seasonLength,
            'mae' => $mae,
            'forecast' => $forecast,
        ];
    }

    /**
     * Calculate cumulative damping sum: phi + phi^2 + ... + phi^m
     */
    private function cumulativeDamping(float $phi, int $m): float
    {
        if (abs($phi - 1.0) < 0.0001) {
            return (float) $m;
        }

        // Geometric series: phi * (1 - phi^m) / (1 - phi)
        return $phi * (1 - pow($phi, $m)) / (1 - $phi);
    }

    /**
     * Improved initialization using linear regression for trend
     */
    private function initializeComponents(array $series, int $seasonLength, string $type): array
    {
        $count = count($series);
        $numSeasons = intdiv($count, $seasonLength);

        // Calculate season averages for regression
        $seasonAverages = [];
        for ($s = 0; $s < $numSeasons; $s++) {
            $seasonData = array_slice($series, $s * $seasonLength, $seasonLength);
            $seasonAverages[] = array_sum($seasonData) / $seasonLength;
        }

        // Use linear regression to estimate initial level and trend
        if (count($seasonAverages) >= 2) {
            $regression = $this->linearRegression(array_keys($seasonAverages), $seasonAverages);
            $level = $regression['intercept'];
            $trend = $regression['slope'];
        } else {
            $level = $seasonAverages[0] ?? $series[0];
            $trend = 0.0;
        }

        // Initialize seasonal indices
        $seasonals = array_fill(0, $seasonLength, $type === 'additive' ? 0.0 : 1.0);

        for ($i = 0; $i < $seasonLength; $i++) {
            $values = [];
            for ($s = 0; $s < $numSeasons; $s++) {
                $idx = $s * $seasonLength + $i;
                if ($idx < $count) {
                    $baseLevel = $level + ($trend * $s);
                    if ($type === 'additive') {
                        $values[] = $series[$idx] - $baseLevel;
                    } else {
                        $values[] = $baseLevel == 0 ? 1 : ($series[$idx] / $baseLevel);
                    }
                }
            }

            if (!empty($values)) {
                $seasonals[$i] = array_sum($values) / count($values);
            }
        }

        // Normalize seasonals
        if ($type === 'additive') {
            $avg = array_sum($seasonals) / $seasonLength;
            $seasonals = array_map(fn($s) => $s - $avg, $seasonals);
        } else {
            $avg = array_sum($seasonals) / $seasonLength;
            if ($avg != 0) {
                $seasonals = array_map(fn($s) => $s / $avg, $seasonals);
            }
        }

        return [
            'level' => $level,
            'trend' => $trend,
            'seasonals' => $seasonals,
        ];
    }

    /**
     * Simple linear regression: y = intercept + slope * x
     */
    private function linearRegression(array $x, array $y): array
    {
        $n = count($x);
        if ($n < 2) {
            return ['intercept' => $y[0] ?? 0, 'slope' => 0];
        }

        $sumX = array_sum($x);
        $sumY = array_sum($y);
        $sumXY = 0;
        $sumX2 = 0;

        for ($i = 0; $i < $n; $i++) {
            $sumXY += $x[$i] * $y[$i];
            $sumX2 += $x[$i] * $x[$i];
        }

        $denominator = ($n * $sumX2) - ($sumX * $sumX);
        if ($denominator == 0) {
            return ['intercept' => $sumY / $n, 'slope' => 0];
        }

        $slope = (($n * $sumXY) - ($sumX * $sumY)) / $denominator;
        $intercept = ($sumY - ($slope * $sumX)) / $n;

        return [
            'intercept' => $intercept,
            'slope' => $slope,
        ];
    }

    /**
     * Legacy fit method (calls fitDamped with phi=1.0)
     */
    public function fit(
        array $series,
        int $seasonLength,
        string $type,
        float $alpha,
        float $beta,
        float $gamma,
        int $horizon
    ): array {
        return $this->fitDamped($series, $seasonLength, $type, $alpha, $beta, $gamma, 1.0, $horizon);
    }

    private function hasNonPositive(array $series): bool
    {
        foreach ($series as $value) {
            if ($value <= 0) {
                return true;
            }
        }

        return false;
    }
}
