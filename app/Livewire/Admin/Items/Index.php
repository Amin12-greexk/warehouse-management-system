<?php

namespace App\Livewire\Admin\Items;

use Livewire\Component;
use Livewire\WithPagination;
use Livewire\WithFileUploads;
use App\Models\Item;
use App\Models\Supplier;
use App\Models\Rack;
use Illuminate\Validation\Rule;

class Index extends Component
{
    use WithPagination, WithFileUploads;

    protected $listeners = ['scan-barcode' => 'applyBarcodeFromEvent'];

    public $search = '';
    public $typeFilter = '';
    public $supplierFilter = '';
    public $stockFilter = '';
    public $perPage = 10;
    public $barcodeScan = '';

    public $editingItem = null;
    public $stockItemId = null;
    public $stockAdjust = 0;

    // Form fields
    public $item_code;
    public $barcode;
    public $name;
    public $type = 'raw_material';
    public $supplier_id;
    public $rack_id;
    public $stock = 0;
    public $minimum_stock = 0;
    public $unit = 'pcs';
    public $price = 0;
    public $description;
    public $image;

    protected function rules()
    {
        $itemId = $this->editingItem?->id;

        return [
            'item_code' => ['required', Rule::unique('items', 'item_code')->ignore($itemId)],
            'barcode' => ['nullable', 'string', 'max:64', Rule::unique('items', 'barcode')->ignore($itemId)],
            'name' => 'required|min:3',
            'type' => 'required|in:raw_material,finished_goods,spare_parts,consumable',
            'supplier_id' => 'required|exists:suppliers,id',
            'rack_id' => 'nullable|exists:racks,id',
            'stock' => 'required|numeric|min:0',
            'minimum_stock' => 'required|numeric|min:0',
            'unit' => 'required',
            'price' => 'required|numeric|min:0',
            'description' => 'nullable',
            'image' => 'nullable|image|max:2048'
        ];
    }

    public function mount()
    {
        $this->generateItemCode();
    }

    public function generateItemCode()
    {
        $lastItem = Item::latest()->first();
        $lastNumber = $lastItem ? intval(substr($lastItem->item_code, 3)) : 0;
        $this->item_code = 'ITM' . str_pad($lastNumber + 1, 5, '0', STR_PAD_LEFT);
    }

    public function updatedSearch()
    {
        $this->resetPage('page');
    }

    public function updatedTypeFilter()
    {
        $this->resetPage('page');
    }

    public function updatedSupplierFilter()
    {
        $this->resetPage('page');
    }

    public function updatedStockFilter()
    {
        $this->resetPage('page');
    }

    public function updatedPerPage()
    {
        $this->resetPage();
    }

    public function createItem()
    {
        $this->resetForm();
        $this->generateItemCode();
        $this->dispatch('open-modal', 'create-item-modal');
    }

    public function editItem($itemId)
    {
        $item = Item::findOrFail($itemId);
        $this->editingItem = $item;

        $this->item_code = $item->item_code;
        $this->barcode = $item->barcode;
        $this->name = $item->name;
        $this->type = $item->type;
        $this->supplier_id = $item->supplier_id;
        $this->rack_id = $item->rack_id;
        $this->stock = $item->stock;
        $this->minimum_stock = $item->minimum_stock;
        $this->unit = $item->unit;
        $this->price = $item->price;
        $this->description = $item->description;

        $this->dispatch('open-modal', 'edit-item-modal');
    }

    public function closeCreateModal()
    {
        $this->resetForm();
        $this->dispatch('close-modal', 'create-item-modal');
    }

    public function closeEditModal()
    {
        $this->resetForm();
        $this->dispatch('close-modal', 'edit-item-modal');
    }

    public function applyBarcodeFromEvent($payload = null)
    {
        $barcode = is_array($payload) ? ($payload['code'] ?? '') : (string) $payload;
        $this->applyBarcode($barcode);
    }

    public function applyBarcode($barcode = null)
    {
        $barcode = trim((string) ($barcode ?? $this->barcodeScan));
        if ($barcode === '') {
            return;
        }

        if ($this->editingItem) {
            $this->barcode = $barcode;
            $this->resetErrorBag('barcode');
            return;
        }

        $item = Item::where('barcode', $barcode)
            ->orWhere('item_code', $barcode)
            ->first();

        if (! $item) {
            $this->resetForm();
            $this->barcode = $barcode;
            $this->generateItemCode();
            $this->dispatch('open-modal', 'create-item-modal');
            return;
        }

        $this->stockItemId = $item->id;
        $this->stockAdjust = 0;
        $this->dispatch('open-modal', 'stock-item-modal');
    }

