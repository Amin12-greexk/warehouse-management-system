<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Master Supplier') }}
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
                                placeholder="Cari Nama, Kontak, atau Email..." class="w-full" />
                        </div>
                        <div class="flex-none flex space-x-2">
                            <select wire:model.live="statusFilter"
                                class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Status</option>
                                <option value="active">Aktif</option>
                                <option value="inactive">Nonaktif</option>
                            </select>
                            <x-primary-button onclick="location.href='{{ route('admin.suppliers.create') }}'"
                                wire:navigate>
                                Tambah Supplier
                            </x-primary-button>
                        </div>
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Nama
                                        Supplier</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Kontak
                                        Person</th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Email
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Telepon
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Aksi
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @forelse ($suppliers as $supplier)
                                    <tr wire:key="{{ $supplier->id }}">
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $supplier->name }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $supplier->contact_person }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $supplier->email }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $supplier->phone }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            @if($supplier->status == 'active')
                                                <span
                                                    class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Aktif</span>
                                            @else
                                                <span
                                                    class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">Nonaktif</span>
                                            @endif
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <a href="{{ route('admin.suppliers.edit', $supplier) }}" wire:navigate
                                                class="text-indigo-600 hover:text-indigo-900">Edit</a>
                                            <button wire:click="deleteSupplier({{ $supplier->id }})"
                                                wire:confirm="Anda yakin ingin menghapus supplier ini?"
                                                class="ml-4 text-red-600 hover:text-red-900">Hapus</button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="6" class="px-6 py-4 text-center text-gray-500">Tidak ada supplier
                                            ditemukan.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $suppliers->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>