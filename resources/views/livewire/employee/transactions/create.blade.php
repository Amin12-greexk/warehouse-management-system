<div>
    <x-slot name="header">
        <h2 class="font-semibold text-lg md:text-xl text-gray-800 leading-tight">
            {{ __('Buat Transaksi Baru') }}
        </h2>
    </x-slot>

    <div class="py-4 md:py-12">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm rounded-lg md:rounded-xl">
                <form wire:submit.prevent="save" class="p-4 md:p-6">

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

                    <!-- Transaction Type -->
                    <div class="mb-4 md:mb-6">
                        <x-input-label for="type" value="Tipe Transaksi" class="mb-2" />
                        <div class="grid grid-cols-2 gap-2 md:gap-4">
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="radio" wire:model.live="type" value="in" class="text-green-600 focus:ring-green-500 flex-shrink-0">
                                <span class="px-2 md:px-4 py-2 rounded-lg text-xs md:text-sm {{ $type == 'in' ? 'bg-green-100 text-green-800 font-semibold' : 'bg-gray-100 text-gray-700' }}">
                                    <i class="fas fa-arrow-down mr-1 md:mr-2"></i>Barang Masuk
                                </span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer">
                                <input type="radio" wire:model.live="type" value="out" class="text-red-600 focus:ring-red-500 flex-shrink-0">
                                <span class="px-2 md:px-4 py-2 rounded-lg text-xs md:text-sm {{ $type == 'out' ? 'bg-red-100 text-red-800 font-semibold' : 'bg-gray-100 text-gray-700' }}">
                                    <i class="fas fa-arrow-up mr-1 md:mr-2"></i>Barang Keluar
                                </span>
                            </label>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 md:gap-6">
                        <!-- Item Selection -->
                        <div>
                            <x-input-label for="item_id" value="Pilih Barang" />
                            <select wire:model="item_id" id="item_id" class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm" required>
                                <option value="">-- Pilih Barang --</option>
                                @foreach($items as $item)
                                    <option value="{{ $item->id }}">{{ $item->name }} ({{ $item->item_code }}) - Stok: {{ $item->stock }}</option>
                                @endforeach
                            </select>
                            <x-input-error :messages="$errors->get('item_id')" class="mt-2" />
                        </div>

                        <!-- Quantity -->
                        <div>
                            <x-input-label for="quantity" value="Jumlah" />
                            <x-text-input wire:model="quantity" id="quantity" type="number" min="1" class="mt-1 block w-full" required />
                            <x-input-error :messages="$errors->get('quantity')" class="mt-2" />
                        </div>

                        <!-- Rack Selection -->
                        <div>
                            <x-input-label for="rack_id" :value="$type == 'in' ? 'Rak Tujuan' : 'Rak Asal'" />
                            <select wire:model="rack_id" id="rack_id" class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm" required>
                                <option value="">-- Pilih Rak --</option>
                                @foreach($racks as $rack)
                                    <option value="{{ $rack->id }}">
                                        {{ $rack->name }} ({{ $rack->rack_code }}) - {{ $rack->location }}
                                        @if($rack->status === 'full')
                                            - Penuh
                                        @endif
                                    </option>
                                @endforeach
                            </select>
                            <x-input-error :messages="$errors->get('rack_id')" class="mt-2" />
                            @if($selectedRack && $type === 'in')
                                @php
                                    $isMaintenance = $selectedRack->status === 'maintenance';
                                    $isManualFull = $selectedRack->manual_full;
                                    $isFull = $isManualFull || $selectedRack->status === 'full' || $selectedRack->available_capacity <= 0;
                                    $availableCapacity = $selectedRack->available_capacity;
                                @endphp

                                @if($isMaintenance)
                                    <p class="mt-2 text-sm text-yellow-600">Rak ini sedang maintenance dan tidak bisa dipakai.</p>
                                @elseif($isManualFull)
                                    <p class="mt-2 text-sm text-red-600">Rak ini ditandai penuh secara manual.</p>
                                @elseif($isFull)
                                    <p class="mt-2 text-sm text-red-600">Rak ini sudah penuh ({{ $selectedRack->used_capacity }}/{{ $selectedRack->capacity }}).</p>
                                @else
                                    <p class="mt-2 text-sm text-gray-600">Sisa kapasitas: {{ $availableCapacity }}.</p>
                                @endif

                                @if(!$isMaintenance && !$isFull && $quantity && $availableCapacity < $quantity)
                                    <p class="mt-1 text-sm text-red-600">Kapasitas tidak cukup untuk jumlah ini.</p>
                                @endif
                            @endif
                        </div>

                        <!-- Supplier (only for incoming) -->
                        @if($type == 'in')
                            <div>
                                <x-input-label for="supplier_id" value="Supplier (Opsional)" />
                                <select wire:model="supplier_id" id="supplier_id" class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                    <option value="">-- Pilih Supplier --</option>
                                    @foreach($suppliers as $supplier)
                                        <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                                    @endforeach
                                </select>
                                <x-input-error :messages="$errors->get('supplier_id')" class="mt-2" />
                                <p class="mt-1 text-sm text-gray-500">Kosongkan jika menggunakan supplier default barang</p>
                            </div>
                        @endif
                    </div>

                    <!-- Photo Section -->
                    <div class="mt-4 md:mt-6">
                        <x-input-label value="Bukti Foto" class="mb-2" />

                        <div class="grid grid-cols-2 gap-2 md:gap-4 mb-4">
                            <button type="button" onclick="openCamera()" class="px-3 md:px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition text-xs md:text-sm">
                                <i class="fas fa-camera mr-1 md:mr-2"></i>Ambil Foto
                            </button>
                            <label class="px-3 md:px-4 py-2 bg-gray-600 text-white rounded-lg hover:bg-gray-700 transition cursor-pointer text-center text-xs md:text-sm">
                                <i class="fas fa-upload mr-1 md:mr-2"></i>Upload Foto
                                <input type="file" wire:model="photo" accept="image/*" class="hidden">
                            </label>
                        </div>

                        <!-- Camera Modal -->
                        <div id="cameraModal" class="hidden fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
                            <div class="bg-white rounded-lg p-4 md:p-6 max-w-2xl w-full max-h-[90vh] overflow-y-auto">
                                <div class="flex justify-between items-center mb-3 md:mb-4">
                                    <h3 class="text-base md:text-lg font-semibold">Ambil Foto</h3>
                                    <button type="button" onclick="closeCamera()" class="text-gray-500 hover:text-gray-700">
                                        <i class="fas fa-times text-lg md:text-xl"></i>
                                    </button>
                                </div>

                                <div class="mb-3 md:mb-4">
                                    <video id="camera" class="w-full rounded-lg bg-black" autoplay playsinline></video>
                                    <canvas id="canvas" class="hidden"></canvas>
                                </div>

                                <div class="flex gap-2">
                                    <button type="button" onclick="capturePhoto()" class="flex-1 px-3 md:px-4 py-2 bg-green-600 text-white rounded-lg hover:bg-green-700 text-xs md:text-sm">
                                        <i class="fas fa-camera mr-1 md:mr-2"></i>Ambil Gambar
                                    </button>
                                    <button type="button" onclick="closeCamera()" class="px-3 md:px-4 py-2 bg-gray-600 text-white rounded-lg hover:bg-gray-700 text-xs md:text-sm">
                                        Batal
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Photo Preview -->
                        <div class="mt-4">
                            @if ($photo)
                                <div class="relative inline-block">
                                    <img src="{{ $photo->temporaryUrl() }}" class="h-32 md:h-40 rounded-lg border-2 border-green-500">
                                    <button type="button" wire:click="$set('photo', null)" class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center hover:bg-red-600">
                                        <i class="fas fa-times text-xs"></i>
                                    </button>
                                    <p class="text-xs md:text-sm text-green-600 mt-2">
                                        <i class="fas fa-check-circle mr-1"></i>Foto dari upload
                                    </p>
                                </div>
                            @endif
                            @if ($capturedPhoto)
                                <div class="relative inline-block">
                                    <img src="{{ $capturedPhoto }}" class="h-32 md:h-40 rounded-lg border-2 border-green-500">
                                    <button type="button" wire:click="$set('capturedPhoto', null)" class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center hover:bg-red-600">
                                        <i class="fas fa-times text-xs"></i>
                                    </button>
                                    <p class="text-xs md:text-sm text-green-600 mt-2">
                                        <i class="fas fa-check-circle mr-1"></i>Foto dari kamera
                                    </p>
                                </div>
                            @endif
                        </div>

                        <x-input-error :messages="$errors->get('photo')" class="mt-2" />
                    </div>

                    <!-- Notes -->
                    <div class="mt-4 md:mt-6">
                        <x-input-label for="notes" value="Catatan (Opsional)" />
                        <textarea wire:model="notes" id="notes" rows="3" class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm text-sm" placeholder="Tambahkan catatan jika diperlukan..."></textarea>
                        <x-input-error :messages="$errors->get('notes')" class="mt-2" />
                    </div>

                    <!-- Submit Button -->
                    <div class="flex flex-col-reverse md:flex-row items-stretch md:items-center justify-end mt-4 md:mt-6 gap-2 md:gap-3">
                        <x-secondary-button type="button" onclick="window.history.back()" class="w-full md:w-auto justify-center">
                            Batal
                        </x-secondary-button>
                        <x-primary-button wire:loading.attr="disabled" class="w-full md:w-auto justify-center">
                            <span wire:loading.remove>Simpan Transaksi</span>
                            <span wire:loading>
                                <i class="fas fa-spinner fa-spin mr-2"></i>Menyimpan...
                            </span>
                        </x-primary-button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    @push('scripts')
    <script>
        let stream = null;
        let capturedImageData = null;

        function openCamera() {
            const modal = document.getElementById('cameraModal');
            const video = document.getElementById('camera');
            
            modal.classList.remove('hidden');
            
            navigator.mediaDevices.getUserMedia({ 
                video: { 
                    facingMode: 'environment',
                    width: { ideal: 1920 },
                    height: { ideal: 1080 }
                } 
            })
            .then(function(mediaStream) {
                stream = mediaStream;
                video.srcObject = mediaStream;
                video.play();
            })
            .catch(function(err) {
                alert('Error accessing camera: ' + err.message);
                closeCamera();
            });
        }

        function capturePhoto() {
            const video = document.getElementById('camera');
            const canvas = document.getElementById('canvas');
            const context = canvas.getContext('2d');
            
            canvas.width = video.videoWidth;
            canvas.height = video.videoHeight;
            context.drawImage(video, 0, 0);
            
            capturedImageData = canvas.toDataURL('image/png');

            // Kirim ke Livewire
            @this.set('capturedPhoto', capturedImageData);
            @this.set('photo', null); // Clear uploaded photo if any
            
            closeCamera();
        }

        function closeCamera() {
            if (stream) {
                stream.getTracks().forEach(track => track.stop());
                stream = null;
            }
            document.getElementById('cameraModal').classList.add('hidden');
        }
    </script>
    @endpush
</div>
