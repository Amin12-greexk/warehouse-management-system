<?php

namespace App\Livewire\Employee\Transactions;

use Livewire\Component;
use Livewire\WithFileUploads;
use App\Models\Transaction;
use App\Models\Item;
use App\Models\Rack;
use App\Models\Supplier;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Create extends Component
{
    use WithFileUploads;

    public $type = 'in'; // in or out
    public $item_id;
    public $quantity;
    public $rack_id;
    public $supplier_id;
    public $photo;
    public $capturedPhoto;
    public $notes;

    protected function rules()
    {
        return [
            'type' => 'required|in:in,out',
            'item_id' => 'required|exists:items,id',
            'quantity' => 'required|integer|min:1',
            'rack_id' => 'required|exists:racks,id',
            'supplier_id' => 'nullable|exists:suppliers,id',
            'photo' => 'nullable|image|max:2048',
            'capturedPhoto' => 'nullable',
            'notes' => 'nullable|string|max:500',
        ];
    }

    public function updatedType()
    {
        // Reset form when type changes
        $this->reset(['item_id', 'quantity', 'rack_id', 'supplier_id', 'notes']);
    }

    public function save()
    {
        $this->validate();

        $rack = Rack::find($this->rack_id);
        if (! $rack) {
            $this->addError('rack_id', 'Rak tidak ditemukan.');
            return;
        }

        if ($this->type === 'in') {
            if ($rack->status === 'maintenance') {
                $this->addError('rack_id', 'Rak sedang maintenance dan tidak bisa dipakai.');
                return;
            }

            if ($rack->manual_full || $rack->status === 'full' || $rack->available_capacity <= 0) {
                $this->addError('rack_id', 'Rak sudah penuh. Pilih rak lain.');
                return;
            }

            if ($rack->available_capacity < $this->quantity) {
                $this->addError('rack_id', 'Kapasitas rak tidak cukup untuk jumlah ini.');
                return;
            }
        }

        try {
            DB::beginTransaction();

            // Generate transaction code
            $lastTransaction = Transaction::latest()->first();
            $lastNumber = $lastTransaction ? intval(substr($lastTransaction->transaction_code, 3)) : 0;
            $transactionCode = 'TRX' . str_pad($lastNumber + 1, 7, '0', STR_PAD_LEFT);

            // Handle photo upload or captured photo
            $photoPath = null;
            if ($this->photo) {
                $photoPath = $this->photo->store('transactions', 'public');
            } elseif ($this->capturedPhoto) {
                // Decode base64 image
                $image = str_replace('data:image/png;base64,', '', $this->capturedPhoto);
                $image = str_replace(' ', '+', $image);
                $imageName = 'transactions/' . uniqid() . '.png';
                \Storage::disk('public')->put($imageName, base64_decode($image));
                $photoPath = $imageName;
            }

            // Create transaction
            Transaction::create([
                'transaction_code' => $transactionCode,
                'user_id' => Auth::id(),
                'item_id' => $this->item_id,
                'type' => $this->type,
                'quantity' => $this->quantity,
                'rack_id' => $this->rack_id,
                'photo' => $photoPath,
                'notes' => $this->notes,
                'status' => 'pending', // Perlu approval
            ]);

            DB::commit();

            session()->flash('message', 'Transaksi berhasil dibuat dan menunggu persetujuan.');

            return redirect()->route('employee.dashboard');

        } catch (\Exception $e) {
            DB::rollBack();
            session()->flash('error', 'Gagal membuat transaksi: ' . $e->getMessage());
        }
    }

    public function render()
    {
        $items = Item::where('status', 'active')->orderBy('name')->get();
        $racks = Rack::where('status', '!=', 'maintenance')->orderBy('name')->get();
        $suppliers = Supplier::where('status', 'active')->orderBy('name')->get();
        $selectedRack = null;

        if ($this->rack_id) {
            $selectedRack = $racks->firstWhere('id', (int) $this->rack_id) ?? Rack::find($this->rack_id);
        }

        return view('livewire.employee.transactions.create', [
            'items' => $items,
            'racks' => $racks,
            'suppliers' => $suppliers,
            'selectedRack' => $selectedRack,
        ])->layout('layouts.app');
    }
}
