<?php

namespace App\Livewire\Manager\Users;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\User;

class Index extends Component
{
    use WithPagination;

    public $search = '';
    public $roleFilter = '';
    public $statusFilter = '';
    public $perPage = 10;

    public function updatedSearch()
    {
        $this->resetPage('page');
    }

    public function updatedRoleFilter()
    {
        $this->resetPage('page');
    }

    public function updatedStatusFilter()
    {
        $this->resetPage('page');
    }

    public function toggleStatus($userId)
    {
        $user = User::findOrFail($userId);

        // Tidak bisa mengubah status admin
        if ($user->role == 'admin') {
            session()->flash('error', 'Tidak dapat mengubah status admin.');
            return;
        }

        if ($user->id == auth()->id()) {
            session()->flash('error', 'Anda tidak dapat mengubah status akun Anda sendiri.');
            return;
        }

        $user->status = $user->status == 'active' ? 'inactive' : 'active';
        $user->save();

        session()->flash('message', 'Status user berhasil diubah.');
    }

    public function updateRole($userId, $newRole)
    {
        $user = User::findOrFail($userId);

        // Tidak bisa mengubah role admin
        if ($user->role == 'admin' || $newRole == 'admin') {
            session()->flash('error', 'Tidak dapat mengubah role admin.');
            return;
        }

        if ($user->id == auth()->id()) {
            session()->flash('error', 'Anda tidak dapat mengubah role akun Anda sendiri.');
            return;
        }

        // Hanya bisa mengubah antara manager dan karyawan
        if (!in_array($newRole, ['manager', 'karyawan'])) {
            session()->flash('error', 'Role tidak valid.');
            return;
        }

        $user->role = $newRole;
        $user->save();

        session()->flash('message', "Role user berhasil diubah menjadi {$newRole}.");
    }

    public function render()
    {
        $users = User::with('employeeProfile')
            ->where('role', '!=', 'admin') // Manager tidak bisa lihat admin
            ->when($this->search, function ($query) {
                $query->where(function ($q) {
                    $q->where('name', 'like', '%' . $this->search . '%')
                        ->orWhere('username', 'like', '%' . $this->search . '%')
                        ->orWhere('email', 'like', '%' . $this->search . '%');
                });
            })
            ->when($this->roleFilter, function ($query) {
                $query->where('role', $this->roleFilter);
            })
            ->when($this->statusFilter, function ($query) {
                $query->where('status', $this->statusFilter);
            })
            ->latest()
            ->paginate($this->perPage);

        return view('livewire.manager.users.index', [
            'users' => $users
        ])->layout('layouts.app');
    }
}
