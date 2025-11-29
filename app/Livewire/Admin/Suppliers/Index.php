<?php

namespace App\Livewire\Admin\Suppliers;

use Livewire\Component;
use App\Models\Supplier;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;

    public $search = '';
    public $statusFilter = '';
    public $perPage = 10;

    public function updatedSearch()
    {
        $this->resetPage('page');
    }

    public function updatedStatusFilter()
    {
        $this->resetPage('page');
    }

    public function updatedPerPage()
    {
        $this->resetPage();
    }

    public function deleteSupplier($supplierId)
    {
        $supplier = Supplier::findOrFail($supplierId);

        // Cek relasi (jika supplier punya item, jangan hapus)
        if ($supplier->items()->count() > 0) {
            session()->flash('error', 'Supplier tidak dapat dihapus karena memiliki relasi dengan barang.');
            return;
        }

        $supplier->delete();
        session()->flash('message', 'Supplier berhasil dihapus.');
    }

    public function render()
    {
        $suppliers = Supplier::query()
            ->when($this->search, function ($query) {
                $query->where('name', 'like', '%' . $this->search . '%')
                    ->orWhere('contact_person', 'like', '%' . $this->search . '%')
                    ->orWhere('email', 'like', '%' . $this->search . '%');
            })
            ->when($this->statusFilter, function ($query) {
                $query->where('status', $this->statusFilter);
            })
            ->latest()
            ->paginate($this->perPage);

        return view('livewire.admin.suppliers.index', [
            'suppliers' => $suppliers
        ])->layout('layouts.app');
    }
}