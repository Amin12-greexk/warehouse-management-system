<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ItemFrequency extends Model
{
    use HasFactory;

    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'item_frequency';

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'item_id',
        'out_count',
        'in_count',
        'period_date',
        'period_week',
        'period_month',
        'period_year',
        'average_quantity',
        'last_calculated_at',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'period_date' => 'date',
        'out_count' => 'integer',
        'in_count' => 'integer',
        'period_year' => 'integer',
        'average_quantity' => 'decimal:2',
        'last_calculated_at' => 'datetime',
    ];

    /**
     * Get the item that owns the frequency.
     */
    public function item(): BelongsTo
    {
        return $this->belongsTo(Item::class);
    }

    /**
     * Scope a query to filter by current month.
     */
    public function scopeCurrentMonth($query)
    {
        return $query->where('period_month', now()->format('Y-m'));
    }

    /**
     * Scope a query to filter by period.
     */
    public function scopeByPeriod($query, $year, $month = null)
    {
        $query->where('period_year', $year);

        if ($month) {
            $query->where('period_month', sprintf('%04d-%02d', $year, $month));
        }

        return $query;
    }

    /**
     * Get the movement score.
     */
    public function getMovementScoreAttribute(): float
    {
        return ($this->out_count * 2) + $this->in_count;
    }

    /**
     * Get the total movement.
     */
    public function getTotalMovementAttribute(): int
    {
        return $this->in_count + $this->out_count;
    }

    /**
     * Calculate frequency for an item.
     */
    public static function calculateForItem(Item $item, $date = null)
    {
        $date = $date ?: now();

        $transactions = $item->transactions()
            ->where('status', 'approved')
            ->whereDate('created_at', $date)
            ->selectRaw('type, COUNT(*) as count, SUM(quantity) as total')
            ->groupBy('type')
            ->get()
            ->keyBy('type');

        $inData = $transactions->get('in');
        $outData = $transactions->get('out');

        return self::updateOrCreate(
            [
                'item_id' => $item->id,
                'period_date' => $date->format('Y-m-d'),
            ],
            [
                'in_count' => $inData->count ?? 0,
                'out_count' => $outData->count ?? 0,
                'period_week' => $date->format('Y-W'),
                'period_month' => $date->format('Y-m'),
                'period_year' => $date->year,
                'average_quantity' => (($inData->total ?? 0) + ($outData->total ?? 0)) / 2,
                'last_calculated_at' => now(),
            ]
        );
    }

    /**
     * Get recommended racks for high-frequency items.
     */
    public static function getRecommendedRackPlacement($limit = 10)
    {
        return self::select('item_id', \DB::raw('SUM(out_count) as total_out'))
            ->with(['item.rack'])
            ->where('period_month', '>=', now()->subMonths(3)->format('Y-m'))
            ->groupBy('item_id')
            ->orderByDesc('total_out')
            ->limit($limit)
            ->get();
    }
}