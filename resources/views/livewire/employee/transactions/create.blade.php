<div>
    <x-slot name="header">
        <h2 class="font-semibold text-lg md:text-xl text-gray-800 leading-tight">
            {{ __('Buat Transaksi Baru') }}
        </h2>
    </x-slot>

    <div class="py-4 md:py-8">
        <div class="max-w-4xl mx-auto px-3 sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm rounded-xl">
                <form wire:submit.prevent="save" class="p-4 md:p-6">

                    @if (session()->has('message'))
                        <div class="mb-4 p-4 bg-green-100 text-green-800 rounded-lg flex items-center">
                            <i class="fas fa-check-circle mr-2"></i>
                            {{ session('message') }}
                        </div>
                    @endif
                    @if (session()->has('error'))
                        <div class="mb-4 p-4 bg-red-100 text-red-800 rounded-lg flex items-center">
                            <i class="fas fa-times-circle mr-2"></i>
                            {{ session('error') }}
                        </div>
                    @endif

                    <!-- Transaction Type - Sticky on Mobile -->
                    <div class="mb-4 md:mb-6 sticky top-0 bg-white z-10 py-2 -mx-4 px-4 border-b md:border-0 md:static">
                        <x-input-label for="type" value="Tipe Transaksi" class="mb-2 text-sm font-semibold" />
                        <div class="grid grid-cols-2 gap-2">
                            <label class="cursor-pointer">
                                <input type="radio" wire:model.live="type" value="in" class="sr-only peer">
                                <div class="flex items-center justify-center px-4 py-3 rounded-xl border-2 transition-all
                                    peer-checked:border-green-500 peer-checked:bg-green-50 peer-checked:text-green-700
                                    border-gray-200 hover:border-green-300">
                                    <i class="fas fa-arrow-down mr-2 text-lg"></i>
                                    <span class="font-medium">Barang Masuk</span>
                                </div>
                            </label>
                            <label class="cursor-pointer">
                                <input type="radio" wire:model.live="type" value="out" class="sr-only peer">
                                <div class="flex items-center justify-center px-4 py-3 rounded-xl border-2 transition-all
                                    peer-checked:border-red-500 peer-checked:bg-red-50 peer-checked:text-red-700
                                    border-gray-200 hover:border-red-300">
                                    <i class="fas fa-arrow-up mr-2 text-lg"></i>
                                    <span class="font-medium">Barang Keluar</span>
                                </div>
                            </label>
                        </div>
                    </div>

                    <!-- Barcode Scanner Section -->
                    <div class="mb-6 p-4 bg-gradient-to-r from-blue-50 to-indigo-50 rounded-xl border border-blue-200">
                        <div class="flex items-center justify-between mb-3">
                            <x-input-label for="barcode" value="Scan Barcode" class="text-blue-800 font-semibold" />
                            <button type="button" onclick="openBarcodeScanner()"
                                class="px-3 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition text-sm flex items-center">
                                <i class="fas fa-camera mr-2"></i>
                                <span class="hidden sm:inline">Scan dengan Kamera</span>
                                <span class="sm:hidden">Scan</span>
                            </button>
                        </div>

                        <div class="flex gap-2">
                            <x-text-input wire:model="barcode" wire:keydown.enter.prevent="applyBarcode" id="barcode"
                                type="text" class="flex-1 text-lg py-3" placeholder="Ketik atau scan barcode..."
                                autocomplete="off" />
                            <button type="button" wire:click="applyBarcode"
                                class="px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition">
                                <i class="fas fa-search"></i>
                            </button>
                        </div>
                        <x-input-error :messages="$errors->get('barcode')" class="mt-2" />

                        <!-- Scan Success Feedback -->
                        @if($scanSuccess && $scannedItemName)
                            <div class="mt-3 p-3 bg-green-100 border border-green-300 rounded-lg flex items-center">
                                <i class="fas fa-check-circle text-green-600 mr-3 text-xl"></i>
                                <div>
                                    <div class="font-semibold text-green-800">{{ $scannedItemName }}</div>
                                    <div class="text-sm text-green-600">{{ $scannedItemCode }} • Stok:
                                        {{ $scannedItemStock }}</div>
                                </div>
                            </div>
                        @endif
                    </div>

                    <!-- Barcode Camera Scanner Modal -->
                    <div id="barcodeScannerModal"
                        class="hidden fixed inset-0 bg-black bg-opacity-75 z-50 flex items-center justify-center p-4">
                        <div class="bg-white rounded-2xl w-full max-w-lg overflow-hidden">
                            <div
                                class="flex items-center justify-between p-4 border-b bg-gradient-to-r from-blue-500 to-indigo-600">
                                <h3 class="text-lg font-bold text-white flex items-center">
                                    <i class="fas fa-barcode mr-2"></i>
                                    Scan Barcode
                                </h3>
                                <button type="button" onclick="closeBarcodeScanner()"
                                    class="text-white hover:text-gray-200">
                                    <i class="fas fa-times text-xl"></i>
                                </button>
                            </div>

                            <div class="p-4">
                                <div class="relative bg-black rounded-lg overflow-hidden">
                                    <div id="barcodeScanner" class="w-full h-64"></div>
                                    <div class="absolute inset-0 flex items-center justify-center pointer-events-none">
                                        <div class="w-3/4 h-24 border-2 border-red-500 rounded-lg opacity-50"></div>
                                    </div>
                                </div>
                                <div class="mt-3 flex flex-col gap-3">
                                    <p class="text-center text-sm text-gray-600">
                                        Arahkan kamera ke barcode produk (usahakan terang & fokus)
                                    </p>
                                    <div id="cameraSelectWrapper" class="hidden items-center justify-center gap-2">
                                        <label class="text-sm text-gray-600">Kamera</label>
                                        <select id="barcodeCameraSelect"
                                            class="px-3 py-2 border border-gray-300 rounded-lg text-sm focus:ring-2 focus:ring-blue-500"
                                            onchange="switchBarcodeCamera(this.value)">
                                            <option value="">Default</option>
                                        </select>
                                    </div>
                                    <div class="flex items-center justify-center gap-2">
                                        <button type="button" id="torchToggle" onclick="toggleTorch()"
                                            class="hidden px-3 py-2 text-sm bg-gray-900 text-white rounded-lg hover:bg-gray-800">
                                            🔦 Flash
                                        </button>
                                        <div id="zoomControl"
                                            class="hidden flex items-center gap-2 text-sm text-gray-600">
                                            <span>Zoom</span>
                                            <input id="zoomRange" type="range" min="1" max="3" step="0.1" value="1"
                                                class="w-32">
                                        </div>
                                    </div>
                                </div>

                                <!-- Manual Input Option -->
                                <div class="mt-4 pt-4 border-t">
                                    <label class="text-sm text-gray-600 block mb-2">Atau ketik manual:</label>
                                    <div class="flex gap-2">
                                        <input type="text" id="manualBarcodeInput"
                                            class="flex-1 px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500"
                                            placeholder="Ketik barcode...">
                                        <button type="button" onclick="submitManualBarcode()"
                                            class="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700">
                                            OK
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4 md:gap-6">
                        <!-- Item Selection -->
                        <div>
                            <x-input-label for="item_id" value="Pilih Barang" />
                            <select wire:model.live="item_id" id="item_id"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-lg shadow-sm py-3"
                                required>
                                <option value="">-- Pilih Barang --</option>
                                @foreach($items as $item)
                                    <option value="{{ $item->id }}">
                                        {{ $item->name }} ({{ $item->item_code }}) - Stok: {{ $item->stock }}
                                    </option>
                                @endforeach
                            </select>
                            <x-input-error :messages="$errors->get('item_id')" class="mt-2" />
                        </div>

                        @php
                            $selectedItem = $items->firstWhere('id', $item_id);
                        @endphp

                        @if ($selectedItem)
                            <div class="md:col-span-2">
                                <div
                                    class="p-4 bg-gradient-to-r from-blue-50 to-indigo-50 border border-blue-200 rounded-xl">
                                    <div class="text-sm font-semibold text-blue-900 mb-3 flex items-center">
                                        <i class="fas fa-info-circle mr-2"></i>
                                        Informasi Barang
                                    </div>
                                    <div class="grid grid-cols-2 md:grid-cols-3 gap-3 text-sm">
                                        <div>
                                            <div class="text-gray-500 text-xs">Nama</div>
                                            <div class="font-medium text-gray-900">{{ $selectedItem->name }}</div>
                                        </div>
                                        <div>
                                            <div class="text-gray-500 text-xs">Kode</div>
                                            <div class="font-medium text-gray-900">{{ $selectedItem->item_code }}</div>
                                        </div>
                                        <div>
                                            <div class="text-gray-500 text-xs">Barcode</div>
                                            <div class="font-medium text-gray-900">{{ $selectedItem->barcode ?? '-' }}</div>
                                        </div>
                                        <div>
                                            <div class="text-gray-500 text-xs">Stok</div>
                                            <div class="font-medium text-gray-900">{{ $selectedItem->stock }}
                                                {{ $selectedItem->unit }}</div>
                                        </div>
                                        <div>
                                            <div class="text-gray-500 text-xs">Status Stok</div>
                                            <div class="font-medium text-gray-900">{!! $selectedItem->stock_status_badge !!}
                                            </div>
                                        </div>
                                        <div>
                                            <div class="text-gray-500 text-xs">Rak Saat Ini</div>
                                            <div class="font-medium text-gray-900">{{ $selectedItem->rack?->name ?? '-' }}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif

                        <!-- Quantity -->
                        <div>
                            <x-input-label for="quantity" value="Jumlah" />
                            <x-text-input wire:model="quantity" id="quantity" type="number" min="1"
                                class="mt-1 block w-full py-3 text-lg font-semibold" required
                                placeholder="Masukkan jumlah" />
                            <x-input-error :messages="$errors->get('quantity')" class="mt-2" />
                        </div>

                        <!-- Rack Selection -->
                        <div>
                            <x-input-label for="rack_id" :value="$type == 'in' ? 'Rak Tujuan' : 'Rak Asal'" />
                            <select wire:model="rack_id" id="rack_id"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-lg shadow-sm py-3"
                                required>
                                <option value="">-- Pilih Rak --</option>
                                @foreach($racks as $rack)
                                    @php
                                        $isFull = $rack->manual_full || $rack->status === 'full' || $rack->available_capacity <= 0;
                                        $isLowCapacity = !$isFull && $rack->available_capacity > 0 && $rack->available_capacity <= 10;
                                    @endphp
                                    <option value="{{ $rack->id }}" @if($type == 'in' && $isFull) disabled @endif @if($isFull)
                                    style="color: #dc2626; font-weight: bold;" @endif @if($isLowCapacity)
                                        style="color: #d97706;" @endif>
                                        {{ $rack->name }} ({{ $rack->rack_code }}) - {{ $rack->location }}
                                        @if($isFull)
                                            ⛔ RAK PENUH
                                        @elseif($isLowCapacity)
                                            ⚠️ Sisa {{ $rack->available_capacity }}
                                        @else
                                            ✓ Sisa {{ $rack->available_capacity }}
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
                                    <p class="mt-2 text-sm text-yellow-600 flex items-center">
                                        <i class="fas fa-tools mr-2"></i>Rak ini sedang maintenance.
                                    </p>
                                @elseif($isManualFull)
                                    <p class="mt-2 text-sm text-red-600 flex items-center">
                                        <i class="fas fa-ban mr-2"></i>Rak ditandai penuh secara manual.
                                    </p>
                                @elseif($isFull)
                                    <p class="mt-2 text-sm text-red-600 flex items-center">
                                        <i class="fas fa-exclamation-triangle mr-2"></i>Rak sudah penuh.
                                    </p>
                                @else
                                    <p class="mt-2 text-sm text-green-600 flex items-center">
                                        <i class="fas fa-check-circle mr-2"></i>Sisa kapasitas: {{ $availableCapacity }}
                                    </p>
                                @endif

                                @if(!$isMaintenance && !$isFull && $quantity && $availableCapacity < $quantity)
                                    <p class="mt-1 text-sm text-red-600 flex items-center">
                                        <i class="fas fa-exclamation-circle mr-2"></i>Kapasitas tidak cukup!
                                    </p>
                                @endif
                            @endif
                        </div>

                        <!-- Supplier (only for incoming) -->
                        @if($type == 'in')
                            <div>
                                <x-input-label for="supplier_id" value="Supplier (Opsional)" />
                                <select wire:model="supplier_id" id="supplier_id"
                                    class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-lg shadow-sm py-3">
                                    <option value="">-- Pilih Supplier --</option>
                                    @foreach($suppliers as $supplier)
                                        <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                                    @endforeach
                                </select>
                                <x-input-error :messages="$errors->get('supplier_id')" class="mt-2" />
                            </div>
                        @endif
                    </div>

                    <!-- Photo Section -->
                    <div class="mt-6">
                        <x-input-label value="Bukti Foto (Opsional)" class="mb-2" />

                        <div class="grid grid-cols-2 gap-3 mb-4">
                            <button type="button" onclick="openCamera()"
                                class="px-4 py-3 bg-blue-600 text-white rounded-xl hover:bg-blue-700 transition flex items-center justify-center">
                                <i class="fas fa-camera mr-2"></i>
                                Ambil Foto
                            </button>
                            <label
                                class="px-4 py-3 bg-gray-600 text-white rounded-xl hover:bg-gray-700 transition cursor-pointer flex items-center justify-center">
                                <i class="fas fa-upload mr-2"></i>
                                Upload
                                <input type="file" wire:model="photo" accept="image/*" class="hidden">
                            </label>
                        </div>

                        <!-- Camera Modal -->
                        <div id="cameraModal"
                            class="hidden fixed inset-0 bg-black bg-opacity-75 z-50 flex items-center justify-center p-4">
                            <div class="bg-white rounded-2xl w-full max-w-lg overflow-hidden">
                                <div class="flex justify-between items-center p-4 border-b">
                                    <h3 class="text-lg font-semibold">Ambil Foto</h3>
                                    <button type="button" onclick="closeCamera()"
                                        class="text-gray-500 hover:text-gray-700">
                                        <i class="fas fa-times text-xl"></i>
                                    </button>
                                </div>

                                <div class="p-4">
                                    <video id="camera" class="w-full rounded-lg bg-black" autoplay playsinline></video>
                                    <canvas id="canvas" class="hidden"></canvas>
                                </div>

                                <div class="flex gap-3 p-4 border-t">
                                    <button type="button" onclick="capturePhoto()"
                                        class="flex-1 px-4 py-3 bg-green-600 text-white rounded-xl hover:bg-green-700">
                                        <i class="fas fa-camera mr-2"></i>Ambil
                                    </button>
                                    <button type="button" onclick="closeCamera()"
                                        class="px-4 py-3 bg-gray-600 text-white rounded-xl hover:bg-gray-700">
                                        Batal
                                    </button>
                                </div>
                            </div>
                        </div>

                        <!-- Photo Preview -->
                        <div class="mt-4 flex flex-wrap gap-4">
                            @if ($photo)
                                <div class="relative">
                                    <img src="{{ $photo->temporaryUrl() }}"
                                        class="h-24 w-24 object-cover rounded-xl border-2 border-green-500">
                                    <button type="button" wire:click="$set('photo', null)"
                                        class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center hover:bg-red-600">
                                        <i class="fas fa-times text-xs"></i>
                                    </button>
                                </div>
                            @endif
                            @if ($capturedPhoto)
                                <div class="relative">
                                    <img src="{{ $capturedPhoto }}"
                                        class="h-24 w-24 object-cover rounded-xl border-2 border-green-500">
                                    <button type="button" wire:click="$set('capturedPhoto', null)"
                                        class="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center hover:bg-red-600">
                                        <i class="fas fa-times text-xs"></i>
                                    </button>
                                </div>
                            @endif
                        </div>
                        <x-input-error :messages="$errors->get('photo')" class="mt-2" />
                    </div>

                    <!-- Notes -->
                    <div class="mt-6">
                        <x-input-label for="notes" value="Catatan (Opsional)" />
                        <textarea wire:model="notes" id="notes" rows="3"
                            class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-lg shadow-sm"
                            placeholder="Tambahkan catatan jika diperlukan..."></textarea>
                        <x-input-error :messages="$errors->get('notes')" class="mt-2" />
                    </div>

                    <!-- Submit Button - Fixed on Mobile -->
                    <div class="mt-6 flex flex-col-reverse md:flex-row items-stretch md:items-center justify-end gap-3">
                        <x-secondary-button type="button" onclick="window.history.back()"
                            class="w-full md:w-auto justify-center py-3">
                            Batal
                        </x-secondary-button>
                        <button type="submit" wire:loading.attr="disabled"
                            class="w-full md:w-auto px-6 py-3 bg-gradient-to-r from-indigo-600 to-purple-600 text-white rounded-xl hover:from-indigo-700 hover:to-purple-700 focus:outline-none focus:ring-4 focus:ring-indigo-300 transition font-semibold disabled:opacity-50">
                            <span wire:loading.remove>
                                <i class="fas fa-save mr-2"></i>Simpan Transaksi
                            </span>
                            <span wire:loading>
                                <i class="fas fa-spinner fa-spin mr-2"></i>Menyimpan...
                            </span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    @push('scripts')
        <!-- QuaggaJS for barcode scanning -->
        <script src="https://cdn.jsdelivr.net/npm/@ericblade/quagga2@1.8.4/dist/quagga.min.js"></script>
        <style>
            #barcodeScanner video,
            #barcodeScanner canvas {
                width: 100% !important;
                height: 100% !important;
                object-fit: cover;
            }
        </style>

        <script>
            let photoStream = null;
            let quaggaRunning = false;
            let lastDetected = null;
            let detectCount = 0;
            let lastScanAt = 0;
            let detectedHandler = null;
            let processedHandler = null;
            let activeTrack = null;
            let torchOn = false;
            let selectedDeviceId = '';
            let cameraOptionsLoaded = false;

            // Barcode Scanner Functions
            function openBarcodeScanner() {
                const modal = document.getElementById('barcodeScannerModal');
                modal.classList.remove('hidden');
                lastDetected = null;
                detectCount = 0;
                lastScanAt = 0;
                loadCameraOptions().finally(() => initQuagga());
            }

            function initQuagga() {
                if (typeof Quagga === 'undefined') {
                    console.log('Quagga not loaded, using manual input only');
                    return;
                }

                if (quaggaRunning) {
                    return;
                }

                const constraints = {
                    facingMode: { ideal: "environment" },
                    focusMode: "continuous",
                    exposureMode: "continuous",
                    width: { min: 640, ideal: 1280, max: 1920 },
                    height: { min: 480, ideal: 720, max: 1080 }
                };

                if (selectedDeviceId) {
                    constraints.deviceId = { exact: selectedDeviceId };
                }

                startQuagga(constraints);
            }

            function startQuagga(constraints, triedFallback = false) {
                Quagga.init({
                    inputStream: {
                        name: "Live",
                        type: "LiveStream",
                        target: document.getElementById('barcodeScanner'),
                        constraints: constraints
                    },
                    decoder: {
                        readers: [
                            "ean_reader",
                            "ean_8_reader",
                            "upc_reader",
                            "upc_e_reader",
                            "code_128_reader",
                            "code_39_reader",
                            "codabar_reader"
                        ],
                        multiple: false
                    },
                    locate: true,
                    locator: {
                        patchSize: "medium",
                        halfSample: true
                    },
                    numOfWorkers: navigator.hardwareConcurrency || 4,
                    frequency: 20,
                    debug: false
                }, function (err) {
                    if (err) {
                        if (!triedFallback && !selectedDeviceId) {
                            const fallback = { ...constraints, facingMode: { ideal: "user" } };
                            startQuagga(fallback, true);
                            return;
                        }
                        console.error('Quagga init error:', err);
                        alert('Tidak dapat mengakses kamera. Pastikan izin kamera diberikan.');
                        return;
                    }
                    quaggaRunning = true;
                    Quagga.start();
                    setupCameraControls();

                    if (!processedHandler) {
                        processedHandler = function (result) {
                            const drawingCtx = Quagga.canvas?.ctx?.overlay;
                            const drawingCanvas = Quagga.canvas?.dom?.overlay;
                            if (!drawingCtx || !drawingCanvas) {
                                return;
                            }
                            drawingCtx.clearRect(0, 0, drawingCanvas.width, drawingCanvas.height);
                            if (result && result.boxes) {
                                result.boxes.filter(box => box !== result.box).forEach((box) => {
                                    Quagga.ImageDebug.drawPath(box, { x: 0, y: 1 }, drawingCtx, {
                                        color: 'rgba(0, 255, 255, 0.4)',
                                        lineWidth: 2
                                    });
                                });
                            }
                            if (result && result.box) {
                                Quagga.ImageDebug.drawPath(result.box, { x: 0, y: 1 }, drawingCtx, {
                                    color: '#00FF00',
                                    lineWidth: 3
                                });
                            }
                        };
                        Quagga.onProcessed(processedHandler);
                    }

                    if (!detectedHandler) {
                        detectedHandler = function (result) {
                            const code = result?.codeResult?.code;
                            if (!code || code.length < 4) {
                                return;
                            }

                            // More lenient error threshold for webcams
                            if (result?.codeResult?.decodedCodes?.length) {
                                const errors = result.codeResult.decodedCodes
                                    .map((d) => typeof d.error === 'number' ? d.error : 1)
                                    .filter((e) => e !== null && !isNaN(e));
                                const avgError = errors.length ? errors.reduce((a, b) => a + b, 0) / errors.length : 0;
                                // Increased threshold for webcam (0.18 instead of 0.25)
                                if (avgError > 0.18) {
                                    return;
                                }
                            }

                            // Check confidence score if available
                            const format = result?.codeResult?.format;
                            console.log('Detected:', code, 'Format:', format);

                            if (code === lastDetected) {
                                detectCount += 1;
                            } else {
                                lastDetected = code;
                                detectCount = 1;
                            }

                            const now = Date.now();
                            // Single detection enough, reduced debounce to 300ms
                            if (detectCount >= 1 && now - lastScanAt > 300) {
                                lastScanAt = now;
                                playBeep();
                                @this.scanBarcode(code);
                            }
                        };
                        Quagga.onDetected(detectedHandler);
                    }
                });
            }

            async function loadCameraOptions() {
                if (cameraOptionsLoaded) {
                    return;
                }
                cameraOptionsLoaded = true;

                const wrapper = document.getElementById('cameraSelectWrapper');
                const select = document.getElementById('barcodeCameraSelect');
                if (!wrapper || !select) {
                    return;
                }

                let devices = [];
                try {
                    if (Quagga?.CameraAccess?.enumerateVideoDevices) {
                        devices = await Quagga.CameraAccess.enumerateVideoDevices();
                    } else if (navigator.mediaDevices?.enumerateDevices) {
                        const all = await navigator.mediaDevices.enumerateDevices();
                        devices = all.filter((d) => d.kind === 'videoinput');
                    }
                } catch (e) {
                    return;
                }

                if (!devices || devices.length <= 1) {
                    return;
                }

                wrapper.classList.remove('hidden');
                wrapper.classList.add('flex');
                devices.forEach((device, idx) => {
                    const option = document.createElement('option');
                    option.value = device.deviceId || '';
                    option.textContent = device.label || `Kamera ${idx + 1}`;
                    select.appendChild(option);
                });
            }

            function switchBarcodeCamera(deviceId) {
                selectedDeviceId = deviceId || '';
                if (!quaggaRunning) {
                    return;
                }
                closeBarcodeScanner();
                const modal = document.getElementById('barcodeScannerModal');
                modal.classList.remove('hidden');
                initQuagga();
            }

            function setupCameraControls() {
                if (!Quagga.CameraAccess) {
                    return;
                }
                activeTrack = Quagga.CameraAccess.getActiveTrack();
                if (!activeTrack || !activeTrack.getCapabilities) {
                    return;
                }
                const caps = activeTrack.getCapabilities();

                const torchBtn = document.getElementById('torchToggle');
                if (caps.torch && torchBtn) {
                    torchBtn.classList.remove('hidden');
                }

                const zoomWrapper = document.getElementById('zoomControl');
                const zoomRange = document.getElementById('zoomRange');
                if (caps.zoom && zoomWrapper && zoomRange) {
                    zoomWrapper.classList.remove('hidden');
                    zoomRange.min = caps.zoom.min ?? 1;
                    zoomRange.max = caps.zoom.max ?? 3;
                    zoomRange.step = caps.zoom.step ?? 0.1;
                    zoomRange.value = caps.zoom.min ?? 1;
                    zoomRange.oninput = () => applyZoom(parseFloat(zoomRange.value));
                }
            }

            function applyZoom(value) {
                if (!activeTrack || !activeTrack.applyConstraints) {
                    return;
                }
                activeTrack.applyConstraints({ advanced: [{ zoom: value }] }).catch(() => { });
            }

            function toggleTorch() {
                if (!activeTrack || !activeTrack.applyConstraints) {
                    return;
                }
                torchOn = !torchOn;
                activeTrack.applyConstraints({ advanced: [{ torch: torchOn }] }).catch(() => { });
            }

            function closeBarcodeScanner() {
                const modal = document.getElementById('barcodeScannerModal');

                if (quaggaRunning && typeof Quagga !== 'undefined') {
                    if (detectedHandler) {
                        Quagga.offDetected(detectedHandler);
                        detectedHandler = null;
                    }
                    if (processedHandler) {
                        Quagga.offProcessed(processedHandler);
                        processedHandler = null;
                    }
                    Quagga.stop();
                    quaggaRunning = false;
                }

                modal.classList.add('hidden');
                lastDetected = null;
                detectCount = 0;
                lastScanAt = 0;
                activeTrack = null;
                torchOn = false;
                cameraOptionsLoaded = false;
            }

            function submitManualBarcode() {
                const input = document.getElementById('manualBarcodeInput');
                const barcode = input.value.trim();

                if (barcode) {
                    closeBarcodeScanner();
                    @this.scanBarcode(barcode);
                    input.value = '';
                }
            }

            function playBeep() {
                try {
                    const audioContext = new (window.AudioContext || window.webkitAudioContext)();
                    const oscillator = audioContext.createOscillator();
                    const gainNode = audioContext.createGain();

                    oscillator.connect(gainNode);
                    gainNode.connect(audioContext.destination);

                    oscillator.frequency.value = 1000;
                    oscillator.type = 'sine';
                    gainNode.gain.value = 0.3;

                    oscillator.start();
                    oscillator.stop(audioContext.currentTime + 0.15);
                } catch (e) {
                    console.log('Beep not supported');
                }
            }

            // Photo Camera Functions
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
                    .then(function (stream) {
                        photoStream = stream;
                        video.srcObject = stream;
                        video.play();
                    })
                    .catch(function (err) {
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

                const imageData = canvas.toDataURL('image/png');

                @this.set('capturedPhoto', imageData);
                @this.set('photo', null);

                closeCamera();
            }

            function closeCamera() {
                if (photoStream) {
                    photoStream.getTracks().forEach(track => track.stop());
                    photoStream = null;
                }
                document.getElementById('cameraModal').classList.add('hidden');
            }

            // Listen for barcode input from external scanner
            let barcodeBuffer = '';
            let barcodeTimeout = null;

            document.addEventListener('keydown', function (e) {
                // Only capture if not focused on an input
                const activeElement = document.activeElement;
                const isInput = activeElement.tagName === 'INPUT' || activeElement.tagName === 'TEXTAREA' || activeElement.tagName === 'SELECT';

                if (!isInput) {
                    // Reset timeout
                    clearTimeout(barcodeTimeout);

                    if (e.key === 'Enter' && barcodeBuffer.length > 3) {
                        @this.scanBarcode(barcodeBuffer);
                        playBeep();
                        barcodeBuffer = '';
                    } else if (e.key.length === 1) {
                        barcodeBuffer += e.key;

                        // Clear buffer after 50ms of no input (scanner is fast)
                        barcodeTimeout = setTimeout(() => {
                            barcodeBuffer = '';
                        }, 50);
                    }
                }
            });

            // Livewire event listeners
            document.addEventListener('livewire:init', () => {
                Livewire.on('scan-success', (event) => {
                    playBeep();
                    closeBarcodeScanner();
                });

                Livewire.on('scan-error', (event) => {
                    alert(event.message || 'Barcode tidak ditemukan');
                    lastDetected = null;
                    detectCount = 0;
                    lastScanAt = 0;
                });
            });
        </script>
    @endpush
</div>