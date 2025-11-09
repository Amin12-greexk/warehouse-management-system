<?php

namespace App\Livewire\Admin\Racks;

use Livewire\Component;
use App\Models\Rack;

class Create extends Component
{
    public $rack_code;
    public $name;
    public $location;
    public $status = 'available';

    public function mount()
    {
        $this->generateRackCode();
    }

    public function generateRackCode()
    {
        $lastRack = Rack::latest()->first();
        $lastNumber = $lastRack ? intval(substr($lastRack->rack_code, 1)) : 0;
        $this->rack_code = 'R' . str_pad($lastNumber + 1, 3, '0', STR_PAD_LEFT);
    }

    protected $rules = [
        'rack_code' => 'required|string|max:20|unique:racks,rack_code',
        'name' => 'required|string|max:100',
        'location' => 'nullable|string|max:100',
        'status' => 'required|in:available,full,maintenance',
    ];

    public function saveRack()
    {
        $this->validate();

        Rack::create([
            'rack_code' => $this->rack_code,
            'name' => $this->name,
            'location' => $this->location,
            'status' => $this->status,
        ]);

        session()->flash('message', 'Rak berhasil ditambahkan.');
        return $this->redirectRoute('admin.racks.index');
    }

    public function render()
    {
        return view('livewire.admin.racks.create')
            ->layout('layouts.app');
    }
}