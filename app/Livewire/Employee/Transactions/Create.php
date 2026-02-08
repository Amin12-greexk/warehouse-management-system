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
    public $barcode;
    public $item_id;
    public $quantity;
    public $rack_id;
    public $supplier_id;
    public $photo;
    public $capturedPhoto;
    public $notes;

    // For displaying scanned item info
    public $scannedItemName;
    public $scannedItemCode;
    public $scannedItemStock;
    public $scanSuccess = false;

    protected function rules()
    {
        return [
            'type' => 'required|in:in,out',
            'barcode' => 'nullable|string|max:64',
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
        // DON'T reset form when type changes - preserve filled data
        // Only reset rack_id if switching types (because destination/source rack may differ)
        // Keep item_id, barcode, quantity, supplier_id, notes intact

        // If item is selected, auto-set rack based on new type
        if ($this->item_id) {
            $item = Item::find($this->item_id);
            if ($item) {
                if ($this->type === 'out' && $item->rack_id) {
                    $this->rack_id = $item->rack_id;
                } elseif ($this->type === 'in') {
                    // For incoming, clear rack so user selects destination
                    $this->rack_id = null;
                }
            }
        }
    }

    public function applyBarcode($barcodeValue = null)
    {
        $rawBarcode = trim((string) ($barcodeValue ?? $this->barcode));
        $barcode = preg_replace('/\s+/', '', $rawBarcode);
        if ($barcode === '') {
            return;
        }

        $this->barcode = $barcode;

        $item = Item::with(['supplier', 'rack'])
            ->where('barcode', $rawBarcode)
            ->orWhere('barcode', $barcode)
            ->orWhere('item_code', $rawBarcode)
            ->orWhere('item_code', $barcode)
            ->first();

        if (!$item) {
            $this->addError('barcode', 'Barcode tidak ditemukan.');
            $this->scanSuccess = false;
            $this->dispatch('scan-error', message: 'Barcode tidak ditemukan');
            return;
        }

        $this->resetErrorBag('barcode');
        $this->item_id = $item->id;

        // Store scanned item info for display
        $this->scannedItemName = $item->name;
        $this->scannedItemCode = $item->item_code;
        $this->scannedItemStock = $item->stock . ' ' . $item->unit;
        $this->scanSuccess = true;

        // Auto-fill supplier for incoming transactions
        if ($item->supplier_id) {
            $this->supplier_id = $item->supplier_id;
        }

        // Auto-fill rack based on transaction type
        if ($this->type === 'out' && $item->rack_id) {
            // For outgoing: use item's current rack as source
            $this->rack_id = $item->rack_id;
        } elseif ($this->type === 'in' && $item->rack_id) {
            // For incoming: suggest same rack if available, otherwise leave empty
            $rack = Rack::find($item->rack_id);
            if ($rack && !$rack->manual_full && $rack->status !== 'full' && $rack->available_capacity > 0) {
                $this->rack_id = $item->rack_id;
            }
        }

        // Set default quantity to 1
        if (!$this->quantity) {
            $this->quantity = 1;
        }

        // Dispatch success event for UI feedback
        $this->dispatch('scan-success', message: 'Barang ditemukan: ' . $item->name);
    }

    // Method to receive barcode from camera scanner
    public function scanBarcode($barcode)
    {
        $this->applyBarcode($barcode);
    }

    public function save()
    {
        $this->validate();

        $rack = Rack::find($this->rack_id);
        if (!$rack) {
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
