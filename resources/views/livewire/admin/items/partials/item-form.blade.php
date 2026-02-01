<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
    <div>
        <x-input-label for="item_code" value="Kode Barang" />
        <x-text-input wire:model="item_code" id="item_code" type="text" class="mt-1 block w-full"
            placeholder="Kode otomatis, bisa diubah jika perlu" />
        <x-input-error :messages="$errors->get('item_code')" class="mt-2" />
    </div>
    <div>
        <x-input-label for="barcode" value="Barcode (Opsional)" />
        <x-text-input wire:model="barcode" id="barcode" type="text" class="mt-1 block w-full"
            placeholder="Scan atau ketik barcode" />
        <x-input-error :messages="$errors->get('barcode')" class="mt-2" />
    </div>
    <div>
        <x-input-label for="name" value="Nama Barang" />
        <x-text-input wire:model="name" id="name" type="text" class="mt-1 block w-full" required />
        <x-input-error :messages="$errors->get('name')" class="mt-2" />
    </div>
    <div>
        <x-input-label for="type" value="Tipe Barang" />
        <select wire:model="type" id="type"
            class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
            <option value="raw_material">Bahan Baku</option>
            <option value="finished_goods">Barang Jadi</option>
            <option value="spare_parts">Spare Part</option>
            <option value="consumable">Consumable</option>
        </select>
        <x-input-error :messages="$errors->get('type')" class="mt-2" />
    </div>
    <div>
        <x-input-label for="supplier_id" value="Supplier" />
        <select wire:model="supplier_id" id="supplier_id"
            class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"
            required>
            <option value="">Pilih Supplier</option>
            @foreach($suppliers as $supplier)
            <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
            @endforeach
        </select>
        <x-input-error :messages="$errors->get('supplier_id')" class="mt-2" />
    </div>
    <div>
        <x-input-label for="rack_id" value="Rak (Opsional)" />
        <select wire:model="rack_id" id="rack_id"
            class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
            <option value="">Pilih Rak</option>
            @foreach($racks as $rack)
            <option value="{{ $rack->id }}">{{ $rack->name }} ({{ $rack->rack_code }})</option>
            @endforeach
        </select>
        <x-input-error :messages="$errors->get('rack_id')" class="mt-2" />
    </div>
    <div class="grid grid-cols-3 gap-4">
        <div>
            <x-input-label for="stock" value="Stok" />
            <x-text-input wire:model="stock" id="stock" type="number" class="mt-1 block w-full" required />
            <x-input-error :messages="$errors->get('stock')" class="mt-2" />
        </div>
        <div>
            <x-input-label for="minimum_stock" value="Stok Min." />
            <x-text-input wire:model="minimum_stock" id="minimum_stock" type="number" class="mt-1 block w-full"
                required />
            <x-input-error :messages="$errors->get('minimum_stock')" class="mt-2" />
        </div>
        <div>
            <x-input-label for="unit" value="Unit" />
            <x-text-input wire:model="unit" id="unit" type="text" class="mt-1 block w-full" required />
            <x-input-error :messages="$errors->get('unit')" class="mt-2" />
        </div>
    </div>
    <div>
        <x-input-label for="price" value="Harga" />
        <x-text-input wire:model="price" id="price" type="number" step="0.01" class="mt-1 block w-full" required />
        <x-input-error :messages="$errors->get('price')" class="mt-2" />
    </div>
    <div>
        <x-input-label for="image" value="Gambar (Opsional)" />
        <input wire:model="image" type="file" id="image"
            class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-indigo-50 file:text-indigo-700 hover:file:bg-indigo-100">
        <x-input-error :messages="$errors->get('image')" class="mt-2" />
    </div>
</div>
<div class="mt-6">
    <x-input-label for="description" value="Deskripsi" />
    <textarea wire:model="description" id="description" rows="3"
        class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"></textarea>
    <x-input-error :messages="$errors->get('description')" class="mt-2" />
</div>
