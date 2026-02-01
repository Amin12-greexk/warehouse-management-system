<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            📊 Prediksi Permintaan Barang
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">

            {{-- Alert Messages --}}
            @if (session()->has('message'))
                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg shadow-sm">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <svg class="h-5 w-5 text-green-500" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                        <div class="ml-3">
                            <p class="text-sm font-medium text-green-800">{{ session('message') }}</p>
                        </div>
                    </div>
                </div>
            @endif

            @if (session()->has('error'))
                <div class="bg-red-50 border-l-4 border-red-500 p-4 rounded-lg shadow-sm">
                    <div class="flex items-center">
                        <div class="flex-shrink-0">
                            <svg class="h-5 w-5 text-red-500" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 9.586 8.707 8.293z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                        <div class="ml-3">
                            <p class="text-sm font-medium text-red-800">{{ session('error') }}</p>
                        </div>
                    </div>
                </div>
            @endif

            {{-- Statistics Dashboard Cards --}}
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
                {{-- Total Items Forecasted --}}
                <div class="bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl shadow-lg p-6 text-white">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-blue-100 text-sm font-medium">Total Barang</p>
                            <p class="text-3xl font-bold mt-2">{{ number_format($statistics['totalItems']) }}</p>
                            <p class="text-blue-100 text-xs mt-1">yang diprediksi</p>
                        </div>
                        <div class="bg-blue-400 bg-opacity-50 rounded-full p-3">
                            <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20">
                                <path
                                    d="M5 3a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2V5a2 2 0 00-2-2H5zM5 11a2 2 0 00-2 2v2a2 2 0 002 2h2a2 2 0 002-2v-2a2 2 0 00-2-2H5zM11 5a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2V5zM11 13a2 2 0 012-2h2a2 2 0 012 2v2a2 2 0 01-2 2h-2a2 2 0 01-2-2v-2z" />
                            </svg>
                        </div>
                    </div>
                </div>

                {{-- Average Accuracy --}}
                <div class="bg-gradient-to-br from-green-500 to-green-600 rounded-xl shadow-lg p-6 text-white">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-green-100 text-sm font-medium">Akurasi Rata-rata</p>
                            <p class="text-3xl font-bold mt-2">{{ number_format($statistics['avgAccuracy'], 1) }}%</p>
                            <p class="text-green-100 text-xs mt-1">tingkat ketepatan</p>
                        </div>
                        <div class="bg-green-400 bg-opacity-50 rounded-full p-3">
                            <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M6.267 3.455a3.066 3.066 0 001.745-.723 3.066 3.066 0 013.976 0 3.066 3.066 0 001.745.723 3.066 3.066 0 012.812 2.812c.051.643.304 1.254.723 1.745a3.066 3.066 0 010 3.976 3.066 3.066 0 00-.723 1.745 3.066 3.066 0 01-2.812 2.812 3.066 3.066 0 00-1.745.723 3.066 3.066 0 01-3.976 0 3.066 3.066 0 00-1.745-.723 3.066 3.066 0 01-2.812-2.812 3.066 3.066 0 00-.723-1.745 3.066 3.066 0 010-3.976 3.066 3.066 0 00.723-1.745 3.066 3.066 0 012.812-2.812zm7.44 5.252a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                    </div>
                </div>

                {{-- Top Item --}}
                <div class="bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl shadow-lg p-6 text-white">
                    <div class="flex items-center justify-between">
                        <div class="flex-1">
                            <p class="text-purple-100 text-sm font-medium">Permintaan Tertinggi</p>
                            @if($statistics['topItem'])
                                <p class="text-lg font-bold mt-2 truncate">{{ $statistics['topItem']->item->name ?? '-' }}
                                </p>
                                <p class="text-purple-100 text-xs mt-1">
                                    {{ number_format($statistics['topItem']->predicted_qty) }}
                                    {{ $statistics['topItem']->item->unit ?? 'unit' }}</p>
                            @else
                                <p class="text-lg font-bold mt-2">-</p>
                                <p class="text-purple-100 text-xs mt-1">Belum ada data</p>
                            @endif
                        </div>
                        <div class="bg-purple-400 bg-opacity-50 rounded-full p-3">
                            <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20">
                                <path d="M9 2a1 1 0 000 2h2a1 1 0 100-2H9z" />
                                <path fill-rule="evenodd"
                                    d="M4 5a2 2 0 012-2 3 3 0 003 3h2a3 3 0 003-3 2 2 0 012 2v11a2 2 0 01-2 2H6a2 2 0 01-2-2V5zm9.707 5.707a1 1 0 00-1.414-1.414L9 12.586l-1.293-1.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                    </div>
                </div>

                {{-- Last Run --}}
                <div class="bg-gradient-to-br from-orange-500 to-orange-600 rounded-xl shadow-lg p-6 text-white">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-orange-100 text-sm font-medium">Terakhir Diupdate</p>
                            <p class="text-2xl font-bold mt-2">{{ $statistics['lastRun'] }}</p>
                            <p class="text-orange-100 text-xs mt-1">waktu generate</p>
                        </div>
                        <div class="bg-orange-400 bg-opacity-50 rounded-full p-3">
                            <svg class="w-8 h-8" fill="currentColor" viewBox="0 0 20 20">
                                <path fill-rule="evenodd"
                                    d="M10 18a8 8 0 100-16 8 8 0 000 16zm1-12a1 1 0 10-2 0v4a1 1 0 00.293.707l2.828 2.829a1 1 0 101.415-1.415L11 9.586V6z"
                                    clip-rule="evenodd" />
                            </svg>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Generate Forecast Section --}}
            <div class="bg-white rounded-xl shadow-lg overflow-visible">
                <div class="bg-gradient-to-r from-indigo-500 to-purple-600 px-6 py-4">
                    <h3 class="text-lg font-bold text-white flex items-center">
                        <svg class="w-6 h-6 mr-2" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd"
                                d="M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z"
                                clip-rule="evenodd" />
                        </svg>
                        Buat Prediksi Baru
                    </h3>
                    <p class="text-indigo-100 text-sm mt-1">Sistem akan menghitung prediksi permintaan barang untuk
                        beberapa bulan ke depan</p>
                </div>

                <div class="p-6">
                    {{-- Info Box --}}
                    <div class="bg-blue-50 border-l-4 border-blue-400 p-4 mb-6 rounded">
                        <div class="flex">
                            <div class="flex-shrink-0">
                                <svg class="h-5 w-5 text-blue-400" fill="currentColor" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd"
                                        d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7-4a1 1 0 11-2 0 1 1 0 012 0zM9 9a1 1 0 000 2v3a1 1 0 001 1h1a1 1 0 100-2v-3a1 1 0 00-1-1H9z"
                                        clip-rule="evenodd" />
                                </svg>
                            </div>
                            <div class="ml-3 text-sm text-blue-700">
                                <p class="font-semibold">Cara Menggunakan:</p>
                                <ul class="mt-2 space-y-1 list-disc list-inside">
                                    <li><strong>Prediksi untuk berapa bulan?</strong> - Pilih berapa bulan ke depan yang
                                        ingin diprediksi (3, 6, atau 12 bulan)</li>
                                    <li><strong>Pilih Barang</strong> - Forecast dibuat hanya untuk barang yang dipilih,
                                        grafik otomatis mengikuti</li>
                                    <li><strong>Metode Perhitungan</strong> - Pilih "Hybrid" agar sistem memilih metode
                                        berdasarkan panjang data</li>
                                    <li>Klik tombol <strong>"Buat Prediksi Item"</strong> dan tunggu proses selesai</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="mb-6">
                        <label class="block text-sm font-semibold text-gray-700 mb-2">
                            Pilih / cari barang
                        </label>
                        <div class="relative" data-combobox>
                            <div class="flex gap-2">
                                <input wire:model.debounce.300ms="generateItemInput" data-combobox-input
                                    autocomplete="off"
                                    class="w-full px-5 py-3 text-lg border-2 border-gray-300 rounded-lg focus:border-indigo-500 focus:ring focus:ring-indigo-200 transition"
                                    placeholder="Ketik kode atau nama barang..." @if($isGenerating) disabled @endif />
                                <button type="button" data-combobox-toggle
                                    class="shrink-0 px-4 py-3 text-white bg-black border-2 border-black rounded-lg hover:bg-gray-900 focus:outline-none focus:ring focus:ring-gray-300">
                                    ▼
                                </button>
                            </div>
                            <div data-combobox-list
                                class="absolute z-20 mt-2 w-full bg-white border border-gray-200 rounded-lg shadow-lg max-h-64 overflow-auto hidden">
                                @foreach($generateItems as $item)
                                    <button type="button" data-combobox-item
                                        data-value="{{ $item->item_code }} - {{ $item->name }}"
                                        class="w-full text-left px-4 py-2 text-sm hover:bg-indigo-50">
                                        <span class="font-semibold">{{ $item->item_code }}</span> - {{ $item->name }}
                                    </button>
                                @endforeach
                                <div data-combobox-hint class="px-4 py-2 text-xs text-gray-500">
                                    Ketik untuk melihat item lainnya.
                                </div>
                                <div data-combobox-empty class="px-4 py-2 text-sm text-gray-500 hidden">
                                    Tidak ada hasil
                                </div>
                            </div>
                        </div>
                        <p class="mt-2 text-xs text-gray-500">Contoh: C076BDR009 - Mars Kepang Doraemon 36*20pc</p>
                    </div>

                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        {{-- Horizon --}}
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-2">
                                📅 Prediksi untuk berapa bulan?
                            </label>
                            <select wire:model="generateHorizon"
                                class="w-full px-4 py-3 text-lg border-2 border-gray-300 rounded-lg focus:border-indigo-500 focus:ring focus:ring-indigo-200 transition"
                                @if($isGenerating) disabled @endif>
                                <option value="3">3 bulan ke depan</option>
                                <option value="6">6 bulan ke depan</option>
                                <option value="12">12 bulan ke depan</option>
                            </select>
                        </div>

                        {{-- Method --}}
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-2">
                                🔧 Metode Perhitungan
                            </label>
                            <select wire:model="generateMethod"
                                class="w-full px-4 py-3 text-lg border-2 border-gray-300 rounded-lg focus:border-indigo-500 focus:ring focus:ring-indigo-200 transition"
                                @if($isGenerating) disabled @endif>
                                <option value="hybrid">Hybrid (Disarankan)</option>
                                <option value="auto">Auto (uji akurasi)</option>
                                <option value="seasonal">Seasonal (Ada pola musiman)</option>
                                <option value="trend">Trend (Ada tren naik/turun)</option>
                                <option value="simple">Simple (Data terbatas)</option>
                            </select>
                        </div>

                        {{-- Generate Button --}}
                        <div>
                            <label class="block text-sm font-semibold text-gray-700 mb-2">
                                &nbsp;
                            </label>
                            <button wire:click="generateForecasts" wire:loading.attr="disabled"
                                class="w-full px-6 py-3 text-lg font-bold text-white bg-gradient-to-r from-indigo-600 to-purple-600 rounded-lg hover:from-indigo-700 hover:to-purple-700 focus:outline-none focus:ring-4 focus:ring-indigo-300 transition disabled:opacity-50 disabled:cursor-not-allowed shadow-lg">
                                <span wire:loading.remove wire:target="generateForecasts"
                                    class="flex items-center justify-center">
                                    <svg class="w-5 h-5 mr-2" fill="currentColor" viewBox="0 0 20 20">
                                        <path fill-rule="evenodd"
                                            d="M11.3 1.046A1 1 0 0112 2v5h4a1 1 0 01.82 1.573l-7 10A1 1 0 018 18v-5H4a1 1 0 01-.82-1.573l7-10a1 1 0 011.12-.38z"
                                            clip-rule="evenodd" />
                                    </svg>
                                    Buat Prediksi Item
                                </span>
                                <span wire:loading wire:target="generateForecasts"
                                    class="flex items-center justify-center">
                                    <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white" fill="none"
                                        viewBox="0 0 24 24">
                                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                                            stroke-width="4"></circle>
                                        <path class="opacity-75" fill="currentColor"
                                            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                                        </path>
                                    </svg>
                                    Sedang Memproses...
                                </span>
                            </button>
                        </div>
                    </div>

                    {{-- Progress Bar with Animation --}}
                    <div wire:loading wire:target="generateForecasts" class="mt-6">
                        <div
                            class="bg-gradient-to-r from-indigo-50 to-purple-50 border-2 border-indigo-200 rounded-xl p-6 shadow-inner">
                            <div class="flex items-center justify-between mb-3">
                                <span class="text-base font-bold text-indigo-700">Sedang Membuat Prediksi</span>
                                <span class="text-sm font-semibold text-purple-600 animate-pulse">Processing...</span>
                            </div>

                            <!-- Animated Progress Bar -->
                            <div class="relative w-full bg-gray-200 rounded-full h-6 overflow-hidden shadow-inner mb-4">
                                <div
                                    class="absolute inset-0 bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 h-6 rounded-full animate-progress-loading">
                                </div>
                                <div class="absolute inset-0 flex items-center justify-center">
                                    <span class="text-xs font-bold text-white z-10 drop-shadow">Calculating...</span>
                                </div>
                            </div>

                            <!-- Loading Steps -->
                            <div class="space-y-2">
                                <div class="flex items-center text-sm text-indigo-600">
                                    <svg class="animate-spin h-4 w-4 mr-2" fill="none" viewBox="0 0 24 24">
                                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                                            stroke-width="4"></circle>
                                        <path class="opacity-75" fill="currentColor"
                                            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                                        </path>
                                    </svg>
                                    <span class="animate-pulse">Mengumpulkan data historis semua barang...</span>
                                </div>
                                <div class="flex items-center text-sm text-purple-600">
                                    <svg class="animate-spin h-4 w-4 mr-2" fill="none" viewBox="0 0 24 24">
                                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                                            stroke-width="4"></circle>
                                        <path class="opacity-75" fill="currentColor"
                                            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                                        </path>
                                    </svg>
                                    <span class="animate-pulse">Menghitung prediksi dengan algoritma
                                        forecasting...</span>
                                </div>
                                <div class="flex items-center text-sm text-pink-600">
                                    <svg class="animate-spin h-4 w-4 mr-2" fill="none" viewBox="0 0 24 24">
                                        <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor"
                                            stroke-width="4"></circle>
                                        <path class="opacity-75" fill="currentColor"
                                            d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z">
                                        </path>
                                    </svg>
                                    <span class="animate-pulse">Menguji akurasi dan menyimpan hasil...</span>
                                </div>
                            </div>

                            <div class="mt-4 p-3 bg-yellow-50 border-l-4 border-yellow-400 rounded">
                                <p class="text-xs text-yellow-800">
                                    <strong>⏱️ Perkiraan waktu:</strong> Proses ini membutuhkan 10-30 detik tergantung
                                    jumlah barang. Mohon jangan tutup atau refresh halaman ini.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Chart Section --}}
            <div class="bg-white rounded-xl shadow-lg overflow-hidden">
                <div class="bg-gradient-to-r from-blue-500 to-cyan-600 px-6 py-4">
                    <h3 class="text-lg font-bold text-white flex items-center">
                        <svg class="w-6 h-6 mr-2" fill="currentColor" viewBox="0 0 20 20">
                            <path
                                d="M2 11a1 1 0 011-1h2a1 1 0 011 1v5a1 1 0 01-1 1H3a1 1 0 01-1-1v-5zM8 7a1 1 0 011-1h2a1 1 0 011 1v9a1 1 0 01-1 1H9a1 1 0 01-1-1V7zM14 4a1 1 0 011-1h2a1 1 0 011 1v12a1 1 0 01-1 1h-2a1 1 0 01-1-1V4z" />
                        </svg>
                        Grafik Perbandingan Prediksi
                    </h3>
                    <p class="text-blue-100 text-sm mt-1">Bandingkan prediksi dengan data tahun lalu untuk melihat tren
                    </p>
                </div>

                <div class="p-6">
                    @php
                        $selectedItem = $generateItems->firstWhere('id', $generateItemId);
                    @endphp

                    @if($generateItemId)
                        <div class="bg-gray-50 rounded-lg p-6 border-2 border-gray-200" wire:init="emitChartData">
                            <div class="mb-4 flex items-center justify-between">
                                <h4 class="text-lg font-semibold text-gray-800">
                                    Grafik Perbandingan
                                    @if($selectedItem)
                                        <span class="text-sm text-gray-500">- {{ $selectedItem->name }}
                                            ({{ $selectedItem->item_code }})</span>
                                    @endif
                                </h4>
                                <div class="flex gap-4">
                                    <div class="flex items-center">
                                        <div class="w-4 h-4 bg-blue-500 rounded mr-2"></div>
                                        <span class="text-sm text-gray-600">Prediksi</span>
                                    </div>
                                    <div class="flex items-center">
                                        <div class="w-4 h-4 bg-gray-400 rounded mr-2"></div>
                                        <span class="text-sm text-gray-600">Data Tahun Lalu</span>
                                    </div>
                                </div>
                            </div>
                            <div wire:ignore>
                                <canvas id="forecastComparisonChart" height="100"></canvas>
                            </div>
                            <p class="mt-4 text-sm text-gray-600 bg-yellow-50 border-l-4 border-yellow-400 p-3 rounded">
                                <strong>💡 Cara Membaca:</strong> Garis biru menunjukkan prediksi permintaan untuk 12 bulan
                                ke depan.
                                Garis abu-abu menunjukkan data aktual di bulan yang sama tahun lalu sebagai pembanding.
                            </p>
                        </div>
                    @else
                        <div class="bg-gray-50 rounded-lg p-12 text-center border-2 border-dashed border-gray-300">
                            <svg class="mx-auto h-12 w-12 text-gray-400" fill="none" stroke="currentColor"
                                viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z" />
                            </svg>
                            <p class="mt-2 text-gray-500">Pilih barang pada bagian prediksi untuk menampilkan grafik</p>
                        </div>
                    @endif
                </div>
            </div>
        </div>

    </div>
