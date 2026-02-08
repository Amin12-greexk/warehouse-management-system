<div wire:init="$refresh">
    <x-slot name="header">
        <div class="flex items-center justify-between">
            <div>
                <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                    {{ __('Laporan & Analisis') }}
                </h2>
                <p class="mt-1 text-sm text-gray-600">Data statistik dan visualisasi gudang</p>
            </div>
            <div class="text-sm text-gray-500 hidden md:block">
                <i class="far fa-calendar mr-2"></i>{{ now()->isoFormat('dddd, D MMMM YYYY') }}
            </div>
        </div>
    </x-slot>

    <div class="py-12 bg-gradient-to-br from-gray-50 via-blue-50 to-purple-50 min-h-screen">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <!-- Summary Stats -->
            <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center space-x-4">
                        <div
                            class="w-12 h-12 bg-gradient-to-br from-green-400 to-emerald-600 rounded-xl flex items-center justify-center">
                            <i class="fas fa-arrow-down text-white text-xl"></i>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Total Barang Masuk</p>
                            <p class="text-2xl font-bold text-gray-900">
                                {{ number_format(array_sum($monthlyChart['dataIn'])) }}</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center space-x-4">
                        <div
                            class="w-12 h-12 bg-gradient-to-br from-red-400 to-rose-600 rounded-xl flex items-center justify-center">
                            <i class="fas fa-arrow-up text-white text-xl"></i>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Total Barang Keluar</p>
                            <p class="text-2xl font-bold text-gray-900">
                                {{ number_format(array_sum($monthlyChart['dataOut'])) }}</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center space-x-4">
                        <div
                            class="w-12 h-12 bg-gradient-to-br from-blue-400 to-indigo-600 rounded-xl flex items-center justify-center">
                            <i class="fas fa-box text-white text-xl"></i>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Stok Normal</p>
                            <p class="text-2xl font-bold text-green-600">{{ number_format($stockChart['data'][0]) }}</p>
                        </div>
                    </div>
                </div>
                <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center space-x-4">
                        <div
                            class="w-12 h-12 bg-gradient-to-br from-orange-400 to-red-600 rounded-xl flex items-center justify-center">
                            <i class="fas fa-exclamation-triangle text-white text-xl"></i>
                        </div>
                        <div>
                            <p class="text-sm text-gray-500">Perlu Perhatian</p>
                            <p class="text-2xl font-bold text-orange-600">
                                {{ number_format($stockChart['data'][1] + $stockChart['data'][2]) }}</p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Main Charts -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
                <!-- Monthly Transactions Chart -->
                <div class="bg-white p-8 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-br from-blue-400 to-purple-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-chart-bar text-white text-sm"></i>
                                </div>
                                <span>Transaksi Bulanan (12 Bulan)</span>
                            </h3>
                            <p class="text-sm text-gray-500 mt-1">Perbandingan barang masuk dan keluar</p>
                        </div>
                    </div>
                    <div class="h-72" wire:ignore>
                        <canvas id="monthlyChart"></canvas>
                    </div>
                </div>

                <!-- Stock Status Chart -->
                <div class="bg-white p-8 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-br from-emerald-400 to-cyan-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-chart-pie text-white text-sm"></i>
                                </div>
                                <span>Status Stok Barang</span>
                            </h3>
                            <p class="text-sm text-gray-500 mt-1">Distribusi status stok</p>
                        </div>
                    </div>
                    <div class="h-72 flex items-center justify-center" wire:ignore>
                        <canvas id="stockChart"></canvas>
                    </div>
                </div>
            </div>

            <!-- Secondary Charts -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
                <!-- Daily Transaction Trend -->
                <div class="bg-white p-8 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-br from-pink-400 to-rose-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-chart-line text-white text-sm"></i>
                                </div>
                                <span>Tren Transaksi 30 Hari</span>
                            </h3>
                            <p class="text-sm text-gray-500 mt-1">Aktivitas harian</p>
                        </div>
                    </div>
                    <div class="h-72" wire:ignore>
                        <canvas id="trendChart"></canvas>
                    </div>
                </div>

                <!-- Category Distribution -->
                <div class="bg-white p-8 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-br from-amber-400 to-orange-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-tags text-white text-sm"></i>
                                </div>
                                <span>Distribusi Tipe Barang</span>
                            </h3>
                            <p class="text-sm text-gray-500 mt-1">Jumlah barang per tipe</p>
                        </div>
                    </div>
                    <div class="h-72 flex items-center justify-center" wire:ignore>
                        <canvas id="categoryChart"></canvas>
                    </div>
                </div>
            </div>

        </div>
    </div>

    @push('scripts')
        <script>
            function initReportsCharts() {
                // Monthly Transactions Chart
                const monthlyCtx = document.getElementById('monthlyChart');
                if (monthlyCtx && typeof Chart !== 'undefined') {
                    new Chart(monthlyCtx, {
                        type: 'bar',
                        data: {
                            labels: @json($monthlyChart['labels']),
                            datasets: [
                                {
                                    label: 'Barang Masuk',
                                    data: @json($monthlyChart['dataIn']),
                                    backgroundColor: 'rgba(99, 102, 241, 0.8)',
                                    borderColor: 'rgba(99, 102, 241, 1)',
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    borderSkipped: false
                                },
                                {
                                    label: 'Barang Keluar',
                                    data: @json($monthlyChart['dataOut']),
                                    backgroundColor: 'rgba(244, 63, 94, 0.8)',
                                    borderColor: 'rgba(244, 63, 94, 1)',
                                    borderWidth: 2,
                                    borderRadius: 8,
                                    borderSkipped: false
                                }
                            ]
                        },
                        options: {
                            responsive: true,
                            maintainAspectRatio: false,
                            scales: {
                                y: {
                                    beginAtZero: true,
                                    grid: { color: 'rgba(0, 0, 0, 0.05)' }
                                },
                                x: {
                                    grid: { display: false }
                                }
                            },
                            plugins: {
                                legend: {
                                    display: true,
                                    position: 'bottom',
                                    labels: { usePointStyle: true, padding: 15 }
                                }
                            }
                        }
                    });
                }

                // Stock Status Chart
                const stockCtx = document.getElementById('stockChart');
                if (stockCtx && typeof Chart !== 'undefined') {
                    new Chart(stockCtx, {
                        type: 'doughnut',
                        data: {
                            labels: @json($stockChart['labels']),
                            datasets: [{
                                data: @json($stockChart['data']),
                                backgroundColor: [
                                    'rgba(16, 185, 129, 0.8)',
                                    'rgba(251, 146, 60, 0.8)',
                                    'rgba(239, 68, 68, 0.8)'
                                ],
                                borderColor: [
                                    'rgba(16, 185, 129, 1)',
                                    'rgba(251, 146, 60, 1)',
                                    'rgba(239, 68, 68, 1)'
                                ],
                                borderWidth: 3
                            }]
                        },
                        options: {
                            responsive: true,
                            maintainAspectRatio: false,
                            plugins: {
                                legend: {
                                    display: true,
                                    position: 'bottom',
                                    labels: { usePointStyle: true, padding: 12 }
                                }
                            }
                        }
                    });
                }

                // Daily Trend Chart
                const trendCtx = document.getElementById('trendChart');
                if (trendCtx && typeof Chart !== 'undefined') {
                    new Chart(trendCtx, {
                        type: 'line',
                        data: {
                            labels: @json($transactionTrendChart['labels']),
                            datasets: [
                                {
                                    label: 'Barang Masuk',
                                    data: @json($transactionTrendChart['dataIn']),
                                    borderColor: 'rgb(34, 197, 94)',
                                    backgroundColor: 'rgba(34, 197, 94, 0.1)',
                                    tension: 0.4,
                                    fill: true
                                },
                                {
                                    label: 'Barang Keluar',
                                    data: @json($transactionTrendChart['dataOut']),
                                    borderColor: 'rgb(239, 68, 68)',
                                    backgroundColor: 'rgba(239, 68, 68, 0.1)',
                                    tension: 0.4,
                                    fill: true
                                }
                            ]
                        },
                        options: {
                            responsive: true,
                            maintainAspectRatio: false,
                            scales: {
                                y: {
                                    beginAtZero: true,
                                    grid: { color: 'rgba(0, 0, 0, 0.05)' }
                                },
                                x: {
                                    grid: { display: false },
                                    ticks: {
                                        maxTicksLimit: 10
                                    }
                                }
                            },
                            plugins: {
                                legend: {
                                    display: true,
                                    position: 'bottom',
                                    labels: { usePointStyle: true, padding: 15 }
                                }
                            }
                        }
                    });
                }

                // Category Distribution Chart
                const categoryCtx = document.getElementById('categoryChart');
                if (categoryCtx && typeof Chart !== 'undefined') {
                    const colors = [
                        'rgba(99, 102, 241, 0.8)',
                        'rgba(34, 197, 94, 0.8)',
                        'rgba(251, 146, 60, 0.8)',
                        'rgba(239, 68, 68, 0.8)',
                        'rgba(168, 85, 247, 0.8)',
                        'rgba(6, 182, 212, 0.8)',
                        'rgba(236, 72, 153, 0.8)',
                        'rgba(234, 179, 8, 0.8)'
                    ];
                    const categoryLabels = @json($categoryChart['labels']);
                    new Chart(categoryCtx, {
                        type: 'pie',
                        data: {
                            labels: categoryLabels,
                            datasets: [{
                                data: @json($categoryChart['data']),
                                backgroundColor: colors.slice(0, categoryLabels.length),
                                borderWidth: 2
                            }]
                        },
                        options: {
                            responsive: true,
                            maintainAspectRatio: false,
                            plugins: {
                                legend: {
                                    display: true,
                                    position: 'bottom',
                                    labels: { usePointStyle: true, padding: 12 }
                                }
                            }
                        }
                    });
                }
            }

            // Initialize charts when page loads
            if (document.readyState === 'loading') {
                document.addEventListener('DOMContentLoaded', function () {
                    setTimeout(initReportsCharts, 100);
                });
            } else {
                setTimeout(initReportsCharts, 100);
            }

            // Also initialize on Livewire navigation
            if (typeof Livewire !== 'undefined') {
                document.addEventListener('livewire:navigated', function () {
                    setTimeout(initReportsCharts, 100);
                });
            }
        </script>
    @endpush
</div>