<?php

namespace App\Livewire\Admin\Users;

use Livewire\Component;
use App\Models\User;
// HAPUS: use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use Livewire\WithFileUploads;

class Create extends Component
{
    use WithFileUploads;

    public $name;
    public $username;
    public $email;
    public $password;
    public $password_confirmation;
    public $role;
    public $photo;
    public $phone;
    public $address;
    public $position;
    public $status = 'active';

    public $roles;

    public function mount()
    {
        // GANTI INI:
        // $this->roles = Role::pluck('name', 'name')->all();
        // DENGAN INI:
        $this->roles = [
            'admin' => 'Admin',
            'manager' => 'Manager',
            'karyawan' => 'Karyawan',
        ];
        $this->role = 'karyawan'; // Default role
    }

    protected function rules()
    {
        return [
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:100|unique:users,username',
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|string|min:8|confirmed',
            // GANTI INI:
            // 'role' => 'required|string|exists:roles,name',
            // DENGAN INI:
            'role' => 'required|string|in:admin,manager,karyawan',
            'photo' => 'nullable|image|max:2048', // 2MB Max
            'phone' => 'nullable|string|max:20',
            'address' => 'nullable|string',
            'position' => 'nullable|string|max:100',
            'status' => 'required|in:active,inactive,suspended',
        ];
    }

    public function saveUser()
    {
        $this->validate();

        $photoPath = $this->photo ? $this->photo->store('users', 'public') : null;

        $user = User::create([
            'name' => $this->name,
            'username' => $this->username,
            'email' => $this->email,
            'password' => Hash::make($this->password),
            'role' => $this->role, // <-- TAMBAHKAN ROLE SECARA MANUAL
            'photo' => $photoPath,
            'phone' => $this->phone,
            'address' => $this->address,
            'position' => $this->position,
            'status' => $this->status,
        ]);

        // HAPUS INI:
        // $user->assignRole($this->role);

        session()->flash('message', 'User berhasil ditambahkan.');
        return $this->redirectRoute('admin.users.index');
    }

    public function render()
    {
        return view('livewire.admin.users.create')
            ->layout('layouts.app');
    }
}