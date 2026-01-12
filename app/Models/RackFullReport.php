<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Facades\Storage;

class RackFullReport extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'rack_id',
        'user_id',
        'status',
        'notes',
        'photo',
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
        'approved_at' => 'datetime',
    ];

    public function rack(): BelongsTo
    {
        return $this->belongsTo(Rack::class);
    }

    public function reporter(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function approver(): BelongsTo
    {
        return $this->belongsTo(User::class, 'approved_by');
    }

    public function getPhotoUrlAttribute(): ?string
    {
        if (! $this->photo) {
            return null;
        }

        return Storage::url($this->photo);
    }

    public function getStatusBadgeAttribute(): string
    {
        return match ($this->status) {
            'pending' => '<span class="px-2 py-1 text-xs bg-yellow-100 text-yellow-800 rounded-full">Menunggu</span>',
            'approved' => '<span class="px-2 py-1 text-xs bg-green-100 text-green-800 rounded-full">Disetujui</span>',
            'rejected' => '<span class="px-2 py-1 text-xs bg-red-100 text-red-800 rounded-full">Ditolak</span>',
            default => '<span class="px-2 py-1 text-xs bg-gray-100 text-gray-800 rounded-full">Unknown</span>',
        };
    }
}
