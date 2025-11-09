<?php

namespace App\Livewire\Admin\Suppliers;

use Livewire\Component;
use App\Models\Supplier;

class Create extends Component
{
    public $name;
    public $contact_person;
    public $email;
    public $phone;
    public $address;
    public $status = 'active';

    protected $rules = [
        'name' => 'required|string|max:100',
        'contact_person' => 'required|string|max:100',
        'email' => 'required|email|max:100|unique:suppliers,email',
        'phone' => 'required|string|max:20',
        'address' => 'required|string',
        'status' => 'required|in:active,inactive',
    ];

    public function saveSupplier()
    {
        $this->validate();

        Supplier::create([
            'name' => $this->name,
            'contact_person' => $this->contact_person,
            'email' => $this->email,
            'phone' => $this->phone,
            'address' => $this->address,
            'status' => $this->status,
        ]);

        session()->flash('message', 'Supplier berhasil ditambahkan.');
        return $this->redirectRoute('admin.suppliers.index');
    }

    public function render()
    {
        return view('livewire.admin.suppliers.create')
            ->layout('layouts.app');
    }
}