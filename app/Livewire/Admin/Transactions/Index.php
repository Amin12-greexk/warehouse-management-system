<?php

namespace App\Livewire\Admin\Transactions;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Transaction;
use Carbon\Carbon;

class Index extends Component
{
    use WithPagination;

    public $search = '';
    public $statusFilter = '';
    public $typeFilter = '';
    public $dateFrom = '';
    public $dateTo = '';

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function updatedStatusFilter()
    {
        $this->resetPage();
    }

    public function updatedTypeFilter()
    {
        $this->resetPage();
    }

    public function updatedDateFrom()
    {
        $this->resetPage();
    }

    public function updatedDateTo()
    {
        $this->resetPage();
    }

    public function quickApprove($transactionId)
    {
        $transaction = Transaction::findOrFail($transactionId);

        if ($transaction->status !== 'pending') {
            session()->flash('error', 'Hanya transaksi pending yang bisa di-approve.');
            return;
        }

        if ($transaction->type === 'in') {
            $rack = $transaction->rack()->first();

            if (! $rack) {
                session()->flash('error', 'Rak transaksi tidak ditemukan.');
                return;
            }

            if ($rack->status === 'maintenance') {
                session()->flash('error', 'Rak sedang maintenance. Tolak transaksi atau pilih rak lain.');
                return;
            }

            if ($rack->manual_full || $rack->status === 'full' || $rack->available_capacity <= 0) {
                session()->flash('error', 'Rak sudah penuh. Tolak transaksi atau pilih rak lain.');
                return;
            }

            if ($rack->available_capacity < $transaction->quantity) {
                session()->flash('error', 'Kapasitas rak tidak cukup untuk jumlah transaksi ini.');
                return;
            }
        }

        $transaction->update([
            'status' => 'approved',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
        ]);

        // Update stock
        if ($transaction->type === 'in') {
            $transaction->item->increment('stock', $transaction->quantity);
        } else {
            $transaction->item->decrement('stock', $transaction->quantity);
        }

        session()->flash('message', 'Transaksi berhasil di-approve.');
    }

    public function quickReject($transactionId)
    {
        $transaction = Transaction::findOrFail($transactionId);

        if ($transaction->status !== 'pending') {
            session()->flash('error', 'Hanya transaksi pending yang bisa di-reject.');
            return;
        }

        $transaction->update([
            'status' => 'rejected',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
            'rejection_reason' => 'Quick rejection by admin',
        ]);

        session()->flash('message', 'Transaksi berhasil di-reject.');
    }

    public function render()
    {
        $query = Transaction::with(['user', 'item', 'rack'])
            ->orderBy('created_at', 'desc');

        if ($this->search) {
            $query->where(function ($q) {
                $q->where('transaction_code', 'like', '%' . $this->search . '%')
                    ->orWhereHas('item', function ($q) {
                        $q->where('name', 'like', '%' . $this->search . '%');
                    })
                    ->orWhereHas('user', function ($q) {
                        $q->where('name', 'like', '%' . $this->search . '%');
                    });
            });
        }

        if ($this->statusFilter) {
            $query->where('status', $this->statusFilter);
        }

        if ($this->typeFilter) {
            $query->where('type', $this->typeFilter);
        }

        if ($this->dateFrom) {
            $query->whereDate('created_at', '>=', $this->dateFrom);
        }

        if ($this->dateTo) {
            $query->whereDate('created_at', '<=', $this->dateTo);
        }

        $transactions = $query->paginate(15);

        $pendingCount = Transaction::where('status', 'pending')->count();

        return view('livewire.admin.transactions.index', [
            'transactions' => $transactions,
            'pendingCount' => $pendingCount,
        ])->layout('layouts.app');
    }
}
