<?php

namespace App\Livewire\Manager;

use Livewire\Component;
use App\Models\Item;
use App\Models\Transaction;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class Dashboard extends Component
{
    public $totalItems;
    public $totalTransactions;
    public $lowStockItems;
    public $pendingTransactions;
    public $recentTransactions;
    public $monthlyChart = [];
    public $stockChart = [];
    public $teamMembers;

    public function mount()
    {
        $this->loadStatistics();
        $this->loadCharts();
    }

    private function loadStatistics()
    {
        $this->totalItems = Item::where('status', 'active')->count();
        $this->totalTransactions = Transaction::whereMonth('created_at', Carbon::now()->month)->count();
        $this->lowStockItems = Item::whereRaw('stock <= minimum_stock')->count();
        $this->pendingTransactions = Transaction::where('status', 'pending')->count();
        $this->recentTransactions = Transaction::with(['user', 'item'])
            ->latest()
            ->take(10)
            ->get();
        $this->teamMembers = User::where('role', 'karyawan')->where('status', 'active')->count();
    }

    private function loadCharts()
    {
        // Monthly transactions chart data
        $monthlyData = Transaction::selectRaw('DATE_FORMAT(created_at, "%Y-%m") as month, COUNT(*) as count, type')
            ->whereYear('created_at', Carbon::now()->year)
            ->groupBy('month', 'type')
            ->get();

        $this->monthlyChart = [
            'labels' => [],
            'dataIn' => [],
            'dataOut' => []
        ];

        for ($i = 1; $i <= 12; $i++) {
            $month = Carbon::now()->startOfYear()->addMonths($i - 1)->format('Y-m');
            $this->monthlyChart['labels'][] = Carbon::now()->startOfYear()->addMonths($i - 1)->format('M');

            $inCount = $monthlyData->where('month', $month)->where('type', 'in')->first();
            $outCount = $monthlyData->where('month', $month)->where('type', 'out')->first();

            $this->monthlyChart['dataIn'][] = $inCount ? $inCount->count : 0;
            $this->monthlyChart['dataOut'][] = $outCount ? $outCount->count : 0;
        }

        // Stock status chart
        $this->stockChart = [
            'labels' => ['Normal', 'Stok Menipis', 'Stok Habis'],
            'data' => [
                Item::whereRaw('stock > minimum_stock * 1.5')->count(),
                Item::whereRaw('stock <= minimum_stock AND stock > 0')->count(),
                Item::where('stock', 0)->count()
            ]
        ];
    }

    public function render()
    {
        return view('livewire.manager.dashboard')
            ->layout('layouts.app');
    }
}
