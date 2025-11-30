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
    public $top10Items7Days = [];
    public $dosItems = [];
    public $anomalyItems = [];
    public $quickSlotting = [];

    public function mount()
    {
        $this->loadStatistics();
        $this->loadCharts();
        $this->loadAdvancedAnalytics();
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

    private function loadAdvancedAnalytics()
    {
        $now = Carbon::now();

        // === TOP 10 ITEMS (7 DAYS) WITH COMPARISON ===
        $items7Days = Transaction::select('item_id', DB::raw('SUM(quantity) as qty_7d'), DB::raw('COUNT(*) as freq_7d'))
            ->where('type', 'out')
            ->where('status', 'approved')
            ->whereBetween('created_at', [$now->copy()->subDays(7), $now])
            ->groupBy('item_id')
            ->orderBy('qty_7d', 'desc')
            ->limit(10)
            ->with('item')
            ->get();

        // Get previous week data for comparison
        $itemsPrevWeek = Transaction::select('item_id', DB::raw('SUM(quantity) as qty_prev'))
            ->where('type', 'out')
            ->where('status', 'approved')
            ->whereBetween('created_at', [$now->copy()->subDays(14), $now->copy()->subDays(7)])
            ->groupBy('item_id')
            ->pluck('qty_prev', 'item_id');

        $this->top10Items7Days = $items7Days->map(function($t) use ($itemsPrevWeek) {
            $qtyPrev = $itemsPrevWeek[$t->item_id] ?? 0;
            $delta = $qtyPrev > 0 ? (($t->qty_7d - $qtyPrev) / $qtyPrev) * 100 : 0;

            return [
                'item' => $t->item,
                'qty_7d' => $t->qty_7d,
                'qty_prev' => $qtyPrev,
                'delta' => round($delta, 1),
                'freq_7d' => $t->freq_7d,
                'is_high_freq_low_vol' => $t->freq_7d >= 5 && ($t->qty_7d / $t->freq_7d) <= 3,
            ];
        });

        // === DAYS OF SUPPLY & REORDER POINT ===
        $items30Days = Transaction::select('item_id', DB::raw('SUM(quantity) as qty_30d'))
            ->where('type', 'out')
            ->where('status', 'approved')
            ->where('created_at', '>=', $now->copy()->subDays(30))
            ->groupBy('item_id')
            ->get()
            ->keyBy('item_id');

        $dosData = Item::where('status', 'active')
            ->get()
            ->map(function($item) use ($items30Days, $now) {
                $qty30d = $items30Days[$item->id]->qty_30d ?? 0;
                $add = $qty30d / 30; // Average Daily Demand

                // Calculate standard deviation (simplified: use 30% of ADD as stddev)
                $stddev = $add * 0.3;
                $safetyStock = $stddev * 1.65;

                $leadTime = $item->lead_time_days ?? 7; // Default 7 days if not set
                $rop = ($add * $leadTime) + $safetyStock;

                $dos = $add > 0 ? $item->stock / $add : null;

                return [
                    'item' => $item,
                    'add' => round($add, 2),
                    'rop' => round($rop, 2),
                    'dos' => $dos ? round($dos, 1) : null,
                    'current_stock' => $item->stock,
                    'needs_restock' => $item->stock < $rop,
                ];
            })
            ->filter(fn($d) => $d['dos'] !== null)
            ->sortBy('dos')
            ->take(5);

        $this->dosItems = $dosData->values();

        // === ANOMALY DETECTION (>50% jump) ===
        $this->anomalyItems = $this->top10Items7Days->filter(fn($item) => $item['delta'] > 50)->values();

        // === QUICK SLOTTING (Top 3 from Top 10) ===
        $closestRacks = Rack::where('status', '!=', 'maintenance')
            ->orderBy('distance_score', 'asc')
            ->take(3)
            ->get();

        $this->quickSlotting = $this->top10Items7Days->take(3)->map(function($data, $index) use ($closestRacks) {
            $item = $data['item'];
            $currentRack = $item->rack;
            $recommendedRack = $closestRacks[$index] ?? $closestRacks->first();

            return [
                'item' => $item,
                'current_rack' => $currentRack,
                'recommended_rack' => $recommendedRack,
                'qty_7d' => $data['qty_7d'],
                'improvement' => $currentRack ? $currentRack->distance_score - $recommendedRack->distance_score : 0,
            ];
        })->filter(fn($s) => $s['improvement'] > 0)->values();
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