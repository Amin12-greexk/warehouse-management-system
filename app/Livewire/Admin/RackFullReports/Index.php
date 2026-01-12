<?php

namespace App\Livewire\Admin\RackFullReports;

use Livewire\Component;
use Livewire\WithFileUploads;
use Livewire\WithPagination;
use App\Models\Rack;
use App\Models\RackFullReport;

class Index extends Component
{
    use WithFileUploads, WithPagination;

    public $search = '';
    public $statusFilter = '';
    public $perPage = 10;

    public $manualRackId;
    public $manualNotes;
    public $manualPhoto;

    public $showRejectModal = false;
    public $rejectReason = '';
    public $rejectingReportId;

    public function updatedSearch()
    {
        $this->resetPage();
    }

    public function updatedStatusFilter()
    {
        $this->resetPage();
    }

    public function updatedPerPage()
    {
        $this->resetPage();
    }

    public function submitManualFull()
    {
        $this->validate([
            'manualRackId' => 'required|exists:racks,id',
            'manualNotes' => 'nullable|string|max:500',
            'manualPhoto' => 'nullable|image|max:2048',
        ]);

        $rack = Rack::find($this->manualRackId);
        if (! $rack) {
            $this->addError('manualRackId', 'Rak tidak ditemukan.');
            return;
        }

        if ($rack->status === 'maintenance') {
            $this->addError('manualRackId', 'Rak sedang maintenance.');
            return;
        }

        if ($rack->manual_full || $rack->status === 'full') {
            $this->addError('manualRackId', 'Rak sudah ditandai penuh.');
            return;
        }

        $pendingExists = RackFullReport::where('rack_id', $rack->id)
            ->where('status', 'pending')
            ->exists();

        if ($pendingExists) {
            $this->addError('manualRackId', 'Ada laporan pending untuk rak ini. Silakan approve dari daftar.');
            return;
        }

        $photoPath = $this->manualPhoto
            ? $this->manualPhoto->store('rack-full-reports', 'public')
            : null;

        RackFullReport::create([
            'rack_id' => $rack->id,
            'user_id' => auth()->id(),
            'status' => 'approved',
            'notes' => $this->manualNotes,
            'photo' => $photoPath,
            'approved_by' => auth()->id(),
            'approved_at' => now(),
        ]);

        $this->markRackFull($rack);

        $this->reset(['manualRackId', 'manualNotes', 'manualPhoto']);

        session()->flash('message', 'Rak berhasil ditandai penuh.');
    }

    public function approveReport($reportId)
    {
        $report = RackFullReport::with('rack')->findOrFail($reportId);

        if ($report->status !== 'pending') {
            session()->flash('error', 'Laporan ini sudah diproses.');
            return;
        }

        if (! $report->rack) {
            session()->flash('error', 'Rak laporan tidak ditemukan.');
            return;
        }

        $report->update([
            'status' => 'approved',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
            'rejection_reason' => null,
        ]);

        $this->markRackFull($report->rack);

        session()->flash('message', 'Laporan rak penuh disetujui.');
    }

    public function openRejectModal($reportId)
    {
        $this->rejectingReportId = $reportId;
        $this->rejectReason = '';
        $this->showRejectModal = true;
    }

    public function closeRejectModal()
    {
        $this->showRejectModal = false;
        $this->rejectReason = '';
        $this->rejectingReportId = null;
    }

    public function rejectReport()
    {
        $this->validate([
            'rejectReason' => 'required|min:5|max:500',
        ], [
            'rejectReason.required' => 'Alasan penolakan harus diisi.',
            'rejectReason.min' => 'Alasan penolakan minimal 5 karakter.',
            'rejectReason.max' => 'Alasan penolakan maksimal 500 karakter.',
        ]);

        $report = RackFullReport::findOrFail($this->rejectingReportId);

        if ($report->status !== 'pending') {
            session()->flash('error', 'Laporan ini sudah diproses.');
            $this->closeRejectModal();
            return;
        }

        $report->update([
            'status' => 'rejected',
            'approved_by' => auth()->id(),
            'approved_at' => now(),
            'rejection_reason' => $this->rejectReason,
        ]);

        $this->closeRejectModal();

        session()->flash('message', 'Laporan rak penuh ditolak.');
    }

    private function markRackFull(Rack $rack): void
    {
        $rack->manual_full = true;
        $rack->status = 'full';
        $rack->save();
    }

    public function render()
    {
        $reports = RackFullReport::with(['rack', 'reporter', 'approver'])
            ->when($this->search, function ($query) {
                $query->where(function ($q) {
                    $q->whereHas('rack', function ($rackQuery) {
                        $rackQuery->where('name', 'like', '%' . $this->search . '%')
                            ->orWhere('code', 'like', '%' . $this->search . '%');
                    })->orWhereHas('reporter', function ($userQuery) {
                        $userQuery->where('name', 'like', '%' . $this->search . '%');
                    })->orWhere('notes', 'like', '%' . $this->search . '%');
                });
            })
            ->when($this->statusFilter, function ($query) {
                $query->where('status', $this->statusFilter);
            })
            ->latest()
            ->paginate($this->perPage);

        $racks = Rack::where('status', '!=', 'maintenance')->orderBy('name')->get();

        return view('livewire.admin.rack-full-reports.index', [
            'reports' => $reports,
            'racks' => $racks,
        ])->layout('layouts.app');
    }
}
