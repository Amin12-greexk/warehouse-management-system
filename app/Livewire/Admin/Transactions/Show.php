<?php

namespace App\Livewire\Admin\Transactions;

use Livewire\Component;
use App\Models\Transaction;

class Show extends Component
{
    public Transaction $transaction;
    public $showRejectModal = false;
    public $rejectionReason = '';

    public function mount(Transaction $transaction)
    {
        $this->transaction = $transaction->load(['user', 'item', 'rack', 'approver']);
    }

    public function approve()
    {
        if ($this->transaction->status !== 'pending') {
            session()->flash('error', 'Transaksi ini sudah diproses.');
            return;
        }

        $this->transaction->update([
            'status' => 'approved',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
        ]);

        // Update stock
        if ($this->transaction->type === 'in') {
            $this->transaction->item->increment('stock', $this->transaction->quantity);
        } else {
            $this->transaction->item->decrement('stock', $this->transaction->quantity);
        }

        session()->flash('message', 'Transaksi berhasil di-approve dan stok telah diupdate.');

        return redirect()->route('admin.transactions.index');
    }

    public function openRejectModal()
    {
        if ($this->transaction->status !== 'pending') {
            session()->flash('error', 'Transaksi ini sudah diproses.');
            return;
        }

        $this->showRejectModal = true;
    }

    public function closeRejectModal()
    {
        $this->showRejectModal = false;
        $this->rejectionReason = '';
    }

    public function reject()
    {
        $this->validate([
            'rejectionReason' => 'required|min:10|max:500',
        ], [
            'rejectionReason.required' => 'Alasan penolakan harus diisi.',
            'rejectionReason.min' => 'Alasan penolakan minimal 10 karakter.',
            'rejectionReason.max' => 'Alasan penolakan maksimal 500 karakter.',
        ]);

        $this->transaction->update([
            'status' => 'rejected',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
            'rejection_reason' => $this->rejectionReason,
        ]);

        session()->flash('message', 'Transaksi berhasil di-reject.');

        return redirect()->route('admin.transactions.index');
    }

    public function render()
    {
        return view('livewire.admin.transactions.show')->layout('layouts.app');
    }
}
