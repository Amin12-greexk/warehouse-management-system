<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Support\Facades\Storage;

class Item extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'item_code',
        'barcode',
        'name',
        'type',
        'supplier_id',
        'rack_id',
        'stock',
        'minimum_stock',
        'unit',
        'price',
        'image',
        'description',
        'status',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'stock' => 'integer',
        'minimum_stock' => 'integer',
        'price' => 'decimal:2',
    ];

    /**
     * Get the supplier that owns the item.
     */
    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class);
    }

    /**
     * Get the rack that contains the item.
     */
    public function rack(): BelongsTo
    {
        return $this->belongsTo(Rack::class);
    }

    /**
     * Get the transactions for the item.
     */
    public function transactions(): HasMany
    {
        return $this->hasMany(Transaction::class);
    }

    /**
     * Get the frequencies for the item.
     */
    public function frequencies(): HasMany
    {
        return $this->hasMany(ItemFrequency::class);
    }

    /**
     * Get the monthly demand history for the item.
     */
    public function monthlyDemands(): HasMany
    {
        return $this->hasMany(ItemMonthlyDemand::class);
    }

    /**
     * Get the forecasts for the item.
     */
    public function forecasts(): HasMany
    {
        return $this->hasMany(Forecast::class);
    }

    /**
     * Scope a query to only include active items.
     */
    public function scopeActive($query)
    {
        return $query->where('status', 'active');
    }

    /**
     * Scope a query to only include low stock items.
     */
    public function scopeLowStock($query)
    {
        return $query->whereRaw('stock <= minimum_stock');
    }

    /**
     * Scope a query to filter by type.
     */
    public function scopeByType($query, $type)
    {
        return $query->where('type', $type);
    }

    /**
     * Get the stock status.
     */
    public function getStockStatusAttribute(): string
    {
        if ($this->stock <= 0) {
            return 'out_of_stock';
        } elseif ($this->stock <= $this->minimum_stock) {
            return 'low_stock';
        } elseif ($this->stock <= ($this->minimum_stock * 1.5)) {
            return 'warning';
        }
        return 'normal';
    }

    /**
     * Get the stock status color.
     */
    public function getStockStatusColorAttribute(): string
    {
        return match ($this->stock_status) {
            'out_of_stock' => 'red',
            'low_stock' => 'orange',
            'warning' => 'yellow',
            default => 'green',
        };
    }

    /**
     * Get the stock status badge.
     */
    public function getStockStatusBadgeAttribute(): string
    {
        return match ($this->stock_status) {
            'out_of_stock' => '<span class="px-2 py-1 text-xs bg-red-100 text-red-800 rounded-full">Habis</span>',
            'low_stock' => '<span class="px-2 py-1 text-xs bg-orange-100 text-orange-800 rounded-full">Stok Rendah</span>',
            'warning' => '<span class="px-2 py-1 text-xs bg-yellow-100 text-yellow-800 rounded-full">Perlu Perhatian</span>',
            default => '<span class="px-2 py-1 text-xs bg-green-100 text-green-800 rounded-full">Normal</span>',
        };
    }

    /**
     * Get the total stock value.
     */
    public function getStockValueAttribute(): float
    {
        return $this->stock * $this->price;
    }

    /**
     * Get the image URL.
     */
    public function getImageUrlAttribute(): string
    {
        return $this->image
            ? Storage::url($this->image)
            : asset('images/no-image.png');
    }

    /**
     * Get the type label.
     */
    public function getTypeLabelAttribute(): string
    {
        return match ($this->type) {
            'raw_material' => 'Bahan Baku',
            'finished_goods' => 'Barang Jadi',
            'spare_parts' => 'Spare Part',
            'consumable' => 'Barang Habis Pakai',
            default => 'Lainnya',
        };
    }

    /**
     * Update item stock.
     */
    public function updateStock(int $quantity, string $type): void
    {
        if ($type === 'in') {
            $this->stock += $quantity;
        } else {
            $this->stock = max(0, $this->stock - $quantity);
        }

        $this->save();

        // Check if needs restock alert
        if ($this->needsRestock()) {
            event(new \App\Events\StockAlert($this, $this->stock <= 0 ? 'out_of_stock' : 'low_stock'));
        }
    }

    /**
     * Check if item needs restock.
     */
    public function needsRestock(): bool
    {
        return $this->stock <= $this->minimum_stock;
    }

    /**
     * Get movement frequency for a period.
     */
    public function getMovementFrequency($period = 'month'): int
    {
        $query = $this->transactions()
            ->where('status', 'approved')
            ->where('type', 'out');

        switch ($period) {
            case 'day':
                $query->whereDate('created_at', today());
                break;
            case 'week':
                $query->whereBetween('created_at', [now()->startOfWeek(), now()->endOfWeek()]);
                break;
            case 'month':
                $query->whereMonth('created_at', now()->month)
                    ->whereYear('created_at', now()->year);
                break;
            case 'year':
                $query->whereYear('created_at', now()->year);
                break;
        }

        return $query->count();
    }
}
