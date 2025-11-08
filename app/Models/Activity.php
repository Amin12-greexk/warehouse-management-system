<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Activity extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'user_id',
        'transaction_id',
        'action',
        'model_type',
        'model_id',
        'message',
        'properties',
        'photo_path',
        'ip_address',
        'user_agent',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'properties' => 'array',
    ];

    /**
     * Get the user that owns the activity.
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the transaction associated with the activity.
     */
    public function transaction(): BelongsTo
    {
        return $this->belongsTo(Transaction::class);
    }

    /**
     * Scope a query to filter by action.
     */
    public function scopeByAction($query, $action)
    {
        return $query->where('action', $action);
    }

    /**
     * Scope a query to filter by user.
     */
    public function scopeByUser($query, $userId)
    {
        return $query->where('user_id', $userId);
    }

    /**
     * Scope a query to only include today's activities.
     */
    public function scopeToday($query)
    {
        return $query->whereDate('created_at', today());
    }

    /**
     * Get the action icon.
     */
    public function getActionIconAttribute(): string
    {
        return match ($this->action) {
            'login' => '<i class="fas fa-sign-in-alt text-blue-500"></i>',
            'logout' => '<i class="fas fa-sign-out-alt text-gray-500"></i>',
            'create' => '<i class="fas fa-plus text-green-500"></i>',
            'update' => '<i class="fas fa-edit text-yellow-500"></i>',
            'delete' => '<i class="fas fa-trash text-red-500"></i>',
            'approve' => '<i class="fas fa-check text-green-500"></i>',
            'reject' => '<i class="fas fa-times text-red-500"></i>',
            default => '<i class="fas fa-info-circle text-gray-500"></i>',
        };
    }

    /**
     * Get the action label.
     */
    public function getActionLabelAttribute(): string
    {
        return match ($this->action) {
            'login' => 'Login',
            'logout' => 'Logout',
            'create' => 'Membuat',
            'update' => 'Mengubah',
            'delete' => 'Menghapus',
            'approve' => 'Menyetujui',
            'reject' => 'Menolak',
            default => 'Aktivitas',
        };
    }

    /**
     * Log an activity.
     */
    public static function log($action, $message, $properties = null)
    {
        return self::create([
            'user_id' => auth()->id(),
            'action' => $action,
            'message' => $message,
            'properties' => $properties,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);
    }

    /**
     * Log an activity for a model.
     */
    public static function logModel($action, $model, $message)
    {
        return self::create([
            'user_id' => auth()->id(),
            'action' => $action,
            'model_type' => get_class($model),
            'model_id' => $model->id,
            'message' => $message,
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);
    }
}