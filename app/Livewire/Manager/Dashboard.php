<?php

namespace App\Livewire\Manager;

use Livewire\Component;
use App\Models\Item;
use App\Models\Transaction;
use App\Models\User;
use Carbon\Carbon;

class Dashboard extends Component
{
    public $totalItems;
    public $totalTransactions;
    public $lowStockItems;
    public $pendingTransactions;
    public $recentTransactions;
    public $pendingApprovals;
    public $teamMembers;

    public function mount()
    {
        $this->loadStatistics();
    }

    private function loadStatistics()
    {
        $this->totalItems = Item::where('status', 'active')->count();
        $this->totalTransactions = Transaction::whereMonth('created_at', Carbon::now()->month)->count();
        $this->lowStockItems = Item::whereRaw('stock <= minimum_stock')->count();
        $this->pendingTransactions = Transaction::where('status', 'pending')->count();

        // Recent transactions with approver info
        $this->recentTransactions = Transaction::with(['user', 'item', 'approver'])
            ->latest()
            ->take(15)
            ->get();

        // Pending approvals - transactions waiting for admin approval
        $this->pendingApprovals = Transaction::with(['user', 'item'])
            ->where('status', 'pending')
            ->latest()
            ->take(10)
            ->get();

        $this->teamMembers = User::where('role', 'karyawan')->where('status', 'active')->count();
    }

    public function render()
    {
        return view('livewire.manager.dashboard')
            ->layout('layouts.app');
    }
}
