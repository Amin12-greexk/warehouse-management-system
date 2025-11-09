<div>
    <x-slot name="header">
        <div class="flex items-center justify-between">
            <div>
                <h2 class="font-bold text-2xl text-gray-800 leading-tight flex items-center space-x-3">
                    <div
                        class="w-10 h-10 bg-gradient-to-br from-indigo-500 to-purple-600 rounded-xl flex items-center justify-center shadow-lg">
                        <i class="fas fa-th-large text-white text-xl"></i>
                    </div>
                    <span>{{ __('Admin Dashboard') }}</span>
                </h2>
                <p class="mt-1 text-sm text-gray-500">Selamat datang kembali, {{ auth()->user()->name }}!</p>
            </div>
            <div class="text-sm text-gray-500 hidden md:block">
                {{ now()->isoFormat('dddd, D MMMM YYYY') }}
            </div>
        </div>
    </x-slot>

    <div class="py-12 bg-gradient-to-br from-gray-50 via-blue-50 to-purple-50 min-h-screen">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <!-- Stats Cards with Modern Design -->
            <div class="grid grid-cols-1 md:grid-cols-3 lg:grid-cols-5 gap-6 mb-8">
                <!-- Total Users Card -->
                <div
                    class="group relative bg-white p-6 rounded-2xl shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 overflow-hidden">
                    <div
                        class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-400 to-blue-600 rounded-full opacity-10 -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-300">
                    </div>
                    <div class="relative">
                        <div class="flex items-center justify-between mb-3">
                            <div
                                class="w-12 h-12 bg-gradient-to-br from-blue-400 to-blue-600 rounded-xl flex items-center justify-center shadow-lg group-hover:scale-110 transition-transform duration-300">
                                <i class="fas fa-users text-white text-xl"></i>
                            </div>
                        </div>
                        <h3 class="text-gray-500 text-sm font-medium mb-1">Total Users</h3>
                        <p class="text-3xl font-bold text-gray-900 mb-2">{{ $totalUsers }}</p>
                        <div class="flex items-center text-xs text-green-600">
                            <i class="fas fa-arrow-up mr-1 text-xs"></i>
                            <span>Active Users</span>
                        </div>
                    </div>
                </div>

                <!-- Total Items Card -->
                <div
                    class="group relative bg-white p-6 rounded-2xl shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 overflow-hidden">
                    <div
                        class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-purple-400 to-purple-600 rounded-full opacity-10 -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-300">
                    </div>
                    <div class="relative">
                        <div class="flex items-center justify-between mb-3">
                            <div
                                class="w-12 h-12 bg-gradient-to-br from-purple-400 to-purple-600 rounded-xl flex items-center justify-center shadow-lg group-hover:scale-110 transition-transform duration-300">
                                <i class="fas fa-box text-white text-xl"></i>
                            </div>
                        </div>
                        <h3 class="text-gray-500 text-sm font-medium mb-1">Total Items</h3>
                        <p class="text-3xl font-bold text-gray-900 mb-2">{{ $totalItems }}</p>
                        <div class="flex items-center text-xs text-blue-600">
                            <i class="fas fa-check mr-1 text-xs"></i>
                            <span>In Stock</span>
                        </div>
                    </div>
                </div>

                <!-- Transactions Card -->
                <div
                    class="group relative bg-white p-6 rounded-2xl shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 overflow-hidden">
                    <div
                        class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-green-400 to-emerald-600 rounded-full opacity-10 -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-300">
                    </div>
                    <div class="relative">
                        <div class="flex items-center justify-between mb-3">
                            <div
                                class="w-12 h-12 bg-gradient-to-br from-green-400 to-emerald-600 rounded-xl flex items-center justify-center shadow-lg group-hover:scale-110 transition-transform duration-300">
                                <i class="fas fa-clipboard-list text-white text-xl"></i>
                            </div>
                        </div>
                        <h3 class="text-gray-500 text-sm font-medium mb-1">Transaksi Bulan Ini</h3>
                        <p class="text-3xl font-bold text-gray-900 mb-2">{{ $totalTransactions }}</p>
                        <div class="flex items-center text-xs text-green-600">
                            <i class="fas fa-chart-line mr-1 text-xs"></i>
                            <span>This Month</span>
                        </div>
                    </div>
                </div>

                <!-- Low Stock Card -->
                <div
                    class="group relative bg-white p-6 rounded-2xl shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 overflow-hidden">
                    <div
                        class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-orange-400 to-red-600 rounded-full opacity-10 -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-300">
                    </div>
                    <div class="relative">
                        <div class="flex items-center justify-between mb-3">
                            <div
                                class="w-12 h-12 bg-gradient-to-br from-orange-400 to-red-600 rounded-xl flex items-center justify-center shadow-lg group-hover:scale-110 transition-transform duration-300">
                                <i class="fas fa-exclamation-triangle text-white text-xl"></i>
                            </div>
                        </div>
                        <h3 class="text-gray-500 text-sm font-medium mb-1">Stok Menipis</h3>
                        <p class="text-3xl font-bold text-orange-600 mb-2">{{ $lowStockItems }}</p>
                        <div class="flex items-center text-xs text-orange-600">
                            <i class="fas fa-exclamation-circle mr-1 text-xs"></i>
                            <span>Perlu Perhatian</span>
                        </div>
                    </div>
                </div>

                <!-- Pending Approval Card -->
                <div
                    class="group relative bg-white p-6 rounded-2xl shadow-sm hover:shadow-xl transition-all duration-300 border border-gray-100 overflow-hidden">
                    <div
                        class="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-yellow-400 to-orange-600 rounded-full opacity-10 -mr-16 -mt-16 group-hover:scale-110 transition-transform duration-300">
                    </div>
                    <div class="relative">
                        <div class="flex items-center justify-between mb-3">
                            <div
                                class="w-12 h-12 bg-gradient-to-br from-yellow-400 to-orange-600 rounded-xl flex items-center justify-center shadow-lg group-hover:scale-110 transition-transform duration-300">
                                <i class="fas fa-clock text-white text-xl"></i>
                            </div>
                        </div>
                        <h3 class="text-gray-500 text-sm font-medium mb-1">Pending Approval</h3>
                        <p class="text-3xl font-bold text-yellow-600 mb-2">{{ $pendingTransactions }}</p>
                        <div class="flex items-center text-xs text-yellow-600">
                            <i class="fas fa-hourglass-half mr-1 text-xs"></i>
                            <span>Menunggu</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Charts Section -->
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">
                <!-- Monthly Chart -->
                <div
                    class="lg:col-span-2 bg-white p-8 rounded-2xl shadow-sm border border-gray-100 hover:shadow-lg transition-shadow duration-300">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-br from-blue-400 to-purple-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-chart-bar text-white text-sm"></i>
                                </div>
                                <span>Aktivitas Transaksi 12 Bulan</span>
                            </h3>
                            <p class="text-sm text-gray-500 mt-1">Perbandingan barang masuk dan keluar</p>
                        </div>
                    </div>
                    <div x-data="{
                        init() {
                            let chart = new Chart(this.$refs.monthlyChart, {
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
                                    scales: { 
                                        y: { 
                                            beginAtZero: true,
                                            grid: {
                                                color: 'rgba(0, 0, 0, 0.05)'
                                            },
                                            ticks: {
                                                font: {
                                                    size: 11
                                                }
                                            }
                                        },
                                        x: {
                                            grid: {
                                                display: false
                                            },
                                            ticks: {
                                                font: {
                                                    size: 11
                                                }
                                            }
                                        }
                                    },
                                    responsive: true,
                                    maintainAspectRatio: true,
                                    plugins: {
                                        legend: {
                                            display: true,
                                            position: 'bottom',
                                            labels: {
                                                usePointStyle: true,
                                                padding: 15,
                                                font: {
                                                    size: 12
                                                }
                                            }
                                        }
                                    }
                                }
                            });
                        }
                    }">
                        <canvas x-ref="monthlyChart" class="max-h-80"></canvas>
                    </div>
                </div>

                <!-- Stock Chart -->
                <div
                    class="bg-white p-8 rounded-2xl shadow-sm border border-gray-100 hover:shadow-lg transition-shadow duration-300">
                    <div class="mb-6">
                        <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                            <div
                                class="w-8 h-8 bg-gradient-to-br from-emerald-400 to-cyan-600 rounded-lg flex items-center justify-center">
                                <i class="fas fa-chart-pie text-white text-sm"></i>
                            </div>
                            <span>Status Stok Barang</span>
                        </h3>
                        <p class="text-sm text-gray-500 mt-1">Distribusi status stok</p>
                    </div>
                    <div x-data="{
                        init() {
                            let chart = new Chart(this.$refs.stockChart, {
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
                                    maintainAspectRatio: true,
                                    plugins: {
                                        legend: {
                                            display: true,
                                            position: 'bottom',
                                            labels: {
                                                usePointStyle: true,
                                                padding: 12,
                                                font: {
                                                    size: 11
                                                }
                                            }
                                        }
                                    }
                                }
                            });
                        }
                    }">
                        <canvas x-ref="stockChart" class="max-h-64"></canvas>
                    </div>
                </div>
            </div>

            <!-- Recent Transactions Table -->
            <div
                class="bg-white overflow-hidden shadow-sm rounded-2xl border border-gray-100 hover:shadow-lg transition-shadow duration-300">
                <div class="p-8">
                    <div class="flex items-center justify-between mb-6">
                        <div>
                            <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                <div
                                    class="w-8 h-8 bg-gradient-to-br from-pink-400 to-rose-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-history text-white text-sm"></i>
                                </div>
                                <span>Transaksi Terakhir</span>
                            </h3>
                            <p class="text-sm text-gray-500 mt-1">Aktivitas terbaru sistem</p>
                        </div>
                    </div>
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr class="bg-gradient-to-r from-gray-50 to-gray-100">
                                    <th
                                        class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider rounded-tl-xl">
                                        Kode</th>
                                    <th
                                        class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                                        Tipe</th>
                                    <th
                                        class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                                        Barang</th>
                                    <th
                                        class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider">
                                        User</th>
                                    <th
                                        class="px-6 py-4 text-left text-xs font-bold text-gray-600 uppercase tracking-wider rounded-tr-xl">
                                        Status</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-100">
                                @forelse ($recentTransactions as $tx)
                                    <tr
                                        class="hover:bg-gradient-to-r hover:from-blue-50 hover:to-purple-50 transition-all duration-200">
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <span
                                                class="text-sm font-semibold text-gray-900 bg-gray-100 px-3 py-1 rounded-lg">{{ $tx->transaction_code }}</span>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center space-x-2">
                                                {!! $tx->type_icon !!}
                                                <span class="text-sm font-medium text-gray-700">{{ $tx->type_label }}</span>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="text-sm font-semibold text-gray-900">{{ $tx->item->name }}</div>
                                            <div class="text-xs text-gray-500 flex items-center space-x-1 mt-1">
                                                <i class="fas fa-tag text-xs"></i>
                                                <span>Qty: {{ $tx->quantity }}</span>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">
                                            <div class="flex items-center space-x-2">
                                                <div
                                                    class="w-8 h-8 bg-gradient-to-br from-blue-400 to-purple-600 rounded-full flex items-center justify-center text-white text-xs font-bold shadow-md">
                                                    {{ strtoupper(substr($tx->user->name, 0, 1)) }}
                                                </div>
                                                <span class="text-sm font-medium text-gray-700">{{ $tx->user->name }}</span>
                                            </div>
                                        </td>
                                        <td class="px-6 py-4 whitespace-nowrap">{!! $tx->status_badge !!}</td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="5" class="px-6 py-16 text-center">
                                            <div class="flex flex-col items-center justify-center">
                                                <div
                                                    class="w-20 h-20 bg-gradient-to-br from-gray-100 to-gray-200 rounded-2xl flex items-center justify-center mb-4">
                                                    <i class="fas fa-file-alt text-gray-400 text-4xl"></i>
                                                </div>
                                                <p class="text-gray-600 font-semibold text-lg">Belum ada transaksi</p>
                                                <p class="text-sm text-gray-400 mt-2">Transaksi akan muncul di sini setelah
                                                    dibuat</p>
                                            </div>
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>

    @once
        @push('scripts')
            <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        @endpush
        @push('styles')
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        @endpush
    @endonce
</div>