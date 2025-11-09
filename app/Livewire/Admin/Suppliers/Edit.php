<?php

namespace App\Livewire\Admin\Suppliers;

use Livewire\Component;
use App\Models\Supplier;
use Illuminate\Validation\Rule;

class Edit extends Component
{
    public Supplier $supplier;

    public $name;
    public $contact_person;
    public $email;
    public $phone;
    public $address;
    public $status;

    public function mount(Supplier $supplier)
    {
        $this->supplier = $supplier;
        $this->name = $supplier->name;
        $this->contact_person = $supplier->contact_person;
        $this->email = $supplier->email;
        $this->phone = $supplier->phone;
        $this->address = $supplier->address;
        $this->status = $supplier->status;
    }

    protected function rules()
    {
        return [
            'name' => 'required|string|max:100',
            'contact_person' => 'required|string|max:100',
            'email' => ['required', 'email', 'max:100', Rule::unique('suppliers')->ignore($this->supplier->id)],
            'phone' => 'required|string|max:20',
            'address' => 'required|string',
            'status' => 'required|in:active,inactive',
        ];
    }

    public function updateSupplier()
    {
        $this->validate();

        $this->supplier->update([
            'name' => $this->name,
            'contact_person' => $this->contact_person,
            'email' => $this->email,
            'phone' => $this->phone,
            'address' => $this->address,
            'status' => $this->status,
        ]);

        session()->flash('message', 'Supplier berhasil diperbarui.');
        return $this->redirectRoute('admin.suppliers.index');
    }

    public function render()
    {
        return view('livewire.admin.suppliers.edit')
            ->layout('layouts.app');
    }
}