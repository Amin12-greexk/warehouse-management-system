<div wire:init="emitChartData">
    <x-slot name="header">
        <div class="flex items-center justify-between">
            <div>
                <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                    📊 Prediksi Permintaan Barang
                </h2>
                <p class="mt-1 text-sm text-gray-600">Lihat dan buat prediksi permintaan barang ke depan</p>
            </div>
        </div>
    </x-slot>

    <div class="py-8 bg-gradient-to-br from-gray-50 via-blue-50 to-purple-50 min-h-screen">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">

            {{-- Alert Messages --}}
            @if (session()->has('message'))
                <div class="bg-green-50 border-l-4 border-green-500 p-4 rounded-lg shadow-sm">
                    <div class="flex items-center">
                        <i class="fas fa-check-circle text-green-500 mr-3"></i>
                        <p class="text-sm font-medium text-green-800">{{ session('message') }}</p>
                    </div>
                </div>
            @endif

            @if (session()->has('error'))
                <div class="bg-red-50 border-l-4 border-red-500 p-4 rounded-lg shadow-sm">
                    <div class="flex items-center">
                        <i class="fas fa-times-circle text-red-500 mr-3"></i>
                        <p class="text-sm font-medium text-red-800">{{ session('error') }}</p>
                    </div>
                </div>
            @endif

            {{-- Quick Stats Cards --}}
            <div class="grid grid-cols-2 md:grid-cols-4 gap-4">
                <div class="bg-white rounded-xl shadow-sm p-5 border">
                    <div class="flex items-center space-x-3">
                        <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center">
                            <i class="fas fa-box text-blue-600"></i>
                        </div>
                        <div>
                            <p class="text-xs text-gray-500">Barang Diprediksi</p>
                            <p class="text-xl font-bold text-gray-900">{{ number_format($statistics['totalItems']) }}</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-sm p-5 border">
                    <div class="flex items-center space-x-3">
                        <div class="w-10 h-10 bg-green-100 rounded-lg flex items-center justify-center">
                            <i class="fas fa-bullseye text-green-600"></i>
                        </div>
                        <div>
                            <p class="text-xs text-gray-500">Akurasi Rata-rata</p>
                            <p class="text-xl font-bold text-green-600">{{ number_format($statistics['avgAccuracy'], 1) }}%</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-sm p-5 border">
                    <div class="flex items-center space-x-3">
                        <div class="w-10 h-10 bg-purple-100 rounded-lg flex items-center justify-center">
                            <i class="fas fa-crown text-purple-600"></i>
                        </div>
                        <div>
                            <p class="text-xs text-gray-500">Permintaan Tertinggi</p>
                            <p class="text-sm font-bold text-gray-900 truncate max-w-24">
                                {{ $statistics['topItem']->item->name ?? '-' }}
                            </p>
                        </div>
                    </div>
                </div>
                <div class="bg-white rounded-xl shadow-sm p-5 border">
                    <div class="flex items-center space-x-3">
                        <div class="w-10 h-10 bg-orange-100 rounded-lg flex items-center justify-center">
                            <i class="fas fa-clock text-orange-600"></i>
                        </div>
                        <div>
                            <p class="text-xs text-gray-500">Terakhir Update</p>
                            <p class="text-sm font-bold text-gray-900">{{ $statistics['lastRun'] }}</p>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Main Card: Generate Forecast --}}
            <div class="bg-white rounded-2xl shadow-lg overflow-hidden">
                <div class="bg-gradient-to-r from-indigo-500 to-purple-600 px-6 py-5">
                    <h3 class="text-lg font-bold text-white flex items-center">
                        <i class="fas fa-magic mr-3"></i>
                        Buat Prediksi Baru
                    </h3>
                    <p class="text-indigo-100 text-sm mt-1">Pilih barang dan buat prediksi permintaan otomatis</p>
                </div>

                <div class="p-6">
                    {{-- Simple 3-Step Process --}}
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                        
                        {{-- Step 1: Pilih Barang --}}
                        <div class="space-y-3">
                            <div class="flex items-center space-x-2">
                                <div class="w-6 h-6 bg-indigo-500 text-white rounded-full flex items-center justify-center text-xs font-bold">1</div>
                                <label class="font-semibold text-gray-700">Pilih Barang</label>
                            </div>
                            <select wire:model.live="generateItemInput"
                                class="w-full px-4 py-3 border-2 border-gray-200 rounded-xl focus:border-indigo-500 focus:ring focus:ring-indigo-200 transition"
                                @if($isGenerating) disabled @endif>
                                <option value="">-- Pilih barang --</option>
                                @foreach($generateItems as $item)
                                    <option value="{{ $item->item_code }} - {{ $item->name }}">
                                        {{ $item->item_code }} - {{ $item->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>

                        {{-- Step 2: Pilih Periode --}}
                        <div class="space-y-3">
                            <div class="flex items-center space-x-2">
                                <div class="w-6 h-6 bg-indigo-500 text-white rounded-full flex items-center justify-center text-xs font-bold">2</div>
                                <label class="font-semibold text-gray-700">Periode & Metode</label>
                            </div>
                            <div class="grid grid-cols-2 gap-2">
                                <select wire:model="generateHorizon"
                                    class="w-full px-3 py-2 border-2 border-gray-200 rounded-xl focus:border-indigo-500 focus:ring focus:ring-indigo-200 transition text-sm"
                                    @if($isGenerating) disabled @endif>
                                    <option value="3">3 bulan</option>
                                    <option value="6">6 bulan</option>
                                    <option value="12" selected>12 bulan</option>
                                </select>
                                <select wire:model="generateMethod"
                                    class="w-full px-3 py-2 border-2 border-gray-200 rounded-xl focus:border-indigo-500 focus:ring focus:ring-indigo-200 transition text-sm"
                                    @if($isGenerating) disabled @endif>
                                    <option value="hybrid">Hybrid (⭐)</option>
                                    <option value="auto">Auto</option>
                                    <option value="ensemble">Ensemble</option>
                                    <option value="seasonal">Seasonal</option>
                                    <option value="trend">Trend</option>
                                    <option value="wma">WMA</option>
                                    <option value="simple">Simple</option>
                                </select>
                            </div>
                        </div>


                        {{-- Step 3: Generate --}}
                        <div class="space-y-3">
                            <div class="flex items-center space-x-2">
                                <div class="w-6 h-6 bg-indigo-500 text-white rounded-full flex items-center justify-center text-xs font-bold">3</div>
                                <label class="font-semibold text-gray-700">Proses</label>
                            </div>
                            <button wire:click="generateForecasts" 
                                wire:loading.attr="disabled"
                                @if(!$generateItemId || $isGenerating) disabled @endif
                                class="w-full px-6 py-3 text-white bg-gradient-to-r from-indigo-600 to-purple-600 rounded-xl hover:from-indigo-700 hover:to-purple-700 focus:outline-none focus:ring-4 focus:ring-indigo-300 transition disabled:opacity-50 disabled:cursor-not-allowed font-semibold">
                                <span wire:loading.remove wire:target="generateForecasts" class="flex items-center justify-center">
                                    <i class="fas fa-bolt mr-2"></i>
                                    Buat Prediksi
                                </span>
                                <span wire:loading wire:target="generateForecasts" class="flex items-center justify-center">
                                    <i class="fas fa-spinner fa-spin mr-2"></i>
                                    Memproses...
                                </span>
                            </button>
                        </div>
                    </div>

                    {{-- Loading State --}}
                    <div wire:loading wire:target="generateForecasts" class="mt-6">
                        <div class="bg-indigo-50 border border-indigo-200 rounded-xl p-4">
                            <div class="flex items-center space-x-3">
                                <i class="fas fa-cog fa-spin text-indigo-600"></i>
                                <span class="text-indigo-700">Sedang menghitung prediksi permintaan...</span>
                            </div>
                            <div class="mt-3 w-full bg-indigo-200 rounded-full h-2 overflow-hidden">
                                <div class="bg-indigo-600 h-2 rounded-full animate-pulse" style="width: 60%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            {{-- Chart Section --}}
            <div class="bg-white rounded-2xl shadow-lg overflow-hidden">
                <div class="bg-gradient-to-r from-blue-500 to-cyan-600 px-6 py-5">
                    <h3 class="text-lg font-bold text-white flex items-center">
                        <i class="fas fa-chart-line mr-3"></i>
                        Grafik Prediksi
                    </h3>
                    <p class="text-blue-100 text-sm mt-1">Perbandingan prediksi dengan data tahun lalu</p>
                </div>

                <div class="p-6">
                    @if($generateItemId)
                        @php
                            $selectedItem = $generateItems->firstWhere('id', $generateItemId);
                        @endphp
                        <div class="mb-4">
                            <h4 class="text-lg font-semibold text-gray-800">
                                @if($selectedItem)
                                    {{ $selectedItem->name }} 
                                    <span class="text-sm text-gray-500">({{ $selectedItem->item_code }})</span>
                                @endif
                            </h4>
                            <div class="flex gap-6 mt-2">
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
                        <div class="h-72" wire:ignore>
                            <canvas id="forecastComparisonChart"></canvas>
                        </div>
                        <p class="mt-4 text-sm text-gray-500 bg-yellow-50 border-l-4 border-yellow-400 p-3 rounded">
                            <strong>💡 Tips:</strong> Garis biru = prediksi permintaan. Garis abu-abu = data aktual tahun lalu sebagai pembanding.
                        </p>
                    @else
                        <div class="bg-gray-50 rounded-xl p-12 text-center border-2 border-dashed border-gray-300">
                            <i class="fas fa-chart-bar text-gray-400 text-4xl mb-4"></i>
                            <p class="text-gray-500">Pilih barang di atas untuk melihat grafik prediksi</p>
                        </div>
                    @endif
                </div>
            </div>

        </div>
    </div>

    @push('scripts')
    <script>
        let forecastComparisonChart = null;

        function renderForecastChart(payload) {
            const ctx = document.getElementById('forecastComparisonChart');
            if (!ctx || typeof Chart === 'undefined') return;

            const labels = payload.labels || [];
            const forecast = payload.forecast || [];
            const lastYear = payload.lastYear || [];

            const config = {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: [
                        {
                            label: payload.mode === 'historical' ? 'Data Aktual' : 'Prediksi Permintaan',
                            data: forecast,
                            borderColor: '#3b82f6',
                            backgroundColor: 'rgba(59, 130, 246, 0.1)',
                            tension: 0.4,
                            fill: true,
                            borderWidth: 3,
                            pointRadius: 5
                        },
                        {
                            label: 'Data Tahun Lalu',
                            data: lastYear,
                            borderColor: '#9ca3af',
                            backgroundColor: 'rgba(156, 163, 175, 0.1)',
                            tension: 0.4,
                            fill: true,
                            borderWidth: 2,
                            borderDash: [5, 5],
                            pointRadius: 4
                        }
                    ]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: { display: true, position: 'bottom' },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.dataset.label + ': ' + 
                                        new Intl.NumberFormat('id-ID').format(context.parsed.y) + ' unit';
                                }
                            }
                        }
                    },
                    scales: {
                        y: { beginAtZero: true }
                    }
                }
            };

            if (forecastComparisonChart) {
                forecastComparisonChart.destroy();
            }
            forecastComparisonChart = new Chart(ctx, config);
        }

        // Register Livewire listener
        function registerForecastListener() {
            if (window.__forecastListenerRegistered || !window.Livewire) return;
            window.__forecastListenerRegistered = true;
            
            Livewire.on('forecast-chart-updated', (event) => {
                const data = event?.data ?? event?.[0]?.data ?? event?.[0] ?? event ?? {};
                setTimeout(() => renderForecastChart(data), 100);
            });
        }

        if (window.Livewire) registerForecastListener();
        document.addEventListener('livewire:init', registerForecastListener);
    </script>
    @endpush
</div>