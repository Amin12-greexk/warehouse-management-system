<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Master Rak') }}
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
                            <x-text-input wire:model.live.debounce.300ms="search" placeholder="Cari Nama atau Kode Rak..." class="w-full" />
                        </div>
                        <div class="flex-none flex space-x-2">
                            <select wire:model.live="statusFilter" class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Status</option>
                                <option value="available">Tersedia</option>
                                <option value="full">Penuh</option>
                                <option value="maintenance">Maintenance</option>
                            </select>
                            <x-primary-button onclick="location.href='{{ route('admin.racks.create') }}'" wire:navigate>
                                Tambah Rak
                            </x-primary-button>
                        </div>
                    </div>

                    <div class="overflow-x-auto" wire:key="rack-table-{{ $search }}-{{ $statusFilter }}">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kode Rak</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Nama Rak</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Lokasi</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Aksi</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @forelse ($racks as $rack)
                                    <tr wire:key="{{ $rack->id }}">
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $rack->rack_code }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $rack->name }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $rack->location }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full 
                                                @if($rack->status == 'available') bg-green-100 text-green-800 @endif
                                                @if($rack->status == 'full') bg-red-100 text-red-800 @endif
                                                @if($rack->status == 'maintenance') bg-yellow-100 text-yellow-800 @endif">
                                                {{ ucfirst($rack->status) }}
                                            </span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <a href="{{ route('admin.racks.edit', $rack) }}" wire:navigate class="text-indigo-600 hover:text-indigo-900">Edit</a>
                                            <button wire:click="deleteRack({{ $rack->id }})" wire:confirm="Anda yakin ingin menghapus rak ini?" class="ml-4 text-red-600 hover:text-red-900">Hapus</button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="5" class="px-6 py-4 text-center text-gray-500">Tidak ada rak ditemukan.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $racks->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
