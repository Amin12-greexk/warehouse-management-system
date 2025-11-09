<?php

namespace App\Livewire\Admin\Users;

use Livewire\Component;
use App\Models\User;
// HAPUS: use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;
use Livewire\WithFileUploads;
use Illuminate\Validation\Rule;

class Edit extends Component
{
    use WithFileUploads;

    public User $user; // Route model binding

    public $name;
    public $username;
    public $email;
    public $password;
    public $password_confirmation;
    public $role;
    public $new_photo;
    public $existing_photo;
    public $phone;
    public $address;
    public $position;
    public $status;

    public $roles;

    public function mount(User $user)
    {
        $this->user = $user;
        // GANTI INI:
        // $this->roles = Role::pluck('name', 'name')->all();
        // DENGAN INI:
        $this->roles = [
            'admin' => 'Admin',
            'manager' => 'Manager',
            'karyawan' => 'Karyawan',
        ];

        $this->name = $user->name;
        $this->username = $user->username;
        $this->email = $user->email;
        // GANTI INI:
        // $this->role = $user->roles->first()->name ?? 'karyawan';
        // DENGAN INI:
        $this->role = $user->role;
        $this->existing_photo = $user->photo;
        $this->phone = $user->phone;
        $this->address = $user->address;
        $this->position = $user->position;
        $this->status = $user->status;
    }

    protected function rules()
    {
        return [
            'name' => 'required|string|max:255',
            'username' => ['required', 'string', 'max:100', Rule::unique('users')->ignore($this->user->id)],
            'email' => ['required', 'email', 'max:255', Rule::unique('users')->ignore($this->user->id)],
            'password' => 'nullable|string|min:8|confirmed', // Password is optional on edit
            // GANTI INI:
            // 'role' => 'required|string|exists:roles,name',
            // DENGAN INI:
            'role' => 'required|string|in:admin,manager,karyawan',
            'new_photo' => 'nullable|image|max:2048', // 2MB Max
            'phone' => 'nullable|string|max:20',
            'address' => 'nullable|string',
            'position' => 'nullable|string|max:100',
            'status' => 'required|in:active,inactive,suspended',
        ];
    }

    public function updateUser()
    {
        $this->validate();

        $photoPath = $this->existing_photo;

        if ($this->new_photo) {
            $photoPath = $this->new_photo->store('users', 'public');
            // Hapus foto lama jika perlu (tambahkan logic Storage::delete() di sini)
        }

        $data = [
            'name' => $this->name,
            'username' => $this->username,
            'email' => $this->email,
            'role' => $this->role, // <-- TAMBAHKAN ROLE SECARA MANUAL
            'photo' => $photoPath,
            'phone' => $this->phone,
            'address' => $this->address,
            'position' => $this->position,
            'status' => $this->status,
        ];

        // Hanya update password jika diisi
        if (!empty($this->password)) {
            $data['password'] = Hash::make($this->password);
        }

        $this->user->update($data);

        // HAPUS INI:
        // $this->user->syncRoles([$this->role]);

        session()->flash('message', 'User berhasil diperbarui.');
        return $this->redirectRoute('admin.users.index');
    }

    public function render()
    {
        return view('livewire.admin.users.edit')
            ->layout('layouts.app');
    }
}