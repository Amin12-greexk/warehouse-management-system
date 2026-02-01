<?php

namespace App\Livewire\Manager\Forecasts;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Forecast;
use App\Models\Item;
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
    public $generateSeason = 6;
    public $generateMethod = 'hybrid';
    public $isGenerating = false;
    public $generateItemId;
    public $generateItemInput = '';


    public function mount()
    {
        $this->generateItemId = Forecast::orderByDesc('run_at')->value('item_id');
        if (! $this->generateItemId) {
            $this->generateItemId = ItemMonthlyDemand::orderByDesc('year')
                ->orderByDesc('month')
                ->value('item_id');
        }

        if ($this->generateItemId) {
            $item = Item::find($this->generateItemId);
            if ($item) {
                $this->generateItemInput = $this->formatItemLabel($item);
            }
            $this->emitChartData();
        }
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

    public function updatedGenerateItemInput()
    {
        $this->generateItemId = $this->resolveItemId($this->generateItemInput);
        $this->emitChartData();
    }

    public function generateForecasts(ForecastService $service)
    {
        $this->isGenerating = true;

        try {
            if (! $this->generateItemId) {
                session()->flash('error', 'Pilih barang terlebih dahulu untuk generate forecast.');
                return;
            }
            if (! ItemMonthlyDemand::where('item_id', $this->generateItemId)->exists()) {
                session()->flash('error', 'Data historis barang ini belum ada. Tambahkan data terlebih dahulu.');
                return;
            }

            $total = $service->generateForItem(
                (int) $this->generateItemId,
                (int) $this->generateHorizon,
                (int) $this->generateSeason,
                $this->generateMethod,
                'qty_out'
            );

            session()->flash('message', "Forecast berhasil dibuat untuk barang terpilih ({$total} periode).");
            $this->emitChartData();
        } catch (\Throwable $e) {
            session()->flash('error', 'Gagal membuat forecast: ' . $e->getMessage());
        } finally {
            $this->isGenerating = false;
        }
    }

    public function emitChartData(): void
    {
        if (! $this->generateItemId) {
            return;
        }

        $payload = $this->buildChartData((int) $this->generateItemId);
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
            $history = ItemMonthlyDemand::with('item')
                ->where('item_id', $itemId)
                ->orderBy('year', 'desc')
                ->orderBy('month', 'desc')
                ->take(12)
                ->get()
                ->reverse()
                ->values();

            if ($history->isEmpty()) {
                return [
                    'labels' => [],
                    'forecast' => [],
                    'lastYear' => [],
                    'item' => null,
                    'mode' => 'empty',
                ];
            }

            $labels = [];
            $actualData = [];
            $lastYearData = [];
            $item = $history->first()->item;

            foreach ($history as $row) {
                $labels[] = str_pad($row->month, 2, '0', STR_PAD_LEFT) . '/' . $row->year;
                $actualData[] = (float) $row->qty_out;

                $lastYear = ItemMonthlyDemand::where('item_id', $row->item_id)
                    ->where('year', $row->year - 1)
                    ->where('month', $row->month)
                    ->value('qty_out');

                $lastYearData[] = $lastYear !== null ? (float) $lastYear : 0.0;
            }

            return [
                'labels' => $labels,
                'forecast' => $actualData,
                'lastYear' => $lastYearData,
                'item' => [
                    'name' => $item?->name,
                    'code' => $item?->item_code,
                ],
                'mode' => 'historical',
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
            'mode' => 'forecast',
        ];
    }

    private function getStatistics($latestRunAt)
    {
        if (! $latestRunAt) {
            $totalItems = ItemMonthlyDemand::distinct('item_id')->count('item_id');

            return [
                'totalItems' => $totalItems,
                'avgAccuracy' => 0,
                'topItem' => null,
                'totalPredictedQty' => 0,
                'lastRun' => '-',
            ];
        }

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
            ->when($this->generateItemId, function ($query) {
                $query->where('item_id', $this->generateItemId);
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

        $generateItems = Item::orderBy('name')
            ->get(['id', 'name', 'item_code']);

        $statistics = $this->getStatistics($latestRunAt);

        return view('livewire.manager.forecasts.index', [
            'forecasts' => $forecasts,
            'generateItems' => $generateItems,
            'statistics' => $statistics,
            'isGenerating' => $this->isGenerating,
        ])->layout('layouts.app');
    }

    private function resolveItemId(?string $input): ?int
    {
        if (! $input) {
            return null;
        }

        $value = trim($input);
        if ($value === '') {
            return null;
        }

        $code = $value;
        if (str_contains($value, ' - ')) {
            $parts = explode(' - ', $value, 2);
            $code = trim($parts[0]);
        }

        $item = Item::where('item_code', $code)->first();
        if ($item) {
            return $item->id;
        }

        if (ctype_digit($code)) {
            $item = Item::whereKey((int) $code)->first();
            if ($item) {
                return $item->id;
            }
        }

        $item = Item::where('name', $value)->first();

        return $item?->id;
    }

    private function formatItemLabel(Item $item): string
    {
        return "{$item->item_code} - {$item->name}";
    }
}
