<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Master Pengguna') }}
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
                                placeholder="Cari Nama, Username, atau Email..." class="w-full" />
                        </div>
                        <div class="flex-none flex space-x-2">
                            <select wire:model.live="roleFilter"
                                class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Role</option>
                                <option value="admin">Admin</option>
                                <option value="manager">Manager</option>
                                <option value="karyawan">Karyawan</option>
                            </select>
                            <select wire:model.live="statusFilter"
                                class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Status</option>
                                <option value="active">Aktif</option>
                                <option value="inactive">Nonaktif</option>
                            </select>
                            <x-primary-button onclick="location.href='{{ route('admin.users.create') }}'">
                                Tambah User
                            </x-primary-button>
                        </div>
                    </div>

                    <div class="overflow-x-auto" wire:key="user-table-{{ $search }}-{{ $roleFilter }}-{{ $statusFilter }}">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Nama
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Username
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Role
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status
                                    </th>
                                    <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Aksi
                                    </th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @forelse ($users as $user)
                                    <tr wire:key="{{ $user->id }}">
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm font-medium text-gray-900">{{ $user->name }}</div>
                                            <div class="text-sm text-gray-500">{{ $user->email }}</div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $user->username }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">{{ $user->role }}</td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            @if($user->status == 'active')
                                                <span
                                                    class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Aktif</span>
                                            @else
                                                <span
                                                    class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">Nonaktif</span>
                                            @endif
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                            <a href="{{ route('admin.users.edit', $user) }}"
                                                class="text-indigo-600 hover:text-indigo-900">Edit</a>
                                            <button wire:click="toggleStatus({{ $user->id }})"
                                                class="ml-4 text-yellow-600 hover:text-yellow-900">
                                                {{ $user->status == 'active' ? 'Nonaktifkan' : 'Aktifkan' }}
                                            </button>
                                            <button wire:click="deleteUser({{ $user->id }})"
                                                wire:confirm="Anda yakin ingin menghapus user ini?"
                                                class="ml-4 text-red-600 hover:text-red-900">Hapus</button>
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="5" class="px-6 py-4 text-center text-gray-500">Tidak ada pengguna
                                            ditemukan.</td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $users->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
