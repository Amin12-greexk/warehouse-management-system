<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Edit Rak') }}: {{ $name }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <form wire:submit.prevent="updateRack" class="p-6">

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <x-input-label for="rack_code" :value="__('Kode Rak')" />
                            <x-text-input wire:model="rack_code" id="rack_code" class="block mt-1 w-full" type="text"
                                required />
                            <x-input-error :messages="$errors->get('rack_code')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="name" :value="__('Nama Rak (Contoh: A1-Lantai 1)')" />
                            <x-text-input wire:model="name" id="name" class="block mt-1 w-full" type="text" required />
                            <x-input-error :messages="$errors->get('name')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="location" :value="__('Lokasi (Opsional)')" />
                            <x-text-input wire:model="location" id="location" class="block mt-1 w-full" type="text" />
                            <x-input-error :messages="$errors->get('location')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="status" :value="__('Status')" />
                            <select wire:model="status" id="status"
                                class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="available">Tersedia</option>
                                <option value="full">Penuh</option>
                                <option value="maintenance">Maintenance</option>
                            </select>
                            <x-input-error :messages="$errors->get('status')" class="mt-2" />
                        </div>
                    </div>

                    <div class="flex items-center justify-end mt-6">
                        <x-secondary-button href="{{ route('admin.racks.index') }}" class="mr-3">
                            {{ __('Batal') }}
                        </x-secondary-button>

                        <x-primary-button>
                            {{ __('Update Rak') }}
                        </x-primary-button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
