<?php

namespace App\Livewire\Employee;

use Livewire\Component;
use App\Models\Item;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class Dashboard extends Component
{
    public $myTransactionsToday;
    public $myTransactionsMonth;
    public $lowStockItems;
    public $recentTransactions;
    public $myActivityChart = [];

    public function mount()
    {
        $this->loadStatistics();
        $this->loadCharts();
    }

    private function loadStatistics()
    {
        $userId = Auth::id();

        $this->myTransactionsToday = Transaction::where('user_id', $userId)
            ->whereDate('created_at', Carbon::today())
            ->count();

        $this->myTransactionsMonth = Transaction::where('user_id', $userId)
            ->whereMonth('created_at', Carbon::now()->month)
            ->count();

        $this->lowStockItems = Item::whereRaw('stock <= minimum_stock')->count();

        $this->recentTransactions = Transaction::with(['item'])
            ->where('user_id', $userId)
            ->latest()
            ->take(10)
            ->get();
    }

    private function loadCharts()
    {
        $userId = Auth::id();

        // My activity chart - last 7 days
        $this->myActivityChart = [
            'labels' => [],
            'data' => []
        ];

        for ($i = 6; $i >= 0; $i--) {
            $date = Carbon::now()->subDays($i);
            $this->myActivityChart['labels'][] = $date->format('D');

            $count = Transaction::where('user_id', $userId)
                ->whereDate('created_at', $date)
                ->count();

            $this->myActivityChart['data'][] = $count;
        }
    }

    public function render()
    {
        return view('livewire.employee.dashboard')
            ->layout('layouts.app');
    }
}
