<?php
// app/Observers/TransactionObserver.php

namespace App\Observers;

use App\Models\Transaction;
use App\Models\Activity;
use App\Models\ItemFrequency;
use App\Models\Notification;
// use App\Events\TransactionCreated;
// use App\Events\TransactionStatusChanged;

class TransactionObserver
{
    public function created(Transaction $transaction): void
    {
        // Log activity
        Activity::create([
            'user_id' => $transaction->user_id,
            'transaction_id' => $transaction->id,
            'action' => 'create',
            'model_type' => Transaction::class,
            'model_id' => $transaction->id,
            'message' => "Created {$transaction->type} transaction for {$transaction->item->name}",
            'properties' => [
                'quantity' => $transaction->quantity,
                'rack' => $transaction->rack->code,
            ],
        ]);

        // Send notification to admin
        $admins = \App\Models\User::where('role', 'admin')->get();
        foreach ($admins as $admin) {
            Notification::create([
                'type' => 'transaction_submitted',
                'notifiable_type' => \App\Models\User::class,
                'notifiable_id' => $admin->id,
                'from_user_id' => $transaction->user_id,
                'title' => 'Transaksi Baru',
                'message' => "{$transaction->user->name} mengirim transaksi {$transaction->type}",
                'data' => [
                    'transaction_id' => $transaction->id,
                    'item' => $transaction->item->name,
                    'quantity' => $transaction->quantity,
                ],
                'action_url' => route('admin.dashboard'),
            ]);
        }

        // Broadcast event
        // broadcast(new TransactionCreated($transaction))->toOthers();
    }

    public function updated(Transaction $transaction): void
    {
        // Check if status changed
        if ($transaction->isDirty('status')) {
            $oldStatus = $transaction->getOriginal('status');
            $newStatus = $transaction->status;

            // Log activity
            Activity::create([
                'user_id' => auth()->id(),
                'transaction_id' => $transaction->id,
                'action' => $newStatus === 'approved' ? 'approve' : 'reject',
                'model_type' => Transaction::class,
                'model_id' => $transaction->id,
                'message' => "Transaction {$transaction->transaction_code} {$newStatus}",
                'properties' => [
                    'old_status' => $oldStatus,
                    'new_status' => $newStatus,
                    'reason' => $transaction->rejection_reason,
                ],
            ]);

            // Update stock if approved
            if ($newStatus === 'approved') {
                $transaction->item->updateStock($transaction->quantity, $transaction->type);

                // Update rack capacity
                if ($transaction->rack) {
                    $transaction->rack->updateCapacity();
                }

                // Update item frequency
                ItemFrequency::calculateForItem($transaction->item, $transaction->created_at);
            }

            // Send notification to employee
            Notification::create([
                'type' => 'transaction_' . $newStatus,
                'notifiable_type' => \App\Models\User::class,
                'notifiable_id' => $transaction->user_id,
                'from_user_id' => auth()->id(),
                'title' => 'Status Transaksi',
                'message' => "Transaksi {$transaction->transaction_code} telah {$newStatus}",
                'data' => [
                    'transaction_id' => $transaction->id,
                    'status' => $newStatus,
                    'reason' => $transaction->rejection_reason,
                ],
                'action_url' => route('employee.dashboard'),
            ]);

            // Broadcast event
            // broadcast(new TransactionStatusChanged($transaction))->toOthers();
        }
    }
}