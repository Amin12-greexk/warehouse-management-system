<?php
// app/Livewire/Auth/Login.php

namespace App\Livewire\Auth;

use App\Models\Activity;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Auth;
use Livewire\Attributes\Layout;
use Livewire\Attributes\Rule;
use Livewire\Component;

#[Layout('layouts.guest')]
class Login extends Component
{
    #[Rule('required|string')]
    public string $username = '';

    #[Rule('required|string')]
    public string $password = '';

    public bool $remember = false;

    public function login()
    {
        $this->validate();

        if (
            !Auth::attempt([
                'username' => $this->username,
                'password' => $this->password,
                'status' => 'active'
            ], $this->remember)
        ) {
            $this->addError('username', __('auth.failed'));
            return;
        }

        // Log activity
        Activity::create([
            'user_id' => Auth::id(),
            'action' => 'login',
            'message' => 'User logged in',
            'ip_address' => request()->ip(),
            'user_agent' => request()->userAgent(),
        ]);

        session()->regenerate();

        // Redirect based on role
        $user = Auth::user();
        $redirectTo = match ($user->role) {
            'admin' => '/admin/dashboard',
            'manager' => '/manager/dashboard',
            'karyawan' => '/employee/dashboard',
            default => RouteServiceProvider::HOME,
        };

        $this->redirect($redirectTo);
    }

    public function render()
    {
        return view('livewire.auth.login');
    }
}