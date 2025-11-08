<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class Transaction extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'transaction_code',
        'user_id',
        'item_id',
        'type',
        'quantity',
        'rack_id',
        'rack_destination_id',
        'photo',
        'notes',
        'status',
        'approved_by',
        'approved_at',
        'rejection_reason',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'quantity' => 'integer',
        'approved_at' => 'datetime',
    ];

    /**
     * The "booted" method of the model.
     */
    protected static function booted(): void
    {
        static::creating(function ($transaction) {
            if (empty($transaction->transaction_code)) {
                $transaction->transaction_code = self::generateTransactionCode($transaction->type);
            }
        });
    }

    /**
     * Get the user that owns the transaction.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the item that owns the transaction.
     */
    public function item(): BelongsTo
    {
        return $this->belongsTo(Item::class);
    }

    /**
     * Get the rack for the transaction.
     */
    public function rack(): BelongsTo
    {
        return $this->belongsTo(Rack::class);
    }

    /**
     * Get the destination rack for the transaction.
     */
    public function rackDestination(): BelongsTo
    {
        return $this->belongsTo(Rack::class, 'rack_destination_id');
    }

    /**
     * Get the approver user.
     */
    public function approver(): BelongsTo
    {
        return $this->belongsTo(User::class, 'approved_by');
    }

    /**
     * Get the activities for the transaction.
     */
    public function activities(): HasMany
    {
        return $this->hasMany(Activity::class);
    }

    /**
     * Scope a query to only include pending transactions.
     */
    public function scopePending($query)
    {
        return $query->where('status', 'pending');
    }

    /**
     * Scope a query to only include approved transactions.
     */
    public function scopeApproved($query)
    {
        return $query->where('status', 'approved');
    }

    /**
     * Scope a query to only include rejected transactions.
     */
    public function scopeRejected($query)
    {
        return $query->where('status', 'rejected');
    }

    /**
     * Scope a query to filter by type.
     */
    public function scopeType($query, $type)
    {
        return $query->where('type', $type);
    }

    /**
     * Scope a query to only include today's transactions.
     */
    public function scopeToday($query)
    {
        return $query->whereDate('created_at', today());
    }

    /**
     * Get the status badge.
     */
    public function getStatusBadgeAttribute(): string
    {
        return match ($this->status) {
            'pending' => '<span class="px-2 py-1 text-xs bg-yellow-100 text-yellow-800 rounded-full">Menunggu</span>',
            'approved' => '<span class="px-2 py-1 text-xs bg-green-100 text-green-800 rounded-full">Disetujui</span>',
            'rejected' => '<span class="px-2 py-1 text-xs bg-red-100 text-red-800 rounded-full">Ditolak</span>',
            default => '<span class="px-2 py-1 text-xs bg-gray-100 text-gray-800 rounded-full">Unknown</span>',
        };
    }

    /**
     * Get the type icon.
     */
    public function getTypeIconAttribute(): string
    {
        return $this->type === 'in'
            ? '<i class="fas fa-arrow-down text-green-500"></i>'
            : '<i class="fas fa-arrow-up text-red-500"></i>';
    }

    /**
     * Get the type label.
     */
    public function getTypeLabelAttribute(): string
    {
        return $this->type === 'in' ? 'Barang Masuk' : 'Barang Keluar';
    }

    /**
     * Get the photo URL.
     */
    public function getPhotoUrlAttribute(): string
    {
        return $this->photo
            ? Storage::url($this->photo)
            : asset('images/no-photo.png');
    }

    /**
     * Generate unique transaction code.
     */
    public static function generateTransactionCode($type): string
    {
        $prefix = $type === 'in' ? 'IN' : 'OUT';
        $date = now()->format('Ymd');
        $random = strtoupper(Str::random(4));

        return "{$prefix}-{$date}-{$random}";
    }

    /**
     * Approve the transaction.
     */
    public function approve(User $approver): void
    {
        $this->status = 'approved';
        $this->approved_by = $approver->id;
        $this->approved_at = now();
        $this->save();

        // Fire event
        event(new \App\Events\TransactionStatusChanged($this));
    }

    /**
     * Reject the transaction.
     */
    public function reject(User $approver, string $reason): void
    {
        $this->status = 'rejected';
        $this->approved_by = $approver->id;
        $this->approved_at = now();
        $this->rejection_reason = $reason;
        $this->save();

        // Fire event
        event(new \App\Events\TransactionStatusChanged($this));
    }

    /**
     * Check if transaction can be modified.
     */
    public function canBeModified(): bool
    {
        return $this->status === 'pending';
    }

    /**
     * Get the total value.
     */
    public function getTotalValue(): float
    {
        return $this->quantity * ($this->item->price ?? 0);
    }
}