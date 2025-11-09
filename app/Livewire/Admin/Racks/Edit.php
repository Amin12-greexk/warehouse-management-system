<?php

namespace App\Livewire\Admin\Racks;

use Livewire\Component;
use App\Models\Rack;
use Illuminate\Validation\Rule;

class Edit extends Component
{
    public Rack $rack;

    public $rack_code;
    public $name;
    public $location;
    public $status;

    public function mount(Rack $rack)
    {
        $this->rack = $rack;
        $this->rack_code = $rack->rack_code;
        $this->name = $rack->name;
        $this->location = $rack->location;
        $this->status = $rack->status;
    }

    protected function rules()
    {
        return [
            'rack_code' => ['required', 'string', 'max:20', Rule::unique('racks')->ignore($this->rack->id)],
            'name' => 'required|string|max:100',
            'location' => 'nullable|string|max:100',
            'status' => 'required|in:available,full,maintenance',
        ];
    }

    public function updateRack()
    {
        $this->validate();

        $this->rack->update([
            'rack_code' => $this->rack_code,
            'name' => $this->name,
            'location' => $this->location,
            'status' => $this->status,
        ]);

        session()->flash('message', 'Rak berhasil diperbarui.');
        return $this->redirectRoute('admin.racks.index');
    }

    public function render()
    {
        return view('livewire.admin.racks.edit')
            ->layout('layouts.app');
    }
}