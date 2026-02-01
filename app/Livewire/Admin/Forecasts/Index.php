<?php

namespace App\Livewire\Admin\Forecasts;

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
        } catch (\Throwable $e) {
            session()->flash('error', 'Gagal membuat forecast: ' . $e->getMessage());
        } finally {
            $this->isGenerating = false;
        }
    }

    public function render()
    {
        $query = Forecast::with('item')
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
            ->orderBy('year', 'desc')
            ->orderBy('month', 'desc')
            ->orderBy('predicted_qty', 'desc');

        $forecasts = $query->paginate($this->perPage);

        $generateItems = Item::orderBy('name')
            ->get(['id', 'name', 'item_code']);

        return view('livewire.admin.forecasts.index', [
            'forecasts' => $forecasts,
            'generateItems' => $generateItems,
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
}
