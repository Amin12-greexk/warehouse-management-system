<?php

namespace App\Services\Forecasting;

class HoltWinters
{
    private array $alphas;
    private array $betas;
    private array $gammas;

    public function __construct(?array $alphas = null, ?array $betas = null, ?array $gammas = null)
    {
        $this->alphas = $alphas ?? [0.2, 0.4, 0.6, 0.8];
        $this->betas = $betas ?? [0.1, 0.3, 0.5];
        $this->gammas = $gammas ?? [0.1, 0.3, 0.5];
    }

    public function selectBest(array $series, int $seasonLength, int $horizon): array
    {
        $best = null;

        foreach (['additive', 'multiplicative'] as $type) {
            if ($type === 'multiplicative' && $this->hasNonPositive($series)) {
                continue;
            }

            foreach ($this->alphas as $alpha) {
                foreach ($this->betas as $beta) {
                    foreach ($this->gammas as $gamma) {
                        $fit = $this->fit($series, $seasonLength, $type, $alpha, $beta, $gamma, $horizon);
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

    public function fitAdditiveBest(array $series, int $seasonLength, int $horizon): array
    {
        $best = null;

        foreach ($this->alphas as $alpha) {
            foreach ($this->betas as $beta) {
                foreach ($this->gammas as $gamma) {
                    $fit = $this->fit($series, $seasonLength, 'additive', $alpha, $beta, $gamma, $horizon);
                    if ($fit['mae'] === null) {
                        continue;
                    }

                    if ($best === null || $fit['mae'] < $best['mae']) {
                        $best = $fit;
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
            'season_length' => null,
            'mae' => null,
            'forecast' => $forecast,
        ];
    }

    public function fit(
        array $series,
        int $seasonLength,
        string $type,
        float $alpha,
        float $beta,
        float $gamma,
        int $horizon
    ): array {
        $count = count($series);
        if ($type === 'multiplicative' && $this->hasNonPositive($series)) {
            return $this->naiveAverage($series, $horizon);
        }
        if ($count < $seasonLength * 2) {
            return $this->naiveAverage($series, $horizon);
        }

        $firstSeason = array_slice($series, 0, $seasonLength);
        $secondSeason = array_slice($series, $seasonLength, $seasonLength);

        $level = array_sum($firstSeason) / $seasonLength;
        $trend = ((array_sum($secondSeason) / $seasonLength) - $level) / $seasonLength;

        $seasonals = [];
        for ($i = 0; $i < $seasonLength; $i++) {
            if ($type === 'additive') {
                $seasonals[$i] = $series[$i] - $level;
            } else {
                $seasonals[$i] = $level == 0 ? 1 : ($series[$i] / $level);
            }
        }

        $maeTotal = 0;
        $maeCount = 0;

        for ($t = $seasonLength; $t < $count; $t++) {
            $prevLevel = $level;
            $prevTrend = $trend;
            $prevSeason = $seasonals[$t - $seasonLength];

            $fitted = $type === 'additive'
                ? ($prevLevel + $prevTrend + $prevSeason)
                : ($prevLevel + $prevTrend) * $prevSeason;

            $maeTotal += abs($series[$t] - $fitted);
            $maeCount++;

            if ($type === 'additive') {
                $level = $alpha * ($series[$t] - $prevSeason) + (1 - $alpha) * ($prevLevel + $prevTrend);
                $trend = $beta * ($level - $prevLevel) + (1 - $beta) * $prevTrend;
                $seasonals[$t] = $gamma * ($series[$t] - $level) + (1 - $gamma) * $prevSeason;
            } else {
                $level = $alpha * ($prevSeason == 0 ? 0 : $series[$t] / $prevSeason) + (1 - $alpha) * ($prevLevel + $prevTrend);
                $trend = $beta * ($level - $prevLevel) + (1 - $beta) * $prevTrend;
                $seasonals[$t] = $gamma * ($level == 0 ? 1 : $series[$t] / $level) + (1 - $gamma) * $prevSeason;
            }
        }

        $mae = $maeCount > 0 ? $maeTotal / $maeCount : null;
        $seasonalsTail = array_slice($seasonals, $count - $seasonLength);

        $forecast = [];
        for ($m = 1; $m <= $horizon; $m++) {
            $seasonalIndex = ($m - 1) % $seasonLength;
            $seasonal = $seasonalsTail[$seasonalIndex] ?? ($type === 'additive' ? 0 : 1);
            $value = $type === 'additive'
                ? ($level + $trend * $m + $seasonal)
                : ($level + $trend * $m) * $seasonal;
            $forecast[$m] = max(0, $value);
        }

        return [
            'method' => $type,
            'alpha' => $alpha,
            'beta' => $beta,
            'gamma' => $gamma,
            'season_length' => $seasonLength,
            'mae' => $mae,
            'forecast' => $forecast,
        ];
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
