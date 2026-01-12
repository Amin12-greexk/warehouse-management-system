<?php

namespace App\Livewire\Admin\Forecasts;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Forecast;
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
    public $isGenerating = false;

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

    public function generateForecasts(ForecastService $service)
    {
        $this->isGenerating = true;

        try {
            $total = $service->generate(
                (int) $this->generateHorizon,
                (int) $this->generateSeason,
                $this->generateMethod,
                'qty_out'
            );

            session()->flash('message', "Forecast berhasil dibuat. Total hasil: {$total}.");
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

        return view('livewire.admin.forecasts.index', [
            'forecasts' => $forecasts,
        ])->layout('layouts.app');
    }
}
