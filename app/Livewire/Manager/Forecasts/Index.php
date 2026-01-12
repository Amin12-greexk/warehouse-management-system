<?php

namespace App\Livewire\Manager\Forecasts;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Forecast;
use App\Models\ItemMonthlyDemand;
use App\Services\Forecasting\ForecastService;

class Index extends Component
{
    use WithPagination;

    public $search = '';
    public $horizonFilter = 3;
    public $methodFilter = '';
    public $perPage = 10;

    public $generateHorizon = 12;
    public $generateSeason = 12;
    public $generateMethod = 'auto';

    public $chartItemId;

    public function mount()
    {
        $this->chartItemId = Forecast::orderByDesc('run_at')->value('item_id');
    }

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function updatedHorizonFilter()
    {
        $this->resetPage();
    }

    public function updatedMethodFilter()
    {
        $this->resetPage();
    }

    public function updatedPerPage()
    {
        $this->resetPage();
    }

    public function updatedChartItemId()
    {
        $this->emitChartData();
    }

    public function generateForecasts(ForecastService $service)
    {
        try {
            $total = $service->generate(
                (int) $this->generateHorizon,
                (int) $this->generateSeason,
                $this->generateMethod,
                'qty_out'
            );

            session()->flash('message', "Forecast berhasil dibuat untuk {$total} barang.");
            $this->emitChartData();
        } catch (\Throwable $e) {
            session()->flash('error', 'Gagal membuat forecast: ' . $e->getMessage());
        }
    }

    public function emitChartData(): void
    {
        if (! $this->chartItemId) {
            return;
        }

        $payload = $this->buildChartData((int) $this->chartItemId);
        $this->dispatch('forecast-chart-updated', data: $payload);
    }

    private function buildChartData(int $itemId): array
    {
        $latestRunAt = Forecast::where('item_id', $itemId)->max('run_at');

        $forecastRows = Forecast::with('item')
            ->where('item_id', $itemId)
            ->when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->where('horizon', '<=', 12)
            ->orderBy('year')
            ->orderBy('month')
            ->get();

        if ($forecastRows->isEmpty()) {
            return [
                'labels' => [],
                'forecast' => [],
                'lastYear' => [],
                'item' => null,
            ];
        }

        $labels = [];
        $forecastData = [];
        $lastYearData = [];
        $item = $forecastRows->first()->item;

        foreach ($forecastRows as $row) {
            $labels[] = str_pad($row->month, 2, '0', STR_PAD_LEFT) . '/' . $row->year;
            $forecastData[] = (float) $row->predicted_qty;

            $lastYear = ItemMonthlyDemand::where('item_id', $row->item_id)
                ->where('year', $row->year - 1)
                ->where('month', $row->month)
                ->value('qty_out');

            $lastYearData[] = $lastYear !== null ? (float) $lastYear : 0.0;
        }

        return [
            'labels' => $labels,
            'forecast' => $forecastData,
            'lastYear' => $lastYearData,
            'item' => [
                'name' => $item?->name,
                'code' => $item?->item_code,
            ],
        ];
    }

    private function getStatistics($latestRunAt)
    {
        $totalItems = Forecast::when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->distinct('item_id')
            ->count('item_id');

        $avgAccuracy = Forecast::when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->whereNotNull('accuracy_percent')
            ->avg('accuracy_percent');

        $topItem = Forecast::with('item')
            ->when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->orderBy('predicted_qty', 'desc')
            ->first();

        $totalPredictedQty = Forecast::when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->sum('predicted_qty');

        return [
            'totalItems' => $totalItems,
            'avgAccuracy' => $avgAccuracy ? round($avgAccuracy, 1) : 0,
            'topItem' => $topItem,
            'totalPredictedQty' => $totalPredictedQty,
            'lastRun' => $latestRunAt ? \Carbon\Carbon::parse($latestRunAt)->diffForHumans() : '-',
        ];
    }

    public function render()
    {
        $latestRunAt = Forecast::max('run_at');

        $query = Forecast::with('item')
            ->when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->when($this->search, function ($query) {
                $query->whereHas('item', function ($itemQuery) {
                    $itemQuery->where('name', 'like', '%' . $this->search . '%')
                        ->orWhere('item_code', 'like', '%' . $this->search . '%');
                });
            })
            ->when($this->horizonFilter, function ($query) {
                $query->where('horizon', $this->horizonFilter);
            })
            ->when($this->methodFilter, function ($query) {
                $map = [
                    'seasonal' => ['seasonal', 'additive', 'multiplicative'],
                    'trend' => ['trend'],
                    'simple' => ['simple', 'naive_avg'],
                ];
                $values = $map[$this->methodFilter] ?? [$this->methodFilter];
                $query->whereIn('method', $values);
            })
            ->orderBy('predicted_qty', 'desc')
            ->orderBy('year', 'desc')
            ->orderBy('month', 'desc');

        $forecasts = $query->paginate($this->perPage);

        $chartItems = Forecast::with('item')
            ->select('item_id')
            ->distinct()
            ->when($latestRunAt, function ($query) use ($latestRunAt) {
                $query->where('run_at', $latestRunAt);
            })
            ->get()
            ->map(function ($row) {
                return $row->item;
            })
            ->filter();

        $statistics = $this->getStatistics($latestRunAt);

        return view('livewire.manager.forecasts.index', [
            'forecasts' => $forecasts,
            'chartItems' => $chartItems,
            'statistics' => $statistics,
        ])->layout('layouts.app');
    }
}