</div>

@push('scripts')
    <style>
        @keyframes progress-loading {
            0% {
                transform: translateX(-100%);
            }

            50% {
                transform: translateX(0%);
            }

            100% {
                transform: translateX(100%);
            }
        }

        .animate-progress-loading {
            animation: progress-loading 2s ease-in-out infinite;
        }
    </style>

    <script>
        let forecastComparisonChart = null;

        function renderForecastChart(payload) {
            const ctx = document.getElementById('forecastComparisonChart');
            if (!ctx) {
                console.log('Canvas element not found');
                return;
            }

            // Check if Chart.js is loaded
            if (typeof Chart === 'undefined') {
                console.error('Chart.js is not loaded');
                return;
            }

            const labels = payload.labels || [];
            const forecast = payload.forecast || [];
            const lastYear = payload.lastYear || [];

            console.log('Rendering chart with data:', { labels, forecast, lastYear });

            const forecastLabel = payload.mode === 'historical'
                ? 'Data Aktual (qty_out)'
                : 'Prediksi Permintaan';

            const data = {
                labels: labels,
                datasets: [
                    {
                        label: forecastLabel,
                        data: forecast,
                        borderColor: '#3b82f6',
                        backgroundColor: 'rgba(59, 130, 246, 0.1)',
                        tension: 0.4,
                        fill: true,
                        borderWidth: 3,
                        pointBackgroundColor: '#3b82f6',
                        pointBorderColor: '#fff',
                        pointBorderWidth: 2,
                        pointRadius: 5,
                        pointHoverRadius: 7,
                    },
                    {
                        label: 'Data Tahun Lalu (Aktual)',
                        data: lastYear,
                        borderColor: '#9ca3af',
                        backgroundColor: 'rgba(156, 163, 175, 0.1)',
                        tension: 0.4,
                        fill: true,
                        borderWidth: 2,
                        pointBackgroundColor: '#9ca3af',
                        pointBorderColor: '#fff',
                        pointBorderWidth: 2,
                        pointRadius: 4,
                        pointHoverRadius: 6,
                        borderDash: [5, 5],
                    }
                ]
            };

            const config = {
                type: 'line',
                data: data,
                options: {
                    responsive: true,
                    maintainAspectRatio: true,
                    plugins: {
                        legend: {
                            position: 'top',
                            labels: {
                                usePointStyle: true,
                                padding: 15,
                                font: {
                                    size: 13,
                                    weight: 'bold'
                                }
                            }
                        },
                        tooltip: {
                            mode: 'index',
                            intersect: false,
                            backgroundColor: 'rgba(0, 0, 0, 0.8)',
                            padding: 12,
                            titleFont: {
                                size: 14,
                                weight: 'bold'
                            },
                            bodyFont: {
                                size: 13
                            },
                            callbacks: {
                                label: function (context) {
                                    let label = context.dataset.label || '';
                                    if (label) {
                                        label += ': ';
                                    }
                                    label += new Intl.NumberFormat('id-ID').format(context.parsed.y) + ' unit';
                                    return label;
                                }
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            grid: {
                                color: 'rgba(0, 0, 0, 0.05)'
                            },
                            ticks: {
                                font: {
                                    size: 12
                                },
                                callback: function (value) {
                                    return new Intl.NumberFormat('id-ID').format(value);
                                }
                            }
                        },
                        x: {
                            grid: {
                                color: 'rgba(0, 0, 0, 0.05)'
                            },
                            ticks: {
                                font: {
                                    size: 12
                                }
                            }
                        }
                    },
                    interaction: {
                        mode: 'nearest',
                        axis: 'x',
                        intersect: false
                    }
                }
            };

            if (forecastComparisonChart) {
                forecastComparisonChart.destroy();
            }

            forecastComparisonChart = new Chart(ctx, config);
        }

        function registerForecastListener() {
            if (window.__forecastListenerRegistered || !window.Livewire) {
                return;
            }

            window.__forecastListenerRegistered = true;
            Livewire.on('forecast-chart-updated', (event) => {
                const data = event?.data ?? event?.[0]?.data ?? event?.[0] ?? event ?? {};
                renderForecastChart(data);
            });
        }

        if (window.Livewire) {
            registerForecastListener();
        }

        document.addEventListener('livewire:init', registerForecastListener);

        function initForecastComboboxes() {
            document.querySelectorAll('[data-combobox]').forEach((box) => {
                if (box.dataset.comboboxReady === '1') {
                    return;
                }
                box.dataset.comboboxReady = '1';

                const input = box.querySelector('[data-combobox-input]');
                const toggle = box.querySelector('[data-combobox-toggle]');
                const list = box.querySelector('[data-combobox-list]');
                const hint = box.querySelector('[data-combobox-hint]');
                const empty = box.querySelector('[data-combobox-empty]');
                const items = Array.from(box.querySelectorAll('[data-combobox-item]'));
                const maxVisible = 30;

                if (!input || !toggle || !list) {
                    return;
                }

                const open = () => list.classList.remove('hidden');
                const close = () => list.classList.add('hidden');
                const filter = () => {
                    const query = (input.value || '').trim().toLowerCase();
                    let visible = 0;
                    items.forEach((item) => {
                        const value = (item.dataset.value || '').toLowerCase();
                        const match = query === ''
                            ? visible < maxVisible
                            : value.includes(query);
                        item.classList.toggle('hidden', !match);
                        if (match) {
                            visible++;
                        }
                    });
                    if (hint) {
                        hint.classList.toggle('hidden', query !== '');
                    }
                    if (empty) {
                        empty.classList.toggle('hidden', visible !== 0);
                    }
                };

                input.addEventListener('focus', () => {
                    filter();
                    open();
                });
                input.addEventListener('input', () => {
                    filter();
                    open();
                });
                toggle.addEventListener('click', () => {
                    if (list.classList.contains('hidden')) {
                        filter();
                        open();
                        input.focus();
                    } else {
                        close();
                    }
                });
                items.forEach((item) => {
                    item.addEventListener('click', () => {
                        input.value = item.dataset.value || '';
                        input.dispatchEvent(new Event('input', { bubbles: true }));
                        close();
                    });
                });
                document.addEventListener('click', (event) => {
                    if (!box.contains(event.target)) {
                        close();
                    }
                });
            });
        }

        document.addEventListener('DOMContentLoaded', initForecastComboboxes);
        document.addEventListener('livewire:init', () => {
            initForecastComboboxes();
            Livewire.hook('message.processed', () => {
                initForecastComboboxes();
            });
        });
    </script>
@endpush
</div>