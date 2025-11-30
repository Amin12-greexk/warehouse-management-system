<div>
    <x-slot name="header">
        <div class="flex items-center justify-between">
            <div>
                <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                    {{ __('Dashboard') }}
                </h2>
                <p class="mt-1 text-sm text-gray-600">Selamat datang, {{ auth()->user()->name }}</p>
            </div>
            <div class="text-sm text-gray-500 hidden md:block">
                <i class="far fa-calendar mr-2"></i>{{ now()->isoFormat('dddd, D MMMM YYYY') }}
            </div>
        </div>
    </x-slot>

    <div class="py-12 bg-gradient-to-br from-gray-50 via-blue-50 to-purple-50 min-h-screen">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <!-- Quick Access Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                <a href="{{ route('manager.users.index') }}" wire:navigate
                    class="group bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Kelola</div>
                            <h3 class="text-white text-xl font-bold mb-2">User</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Atur level user</span>
                                <i class="fas fa-arrow-right ml-2 group-hover:translate-x-1 transition-transform"></i>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-users text-white text-2xl"></i>
                        </div>
                    </div>
                </a>

                <div class="group bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Monitor</div>
                            <h3 class="text-white text-xl font-bold mb-2">Items</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Kelola stok barang</span>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-box text-white text-2xl"></i>
                        </div>
                    </div>
                </div>

                <div class="group bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Monitor</div>
                            <h3 class="text-white text-xl font-bold mb-2">Transaksi</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Riwayat keluar-masuk</span>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-exchange-alt text-white text-2xl"></i>
                        </div>
                    </div>
                </div>

                <div class="group bg-gradient-to-br from-orange-500 to-orange-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Lihat</div>
                            <h3 class="text-white text-xl font-bold mb-2">Laporan</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Analisis & Report</span>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-chart-bar text-white text-2xl"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Stats Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-purple-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-box text-purple-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($totalItems) }}</h3>
                    <p class="text-sm text-gray-500">Total Barang</p>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-exchange-alt text-green-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($totalTransactions) }}</h3>
                    <p class="text-sm text-gray-500">Transaksi Bulan Ini</p>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-yellow-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-exclamation-triangle text-yellow-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($lowStockItems) }}</h3>
                    <p class="text-sm text-gray-500">Stok Menipis</p>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-users text-blue-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($teamMembers) }}</h3>
                    <p class="text-sm text-gray-500">Anggota Tim</p>
                </div>
            </div>

            <!-- Charts -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <h3 class="text-lg font-semibold text-gray-800 mb-4">Transaksi Bulanan</h3>
                    <canvas id="monthlyChart" height="250"></canvas>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <h3 class="text-lg font-semibold text-gray-800 mb-4">Status Stok</h3>
                    <canvas id="stockChart" height="250"></canvas>
                </div>
            </div>

            <!-- Recent Transactions -->
            <div class="bg-white rounded-2xl shadow-sm border overflow-hidden">
                <div class="p-6 border-b">
                    <h3 class="text-lg font-semibold text-gray-800">Transaksi Terbaru</h3>
                </div>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tanggal</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Barang</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tipe</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Jumlah</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">User</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                            </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            @forelse ($recentTransactions as $transaction)
                                <tr>
                                    <td class="px-6 py-4 text-sm">{{ $transaction->created_at->format('d/m/Y H:i') }}</td>
                                    <td class="px-6 py-4 text-sm">{{ $transaction->item->name ?? '-' }}</td>
                                    <td class="px-6 py-4">
                                        <span class="px-2 text-xs font-semibold rounded-full {{ $transaction->type == 'in' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }}">
                                            {{ $transaction->type == 'in' ? 'Masuk' : 'Keluar' }}
                                        </span>
                                    </td>
                                    <td class="px-6 py-4 text-sm">{{ $transaction->quantity }}</td>
                                    <td class="px-6 py-4 text-sm">{{ $transaction->user->name ?? '-' }}</td>
                                    <td class="px-6 py-4">
                                        <span class="px-2 text-xs font-semibold rounded-full {{ $transaction->status == 'completed' ? 'bg-green-100 text-green-800' : 'bg-yellow-100 text-yellow-800' }}">
                                            {{ ucfirst($transaction->status) }}
                                        </span>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="6" class="px-6 py-4 text-center text-gray-500">Tidak ada transaksi</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

    @push('scripts')
    <script>
        const monthlyCtx = document.getElementById('monthlyChart');
        if (monthlyCtx) {
            new Chart(monthlyCtx, {
                type: 'line',
                data: {
                    labels: @js($monthlyChart['labels']),
                    datasets: [{
                        label: 'Barang Masuk',
                        data: @js($monthlyChart['dataIn']),
                        borderColor: 'rgb(34, 197, 94)',
                        backgroundColor: 'rgba(34, 197, 94, 0.1)',
                        tension: 0.4,
                        fill: true
                    }, {
                        label: 'Barang Keluar',
                        data: @js($monthlyChart['dataOut']),
                        borderColor: 'rgb(239, 68, 68)',
                        backgroundColor: 'rgba(239, 68, 68, 0.1)',
                        tension: 0.4,
                        fill: true
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: { legend: { position: 'top' } },
                    scales: { y: { beginAtZero: true } }
                }
            });
        }

        const stockCtx = document.getElementById('stockChart');
        if (stockCtx) {
            new Chart(stockCtx, {
                type: 'doughnut',
                data: {
                    labels: @js($stockChart['labels']),
                    datasets: [{
                        data: @js($stockChart['data']),
                        backgroundColor: ['rgb(34, 197, 94)', 'rgb(251, 191, 36)', 'rgb(239, 68, 68)']
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: { legend: { position: 'bottom' } }
                }
            });
        }
    </script>
    @endpush
</div>
