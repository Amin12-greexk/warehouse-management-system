<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
// HAPUS SEMUA IMPORT 'Spatie'

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable; // <-- HAPUS 'HasRoles' DARI SINI

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'username',
        'email',
        'password',
        'role', // <-- Pastikan ini ada
        'photo',
        'phone',
        'address',
        'position',
        'status',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    /**
     * Get the employee profile for the user.
     */
    public function employeeProfile(): HasOne
    {
        return $this->hasOne(EmployeeProfile::class);
    }

    /**
     * Get the transactions for the user.
     */
    public function transactions(): HasMany
    {
        return $this->hasMany(Transaction::class);
    }

    /**
     * Get the activities for the user.
     */
    public function activities(): HasMany
    {
        return $this->hasMany(Activity::class);
    }

    /**
     * Get the notifications for the user.
     */
    public function notifications(): HasMany
    {
        return $this->morphMany(Notification::class, 'notifiable');
    }

    /**
     * Get the approved transactions.
     */
    public function approvedTransactions(): HasMany
    {
        return $this->hasMany(Transaction::class, 'approved_by');
    }

    /**
     * Scope a query to only include active users.
     */
    public function scopeActive($query)
    {
        return $query->where('status', 'active');
    }

    /**
     * Scope a query to only include users of a given role.
     */
    public function scopeRole($query, $role)
    {
        // Ganti ke logika manual
        return $query->where('role', $role);
    }

    /**
     * Get the user's photo URL.
     */
    public function getPhotoUrlAttribute()
    {
        return $this->photo
            ? asset('storage/' . $this->photo)
            : 'https://placehold.co/100x100/e2e8f0/718096?text=No+Image';
    }

    /**
     * Check if user is admin.
     */
    public function isAdmin(): bool
    {
        // Ganti ke logika manual
        return $this->role === 'admin';
    }

    /**
     * Check if user is manager.
     */
    public function isManager(): bool
    {
        // Ganti ke logika manual
        return $this->role === 'manager';
    }

    /**
     * Check if user is employee.
     */
    public function isEmployee(): bool
    {
        // Ganti ke logika manual
        return $this->role === 'karyawan';
    }

    /**
     * Check if user can approve transactions.
     */
    public function canApproveTransactions(): bool
    {
        // Ganti ke logika manual
        return in_array($this->role, ['admin', 'manager']);
    }
}