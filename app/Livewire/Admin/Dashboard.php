<?php

namespace App\Livewire\Admin;

use Livewire\Component;
use App\Models\User;
use App\Models\Item;
use App\Models\Transaction;
use App\Models\Supplier;
use App\Models\Rack;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class Dashboard extends Component
{
    public $totalUsers;
    public $totalItems;
    public $totalTransactions;
    public $lowStockItems;
    public $pendingTransactions;
    public $recentTransactions;
    public $monthlyChart = [];
    public $stockChart = [];
    public $frequentItemsChart = [];
    public $rackRecommendations = [];

    public function mount()
    {
        $this->loadStatistics();
        $this->loadCharts();
        $this->loadRackRecommendations();
    }

    private function loadStatistics()
    {
        $this->totalUsers = User::count();
        $this->totalItems = Item::where('status', 'active')->count();
        $this->totalTransactions = Transaction::whereMonth('created_at', Carbon::now()->month)->count();
        $this->lowStockItems = Item::whereRaw('stock <= minimum_stock')->count();
        $this->pendingTransactions = Transaction::where('status', 'pending')->count();
        $this->recentTransactions = Transaction::with(['user', 'item'])
            ->latest()
            ->take(10)
            ->get();
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
            'labels' => ['Normal', 'Low Stock', 'Out of Stock'],
            'data' => [
                Item::whereRaw('stock > minimum_stock * 1.5')->count(),
                Item::whereRaw('stock <= minimum_stock AND stock > 0')->count(),
                Item::where('stock', 0)->count()
            ]
        ];

        // Frequent outgoing items chart (last 30 days)
        $frequentItems = Transaction::select('item_id', DB::raw('COUNT(*) as out_count'))
            ->where('type', 'out')
            ->where('status', 'approved')
            ->where('created_at', '>=', Carbon::now()->subDays(30))
            ->groupBy('item_id')
            ->orderBy('out_count', 'desc')
            ->limit(10)
            ->with('item')
            ->get();

        $this->frequentItemsChart = [
            'labels' => $frequentItems->map(fn($t) => $t->item ? $t->item->name : 'Unknown')->toArray(),
            'data' => $frequentItems->pluck('out_count')->toArray(),
        ];
    }

    private function loadRackRecommendations()
    {
        // Get items with high outgoing frequency in the last 30 days
        $frequentOutgoingItems = Transaction::select('item_id', DB::raw('COUNT(*) as out_count'))
            ->where('type', 'out')
            ->where('status', 'approved')
            ->where('created_at', '>=', Carbon::now()->subDays(30))
            ->groupBy('item_id')
            ->orderBy('out_count', 'desc')
            ->limit(10)
            ->with(['item.rack'])
            ->get();

        // Get racks sorted by distance (closest to door first)
        $closestRacks = Rack::where('status', '!=', 'maintenance')
            ->orderBy('distance_score', 'asc')
            ->take(5)
            ->get();

        $recommendations = [];

        foreach ($frequentOutgoingItems as $transaction) {
            $item = $transaction->item;
            if (!$item || !$item->rack) continue;

            $currentRack = $item->rack;

            // Only recommend if current rack is not already optimal (distance_score > 30)
            if ($currentRack->distance_score > 30) {
                // Find best rack with available capacity
                $bestRack = $closestRacks->first(function($rack) use ($item) {
                    return $rack->id !== $item->rack_id &&
                           ($rack->used_capacity < $rack->capacity);
                });

                if ($bestRack) {
                    $recommendations[] = [
                        'item' => $item,
                        'current_rack' => $currentRack,
                        'recommended_rack' => $bestRack,
                        'out_frequency' => $transaction->out_count,
                        'distance_improvement' => $currentRack->distance_score - $bestRack->distance_score,
                    ];
                }
            }
        }

        $this->rackRecommendations = collect($recommendations)->take(5);
    }

    public function render()
    {
        return view('livewire.admin.dashboard')
            ->layout('layouts.app');
    }
}