<?php

namespace App\Livewire\Admin\Users;

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

    protected $queryString = ['search', 'roleFilter', 'statusFilter'];

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function updatingRoleFilter()
    {
        $this->resetPage();
    }

    public function updatingStatusFilter()
    {
        $this->resetPage();
    }

    public function updatingPerPage()
    {
        $this->resetPage();
    }

    public function deleteUser($userId)
    {
        $user = User::findOrFail($userId);

        if ($user->id == auth()->id()) {
            session()->flash('error', 'Anda tidak dapat menghapus akun Anda sendiri.');
            return;
        }

        $user->delete();
        session()->flash('message', 'User berhasil dihapus.');
    }

    public function toggleStatus($userId)
    {
        $user = User::findOrFail($userId);

        if ($user->id == auth()->id()) {
            session()->flash('error', 'Anda tidak dapat mengubah status akun Anda sendiri.');
            return;
        }

        $user->status = $user->status == 'active' ? 'inactive' : 'active';
        $user->save();

        session()->flash('message', 'Status user berhasil diubah.');
    }

    public function render()
    {
        $users = User::with('employeeProfile')
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

        return view('livewire.admin.users.index', [
            'users' => $users
        ])->layout('layouts.app');
    }
}