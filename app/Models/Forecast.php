<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Forecast extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'item_id',
        'year',
        'month',
        'horizon',
        'predicted_qty',
        'method',
        'alpha',
        'beta',
        'gamma',
        'season_length',
        'mae',
        'accuracy_percent',
        'accuracy_value',
        'source',
        'run_at',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'year' => 'integer',
        'month' => 'integer',
        'horizon' => 'integer',
        'predicted_qty' => 'decimal:2',
        'alpha' => 'decimal:4',
        'beta' => 'decimal:4',
        'gamma' => 'decimal:4',
        'season_length' => 'integer',
        'mae' => 'decimal:4',
        'accuracy_percent' => 'decimal:2',
        'accuracy_value' => 'decimal:4',
        'run_at' => 'datetime',
    ];

    public function getMethodLabelAttribute(): string
    {
        return match ($this->method) {
            'seasonal', 'additive' => 'Holt-Winters (Seasonal)',
            'multiplicative' => 'Holt-Winters (Multiplicative)',
            'trend' => "Holt's Linear (Trend)",
            'simple' => 'Simple Exp (Basic)',
            'naive_avg' => 'Naive Avg (Simple Avg)',
            default => $this->method ?? '-',
        };
    }

    public function item(): BelongsTo
    {
        return $this->belongsTo(Item::class);
    }
}