    public function saveStockAdjustment()
    {
        $this->validate([
            'stockItemId' => 'required|exists:items,id',
            'stockAdjust' => 'required|integer|min:1',
        ], [
            'stockAdjust.required' => 'Jumlah stok wajib diisi.',
            'stockAdjust.integer' => 'Jumlah stok harus angka.',
            'stockAdjust.min' => 'Jumlah stok minimal 1.',
        ]);

        $item = Item::findOrFail($this->stockItemId);
        $item->increment('stock', $this->stockAdjust);

        session()->flash('message', 'Stok berhasil ditambahkan.');

        $this->stockAdjust = 0;
        $this->barcodeScan = '';
        $this->stockItemId = null;
        $this->dispatch('close-modal', 'stock-item-modal');
    }

    public function closeStockModal()
    {
        $this->stockAdjust = 0;
        $this->stockItemId = null;
        $this->dispatch('close-modal', 'stock-item-modal');
    }

    public function getStockItemProperty()
    {
        return $this->stockItemId ? Item::find($this->stockItemId) : null;
    }

    public function save()
    {
        $this->validate();

        $data = [
            'item_code' => $this->item_code,
            'barcode' => $this->barcode,
            'name' => $this->name,
            'type' => $this->type,
            'supplier_id' => $this->supplier_id,
            'rack_id' => $this->rack_id,
            'stock' => $this->stock,
            'minimum_stock' => $this->minimum_stock,
            'unit' => $this->unit,
            'price' => $this->price,
            'description' => $this->description,
        ];

        if ($this->image) {
            $data['image'] = $this->image->store('items', 'public');
        }

        if ($this->editingItem) {
            $this->editingItem->update($data);
            session()->flash('message', 'Item berhasil diperbarui.');
        } else {
            Item::create($data);
            session()->flash('message', 'Item berhasil ditambahkan.');
        }

        $this->resetForm();
        $this->dispatch('close-modal', 'create-item-modal');
        $this->dispatch('close-modal', 'edit-item-modal');
    }

    public function deleteItem($itemId)
    {
        $item = Item::findOrFail($itemId);

        // Check if item has transactions
        if ($item->transactions()->count() > 0) {
            session()->flash('error', 'Item tidak dapat dihapus karena memiliki transaksi.');
            return;
        }

        $item->delete();
        session()->flash('message', 'Item berhasil dihapus.');
    }

    public function resetForm()
    {
        $this->reset([
            'item_code',
            'barcode',
            'name',
            'type',
            'supplier_id',
            'rack_id',
            'stock',
            'minimum_stock',
            'unit',
            'price',
            'description',
            'image'
        ]);

        $this->editingItem = null;
        $this->type = 'raw_material';
        $this->unit = 'pcs';
        $this->stock = 0;
        $this->minimum_stock = 0;
        $this->price = 0;
    }

    public function render()
    {
        $items = Item::with(['supplier', 'rack'])
            ->when($this->search, function ($query) {
                $query->where(function ($q) {
                    $q->where('name', 'like', '%' . $this->search . '%')
                        ->orWhere('item_code', 'like', '%' . $this->search . '%')
                        ->orWhere('barcode', 'like', '%' . $this->search . '%');
                });
            })
            ->when($this->typeFilter, function ($query) {
                $query->where('type', $this->typeFilter);
            })
            ->when($this->supplierFilter, function ($query) {
                $query->where('supplier_id', $this->supplierFilter);
            })
            ->when($this->stockFilter, function ($query) {
                switch ($this->stockFilter) {
                    case 'low':
                        $query->whereRaw('stock <= minimum_stock AND stock > 0');
                        break;
                    case 'out':
                        $query->where('stock', 0);
                        break;
                    case 'normal':
                        $query->whereRaw('stock > minimum_stock');
                        break;
                }
            })
            ->latest()
            ->paginate($this->perPage);

        $suppliers = Supplier::where('status', 'active')->get();
        $racks = Rack::where('status', 'available')->get();

        return view('livewire.admin.items.index', [
            'items' => $items,
            'suppliers' => $suppliers,
            'racks' => $racks,
            'stockItem' => $this->stockItem,
        ])->layout('layouts.app');
    }
}
