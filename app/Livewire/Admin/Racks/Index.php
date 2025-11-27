<?php

namespace App\Livewire\Admin\Racks;

use Livewire\Component;
use App\Models\Rack;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;

    public $search = '';
    public $statusFilter = '';
    public $perPage = 10;

    protected $queryString = ['search', 'statusFilter'];

    public function updatingSearch()
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

    public function deleteRack($rackId)
    {
        $rack = Rack::findOrFail($rackId);

        // Cek relasi (jika rak punya item, jangan hapus)
        if ($rack->items()->count() > 0) {
            session()->flash('error', 'Rak tidak dapat dihapus karena ada barang di dalamnya.');
            return;
        }

        $rack->delete();
        session()->flash('message', 'Rak berhasil dihapus.');
    }

    public function render()
    {
        $racks = Rack::query()
            ->when($this->search, function ($query) {
                $query->where('name', 'like', '%' . $this->search . '%')
                    ->orWhere('rack_code', 'like', '%' . $this->search . '%');
            })
            ->when($this->statusFilter, function ($query) {
                $query->where('status', $this->statusFilter);
            })
            ->latest()
            ->paginate($this->perPage);

        return view('livewire.admin.racks.index', [
            'racks' => $racks
        ])->layout('layouts.app');
    }
}