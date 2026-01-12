<?php

namespace App\Livewire\Employee\RackFullReports;

use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Models\Rack;
use App\Models\RackFullReport;

class Index extends Component
{
    use WithFileUploads, WithPagination;

    public $rack_id;
    public $notes;
    public $photo;
    public $perPage = 10;

    protected $rules = [
        'rack_id' => 'required|exists:racks,id',
        'notes' => 'nullable|string|max:500',
        'photo' => 'nullable|image|max:2048',
    ];

    public function updatedPerPage()
    {
        $this->resetPage();
    }

    public function submitReport()
    {
        $this->validate();

        $rack = Rack::find($this->rack_id);
        if (! $rack) {
            $this->addError('rack_id', 'Rak tidak ditemukan.');
            return;
        }

        if ($rack->status === 'maintenance') {
            $this->addError('rack_id', 'Rak sedang maintenance.');
            return;
        }

        if ($rack->manual_full || $rack->status === 'full') {
            $this->addError('rack_id', 'Rak sudah ditandai penuh.');
            return;
        }

        $pendingExists = RackFullReport::where('rack_id', $rack->id)
            ->where('status', 'pending')
            ->exists();

        if ($pendingExists) {
            $this->addError('rack_id', 'Sudah ada laporan pending untuk rak ini.');
            return;
        }

        $photoPath = $this->photo
            ? $this->photo->store('rack-full-reports', 'public')
            : null;

        RackFullReport::create([
            'rack_id' => $rack->id,
            'user_id' => auth()->id(),
            'status' => 'pending',
            'notes' => $this->notes,
            'photo' => $photoPath,
        ]);

        $this->reset(['rack_id', 'notes', 'photo']);

        session()->flash('message', 'Laporan berhasil dikirim dan menunggu persetujuan admin.');
    }

    public function render()
    {
        $racks = Rack::where('status', '!=', 'maintenance')->orderBy('name')->get();
        $reports = RackFullReport::with(['rack', 'approver'])
            ->where('user_id', auth()->id())
            ->latest()
            ->paginate($this->perPage);
        $selectedRack = null;

        if ($this->rack_id) {
            $selectedRack = $racks->firstWhere('id', (int) $this->rack_id) ?? Rack::find($this->rack_id);
        }

        return view('livewire.employee.rack-full-reports.index', [
            'racks' => $racks,
            'reports' => $reports,
            'selectedRack' => $selectedRack,
        ])->layout('layouts.app');
    }
}
