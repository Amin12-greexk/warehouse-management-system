<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\MorphTo;

class Notification extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'type',
        'notifiable_type',
        'notifiable_id',
        'from_user_id',
        'title',
        'message',
        'data',
        'action_url',
        'read_at',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'data' => 'array',
        'read_at' => 'datetime',
    ];

    /**
     * Get the notifiable entity.
     */
    public function notifiable(): MorphTo
    {
        return $this->morphTo();
    }

    /**
     * Get the user who triggered the notification.
     */
    public function fromUser(): BelongsTo
    {
        return $this->belongsTo(User::class, 'from_user_id');
    }

    /**
     * Scope a query to only include unread notifications.
     */
    public function scopeUnread($query)
    {
        return $query->whereNull('read_at');
    }

    /**
     * Scope a query to only include read notifications.
     */
    public function scopeRead($query)
    {
        return $query->whereNotNull('read_at');
    }

    /**
     * Scope a query to order by newest first.
     */
    public function scopeRecent($query)
    {
        return $query->orderBy('created_at', 'desc');
    }

    /**
     * Mark the notification as read.
     */
    public function markAsRead(): void
    {
        if (!$this->read_at) {
            $this->update(['read_at' => now()]);
        }
    }

    /**
     * Mark the notification as unread.
     */
    public function markAsUnread(): void
    {
        $this->update(['read_at' => null]);
    }

    /**
     * Check if notification is read.
     */
    public function isRead(): bool
    {
        return $this->read_at !== null;
    }

    /**
     * Get the notification icon.
     */
    public function getIconAttribute(): string
    {
        return match ($this->type) {
            'transaction_submitted' => '<i class="fas fa-file-invoice text-blue-500"></i>',
            'transaction_approved' => '<i class="fas fa-check-circle text-green-500"></i>',
            'transaction_rejected' => '<i class="fas fa-times-circle text-red-500"></i>',
            'low_stock_warning' => '<i class="fas fa-exclamation-triangle text-yellow-500"></i>',
            'user_created' => '<i class="fas fa-user-plus text-blue-500"></i>',
            'item_updated' => '<i class="fas fa-box text-orange-500"></i>',
            default => '<i class="fas fa-bell text-gray-500"></i>',
        };
    }

    /**
     * Get the type label.
     */
    public function getTypeLabelAttribute(): string
    {
        return match ($this->type) {
            'transaction_submitted' => 'Transaksi Baru',
            'transaction_approved' => 'Transaksi Disetujui',
            'transaction_rejected' => 'Transaksi Ditolak',
            'low_stock_warning' => 'Peringatan Stok',
            'user_created' => 'User Baru',
            'item_updated' => 'Update Barang',
            default => 'Notifikasi',
        };
    }
}