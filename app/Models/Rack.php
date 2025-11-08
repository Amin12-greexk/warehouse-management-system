<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Rack extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'code',
        'name',
        'location',
        'distance_score',
        'capacity',
        'used_capacity',
        'description',
        'status',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'distance_score' => 'integer',
        'capacity' => 'integer',
        'used_capacity' => 'integer',
    ];

    /**
     * Get the items for the rack.
     */
    public function items(): HasMany
    {
        return $this->hasMany(Item::class);
    }

    /**
     * Get the transactions for the rack.
     */
    public function transactions(): HasMany
    {
        return $this->hasMany(Transaction::class);
    }

    /**
     * Get the destination transactions for the rack.
     */
    public function destinationTransactions(): HasMany
    {
        return $this->hasMany(Transaction::class, 'rack_destination_id');
    }

    /**
     * Scope a query to only include available racks.
     */
    public function scopeAvailable($query)
    {
        return $query->where('status', 'available')
            ->whereRaw('used_capacity < capacity');
    }

    /**
     * Scope a query to order by distance from door.
     */
    public function scopeNearDoor($query)
    {
        return $query->orderBy('distance_score', 'asc');
    }

    /**
     * Get the available capacity.
     */
    public function getAvailableCapacityAttribute(): int
    {
        return max(0, $this->capacity - $this->used_capacity);
    }

    /**
     * Get the usage percentage.
     */
    public function getUsagePercentageAttribute(): float
    {
        return $this->capacity > 0
            ? round(($this->used_capacity / $this->capacity) * 100, 2)
            : 0;
    }

    /**
     * Check if rack is full.
     */
    public function getIsFullAttribute(): bool
    {
        return $this->used_capacity >= $this->capacity;
    }

    /**
     * Get the status badge.
     */
    public function getStatusBadgeAttribute(): string
    {
        return match ($this->status) {
            'available' => '<span class="px-2 py-1 text-xs bg-green-100 text-green-800 rounded-full">Tersedia</span>',
            'full' => '<span class="px-2 py-1 text-xs bg-red-100 text-red-800 rounded-full">Penuh</span>',
            'maintenance' => '<span class="px-2 py-1 text-xs bg-yellow-100 text-yellow-800 rounded-full">Maintenance</span>',
            default => '<span class="px-2 py-1 text-xs bg-gray-100 text-gray-800 rounded-full">Unknown</span>',
        };
    }

    /**
     * Update rack capacity based on items.
     */
    public function updateCapacity(): void
    {
        $this->used_capacity = $this->items()->sum('stock');

        if ($this->used_capacity >= $this->capacity) {
            $this->status = 'full';
        } elseif ($this->used_capacity > 0) {
            $this->status = 'available';
        }

        $this->save();
    }
}