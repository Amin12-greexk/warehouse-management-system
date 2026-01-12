<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use App\Services\Forecasting\ForecastService;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

Artisan::command('forecast:generate {--horizon=12} {--season=12} {--method=auto}', function () {
    $horizon = (int) $this->option('horizon');
    $season = (int) $this->option('season');
    $method = (string) $this->option('method');

    $count = app(ForecastService::class)->generate($horizon, $season, $method, 'qty_out');
    $this->info("Forecast generated. Total results: {$count}");
})->purpose('Generate item forecasts from monthly demand data');
