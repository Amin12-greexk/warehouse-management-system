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

    <div class="py-12 bg-gradient-to-br from-gray-50 via-green-50 to-blue-50 min-h-screen">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">

            <!-- Quick Access Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
                <a href="{{ route('employee.transactions.create') }}" wire:navigate
                    class="group bg-gradient-to-br from-green-500 to-green-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Aksi Cepat</div>
                            <h3 class="text-white text-xl font-bold mb-2">Transaksi Baru</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Buat transaksi barang</span>
                                <i class="fas fa-arrow-right ml-2 group-hover:translate-x-1 transition-transform"></i>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-plus-circle text-white text-2xl"></i>
                        </div>
                    </div>
                </a>

                <div class="group bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Lihat</div>
                            <h3 class="text-white text-xl font-bold mb-2">Daftar Barang</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Cek stok barang</span>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-box text-white text-2xl"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Stats Cards -->
            <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-blue-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-calendar-day text-blue-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($myTransactionsToday) }}</h3>
                    <p class="text-sm text-gray-500">Transaksi Hari Ini</p>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-green-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-calendar-alt text-green-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($myTransactionsMonth) }}</h3>
                    <p class="text-sm text-gray-500">Transaksi Bulan Ini</p>
                </div>

                <div class="bg-white p-6 rounded-2xl shadow-sm border">
                    <div class="flex items-center justify-between mb-4">
                        <div class="w-12 h-12 bg-yellow-100 rounded-xl flex items-center justify-center">
                            <i class="fas fa-exclamation-triangle text-yellow-600 text-xl"></i>
                        </div>
                    </div>
                    <h3 class="text-3xl font-bold text-gray-800 mb-1">{{ number_format($lowStockItems) }}</h3>
                    <p class="text-sm text-gray-500">Barang Stok Menipis</p>
                </div>
            </div>

            <!-- Activity Chart -->
            <div class="bg-white p-6 rounded-2xl shadow-sm border mb-8">
                <h3 class="text-lg font-semibold text-gray-800 mb-4">Aktivitas Saya (7 Hari Terakhir)</h3>
                <canvas id="activityChart" height="100"></canvas>
            </div>

            <!-- Recent Transactions -->
            <div class="bg-white rounded-2xl shadow-sm border overflow-hidden">
                <div class="p-6 border-b">
                    <h3 class="text-lg font-semibold text-gray-800">Transaksi Terakhir Saya</h3>
                </div>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tanggal</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Barang</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tipe</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Jumlah</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase">Keterangan</th>
                            </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            @forelse ($recentTransactions as $transaction)
                                <tr>
                                    <td class="px-6 py-4 text-sm whitespace-nowrap">
                                        {{ $transaction->created_at->format('d/m/Y H:i') }}
                                    </td>
                                    <td class="px-6 py-4 text-sm">
                                        {{ $transaction->item->name ?? '-' }}
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="px-2 text-xs font-semibold rounded-full {{ $transaction->type == 'in' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }}">
                                            {{ $transaction->type == 'in' ? 'Masuk' : 'Keluar' }}
                                        </span>
                                    </td>
                                    <td class="px-6 py-4 text-sm whitespace-nowrap">
                                        {{ $transaction->quantity }} {{ $transaction->item->unit ?? '' }}
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="px-2 text-xs font-semibold rounded-full {{ $transaction->status == 'completed' ? 'bg-green-100 text-green-800' : 'bg-yellow-100 text-yellow-800' }}">
                                            {{ ucfirst($transaction->status) }}
                                        </span>
                                    </td>
                                    <td class="px-6 py-4 text-sm text-gray-500">
                                        {{ $transaction->notes ?? '-' }}
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="6" class="px-6 py-4 text-center text-gray-500">
                                        Belum ada transaksi
                                    </td>
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
        const activityCtx = document.getElementById('activityChart');
        if (activityCtx) {
            new Chart(activityCtx, {
                type: 'bar',
                data: {
                    labels: @js($myActivityChart['labels']),
                    datasets: [{
                        label: 'Jumlah Transaksi',
                        data: @js($myActivityChart['data']),
                        backgroundColor: 'rgba(59, 130, 246, 0.5)',
                        borderColor: 'rgb(59, 130, 246)',
                        borderWidth: 2,
                        borderRadius: 6
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            ticks: {
                                stepSize: 1
                            }
                        }
                    }
                }
            });
        }
    </script>
    @endpush
</div>
