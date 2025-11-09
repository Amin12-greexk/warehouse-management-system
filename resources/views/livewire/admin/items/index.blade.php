<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Master Barang') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">

                    @if (session()->has('message'))
                        <div class="mb-4 p-4 bg-green-100 text-green-800 rounded-lg">
                            {{ session('message') }}
                        </div>
                    @endif
                    @if (session()->has('error'))
                        <div class="mb-4 p-4 bg-red-100 text-red-800 rounded-lg">
                            {{ session('error') }}
                        </div>
                    @endif

                    <div class="flex flex-col md:flex-row justify-between gap-4 mb-4">
                        <div class="flex-grow">
                            <x-text-input wire:model.live.debounce.300ms="search"
                                placeholder="Cari Kode atau Nama Barang..." class="w-full" />
                        </div>
                        <div class="flex-none flex space-x-2">
                            <select wire:model.live="typeFilter"
                                class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Tipe</option>
                                <option value="raw_material">Bahan Baku</option>
                                <option value="finished_goods">Barang Jadi</option>
                                <option value="spare_parts">Spare Part</option>
                                <option value="consumable">Consumable</option>
                            </select>
                            <select wire:model.live="stockFilter"
                                class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Stok</option>
                                <option value="normal">Normal</option>
                                <option value="low">Stok Menipis</option>
                                <option value="out">Stok Habis</option>
                            </select>
                            <x-primary-button wire:click="createItem">Tambah Item</x-primary-button>
                        </div>
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kode
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Nama
                                        Barang</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tipe
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Stok
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status
                                        Stok</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Aksi
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @forelse ($items as $item)
                                    <tr wire:key="{{ $item->id }}">
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->item_code }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->name }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->type_label }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $item->stock }} {{ $item->unit }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{!! $item->stock_status_badge !!}</td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <button wire:click="editItem({{ $item->id }})"
                                                class="text-indigo-600 hover:text-indigo-900">Edit</button>
                                            <button wire:click="deleteItem({{ $item->id }})"
                                                wire:confirm="Anda yakin ingin menghapus barang ini?"
                                                class="ml-4 text-red-600 hover:text-red-900">Hapus</button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="6" class="px-6 py-4 text-center text-gray-500">Tidak ada barang
                                            ditemukan.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $items->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <x-modal wire:model.live="showCreateModal" max-width="2xl">
        <form wire:submit="save" class="p-6">
            <h2 class="text-lg font-medium text-gray-900 mb-4">
                {{ __('Tambah Item Baru') }}
            </h2>

            @include('livewire.admin.items.partials.item-form')

            <div class="mt-6 flex justify-end">
                <x-secondary-button wire:click="$set('showCreateModal', false)" wire:loading.attr="disabled">
                    {{ __('Batal') }}
                </x-secondary-button>
                <x-primary-button class="ms-3" wire:loading.attr="disabled">
                    {{ __('Simpan Item') }}
                </x-primary-button>
            </div>
        </form>
    </x-modal>

    <x-modal wire:model.live="showEditModal" max-width="2xl">
        <form wire:submit="save" class="p-6">
            <h2 class="text-lg font-medium text-gray-900 mb-4">
                {{ __('Edit Item') }}
            </h2>

            @include('livewire.admin.items.partials.item-form')

            <div class="mt-6 flex justify-end">
                <x-secondary-button wire:click="$set('showEditModal', false)" wire:loading.attr="disabled">
                    {{ __('Batal') }}
                </x-secondary-button>
                <x-primary-button class="ms-3" wire:loading.attr="disabled">
                    {{ __('Update Item') }}
                </x-primary-button>
            </div>
        </form>
    </x-modal>

    {{--
    @php
    /*
    Konten untuk 'resources/views/livewire/admin/items/partials/item-form.blade.php':

    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div>
            <x-input-label for="item_code" value="Kode Barang" />
            <x-text-input wire:model="item_code" id="item_code" type="text" class="mt-1 block w-full bg-gray-100"
                readonly />
            <x-input-error :messages="$errors->get('item_code')" class="mt-2" />
        </div>
        <div>
            <x-input-label for="name" value="Nama Barang" />
            <x-text-input wire:model="name" id="name" type="text" class="mt-1 block w-full" />
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
                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
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
                <x-text-input wire:model="stock" id="stock" type="number" class="mt-1 block w-full" />
                <x-input-error :messages="$errors->get('stock')" class="mt-2" />
            </div>
            <div>
                <x-input-label for="minimum_stock" value="Stok Min." />
                <x-text-input wire:model="minimum_stock" id="minimum_stock" type="number" class="mt-1 block w-full" />
                <x-input-error :messages="$errors->get('minimum_stock')" class="mt-2" />
            </div>
            <div>
                <x-input-label for="unit" value="Unit" />
                <x-text-input wire:model="unit" id="unit" type="text" class="mt-1 block w-full" />
                <x-input-error :messages="$errors->get('unit')" class="mt-2" />
            </div>
        </div>
        <div>
            <x-input-label for="price" value="Harga" />
            <x-text-input wire:model="price" id="price" type="number" step="0.01" class="mt-1 block w-full" />
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

    */
    @endphp
    --}}
</div>