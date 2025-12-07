<div>
    <x-slot name="header">
        <h2 class="font-semibold text-lg md:text-xl text-gray-800 leading-tight">
            {{ __('Edit User') }}: {{ $name }}
        </h2>
    </x-slot>

    <div class="py-4 md:py-12">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm rounded-lg md:rounded-xl">
                <form wire:submit.prevent="updateUser" class="p-4 md:p-6">

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 md:gap-6">
                        <div>
                            <x-input-label for="name" :value="__('Nama Lengkap')" />
                            <x-text-input wire:model="name" id="name" class="block mt-1 w-full" type="text" required />
                            <x-input-error :messages="$errors->get('name')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="username" :value="__('Username')" />
                            <x-text-input wire:model="username" id="username" class="block mt-1 w-full" type="text"
                                required />
                            <x-input-error :messages="$errors->get('username')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="email" :value="__('Email')" />
                            <x-text-input wire:model="email" id="email" class="block mt-1 w-full" type="email"
                                required />
                            <x-input-error :messages="$errors->get('email')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="role" :value="__('Role')" />
                            <select wire:model="role" id="role"
                                class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                @foreach($roles as $roleName)
                                    <option value="{{ $roleName }}">{{ ucfirst($roleName) }}</option>
                                @endforeach
                            </select>
                            <x-input-error :messages="$errors->get('role')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="password" :value="__('Password Baru (Opsional)')" />
                            <x-text-input wire:model="password" id="password" class="block mt-1 w-full"
                                type="password" />
                            <p class="mt-1 text-xs text-gray-500">Kosongkan jika tidak ingin mengubah password</p>
                            <x-input-error :messages="$errors->get('password')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="password_confirmation" :value="__('Konfirmasi Password Baru')" />
                            <x-text-input wire:model="password_confirmation" id="password_confirmation"
                                class="block mt-1 w-full" type="password" />
                        </div>

                        <div>
                            <x-input-label for="position" :value="__('Posisi / Jabatan')" />
                            <x-text-input wire:model="position" id="position" class="block mt-1 w-full" type="text" />
                            <x-input-error :messages="$errors->get('position')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="phone" :value="__('Telepon')" />
                            <x-text-input wire:model="phone" id="phone" class="block mt-1 w-full" type="text" />
                            <x-input-error :messages="$errors->get('phone')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="status" :value="__('Status')" />
                            <select wire:model="status" id="status"
                                class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="active">Aktif</option>
                                <option value="inactive">Nonaktif</option>
                                <option value="suspended">Suspended</option>
                            </select>
                            <x-input-error :messages="$errors->get('status')" class="mt-2" />
                        </div>

                        <div class="col-span-1 md:col-span-2">
                            <x-input-label for="address" :value="__('Alamat')" />
                            <textarea wire:model="address" id="address" rows="3"
                                class="block mt-1 w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"></textarea>
                            <x-input-error :messages="$errors->get('address')" class="mt-2" />
                        </div>

                        <div class="col-span-1 md:col-span-2">
                            <x-input-label for="new_photo" :value="__('Ganti Foto Profil (Opsional)')" />
                            <input wire:model="new_photo" type="file" id="new_photo" accept="image/*"
                                class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-indigo-50 file:text-indigo-700 hover:file:bg-indigo-100">
                            <p class="mt-1 text-xs text-gray-500">Format: JPG, PNG, max 2MB</p>
                            <x-input-error :messages="$errors->get('new_photo')" class="mt-2" />

                            <div class="mt-3 flex flex-wrap gap-4">
                                @if ($new_photo)
                                    <div>
                                        <span class="text-sm font-medium text-gray-700 block mb-2">Preview Foto Baru:</span>
                                        <img src="{{ $new_photo->temporaryUrl() }}" alt="Preview"
                                            class="h-24 w-24 object-cover rounded-full border-2 border-green-500">
                                    </div>
                                @endif

                                @if ($existing_photo)
                                    <div>
                                        <span class="text-sm font-medium text-gray-700 block mb-2">Foto Saat Ini:</span>
                                        <img src="{{ asset('storage/' . $existing_photo) }}" alt="Foto Saat Ini"
                                            class="h-24 w-24 object-cover rounded-full border-2 border-gray-300"
                                            onerror="this.src='https://placehold.co/100x100/e2e8f0/718096?text=No+Image'">
                                    </div>
                                @else
                                    @if (!$new_photo)
                                        <div>
                                            <span class="text-sm font-medium text-gray-500 block mb-2">Belum ada foto</span>
                                            <img src="https://placehold.co/100x100/e2e8f0/718096?text=No+Image" alt="No Photo"
                                                class="h-24 w-24 object-cover rounded-full border-2 border-gray-300">
                                        </div>
                                    @endif
                                @endif
                            </div>
                        </div>
                    </div>

                    <div class="flex flex-col-reverse md:flex-row items-stretch md:items-center justify-end mt-4 md:mt-6 gap-2 md:gap-3">
                        <x-secondary-button type="button" wire:navigate href="{{ route('admin.users.index') }}" class="w-full md:w-auto justify-center">
                            {{ __('Batal') }}
                        </x-secondary-button>

                        <x-primary-button type="submit" wire:loading.attr="disabled" class="w-full md:w-auto justify-center">
                            <span wire:loading.remove>{{ __('Update User') }}</span>
                            <span wire:loading>
                                <i class="fas fa-spinner fa-spin mr-2"></i>Memperbarui...
                            </span>
                        </x-primary-button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
