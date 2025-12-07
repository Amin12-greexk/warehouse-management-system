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
                <a href="{{ route('admin.users.index') }}" wire:navigate
                    class="group bg-gradient-to-br from-blue-500 to-blue-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Kelola</div>
                            <h3 class="text-white text-xl font-bold mb-2">Users</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Lihat semua</span>
                                <i class="fas fa-arrow-right ml-2 group-hover:translate-x-1 transition-transform"></i>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-users text-white text-2xl"></i>
                        </div>
                    </div>
                </a>

                <a href="{{ route('admin.items.index') }}" wire:navigate
                    class="group bg-gradient-to-br from-purple-500 to-purple-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Kelola</div>
                            <h3 class="text-white text-xl font-bold mb-2">Items</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Lihat semua</span>
                                <i class="fas fa-arrow-right ml-2 group-hover:translate-x-1 transition-transform"></i>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-box text-white text-2xl"></i>
                        </div>
                    </div>
                </a>

                <a href="{{ route('admin.suppliers.index') }}" wire:navigate
                    class="group bg-gradient-to-br from-pink-500 to-pink-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Kelola</div>
                            <h3 class="text-white text-xl font-bold mb-2">Suppliers</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Lihat semua</span>
                                <i class="fas fa-arrow-right ml-2 group-hover:translate-x-1 transition-transform"></i>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-building text-white text-2xl"></i>
                        </div>
                    </div>
                </a>

                <a href="{{ route('admin.racks.index') }}" wire:navigate
                    class="group bg-gradient-to-br from-indigo-500 to-indigo-600 p-6 rounded-2xl shadow-lg hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1">
                    <div class="flex items-center justify-between">
                        <div>
                            <div class="text-white/80 text-sm font-medium mb-1">Kelola</div>
                            <h3 class="text-white text-xl font-bold mb-2">Racks</h3>
                            <div class="flex items-center text-white/90 text-sm">
                                <span>Lihat semua</span>
                                <i class="fas fa-arrow-right ml-2 group-hover:translate-x-1 transition-transform"></i>
                            </div>
                        </div>
                        <div class="w-16 h-16 bg-white/20 rounded-xl flex items-center justify-center">
                            <i class="fas fa-warehouse text-white text-2xl"></i>
                        </div>
                    </div>
                </a>
            </div>

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
                    <div>
                        <canvas id="monthlyChart" class="max-h-80"></canvas>
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
                    <div>
                        <canvas id="stockChart" class="max-h-64"></canvas>
                    </div>
                </div>
            </div>

            <!-- Advanced Analytics Section -->
            <div class="grid grid-cols-1 lg:grid-cols-3 gap-6 mb-8">

                <!-- Top 10 Items (7 Days) -->
                <div class="lg:col-span-2 bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="flex items-center justify-between mb-4">
                        <div>
                            <h3 class="text-lg font-bold text-gray-900 flex items-center space-x-2">
                                <div class="w-7 h-7 bg-gradient-to-br from-red-400 to-pink-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-fire text-white text-xs"></i>
                                </div>
                                <span>Top 10 Keluar (7 Hari)</span>
                            </h3>
                            <p class="text-xs text-gray-500 mt-1">Perbandingan dengan minggu lalu</p>
                        </div>
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full text-sm">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-3 py-2 text-left text-xs font-semibold text-gray-600">Barang</th>
                                    <th class="px-3 py-2 text-center text-xs font-semibold text-gray-600">Qty 7h</th>
                                    <th class="px-3 py-2 text-center text-xs font-semibold text-gray-600">Minggu Lalu</th>
                                    <th class="px-3 py-2 text-center text-xs font-semibold text-gray-600">Delta</th>
                                    <th class="px-3 py-2 text-center text-xs font-semibold text-gray-600">Freq</th>
                                    <th class="px-3 py-2 text-left text-xs font-semibold text-gray-600">Chart</th>
                                </tr>
                            </thead>
                            <tbody class="divide-y divide-gray-100">
                                @php
                                    $maxQty7d = $top10Items7Days->pluck('qty_7d')->max() ?: 1;
                                @endphp
                                @forelse($top10Items7Days as $data)
                                    <tr class="hover:bg-gray-50">
                                        <td class="px-3 py-2">
                                            <div>
                                                <p class="font-semibold text-gray-900">{{ $data['item']->name }}</p>
                                                <p class="text-xs text-gray-500">{{ $data['item']->item_code }}</p>
                                            </div>
                                        </td>
                                        <td class="px-3 py-2 text-center font-bold text-gray-900">{{ $data['qty_7d'] }}</td>
                                        <td class="px-3 py-2 text-center text-gray-600">{{ $data['qty_prev'] }}</td>
                                        <td class="px-3 py-2 text-center">
                                            <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold
                                                {{ $data['delta'] > 50 ? 'bg-yellow-100 text-yellow-800' : ($data['delta'] > 0 ? 'bg-green-100 text-green-800' : 'bg-gray-100 text-gray-600') }}">
                                                @if($data['delta'] > 0)
                                                    <i class="fas fa-arrow-up mr-1 text-xs"></i>
                                                @elseif($data['delta'] < 0)
                                                    <i class="fas fa-arrow-down mr-1 text-xs"></i>
                                                @endif
                                                {{ abs($data['delta']) }}%
                                            </span>
                                        </td>
                                        <td class="px-3 py-2 text-center">
                                            <span class="inline-flex items-center">
                                                {{ $data['freq_7d'] }}x
                                                @if($data['is_high_freq_low_vol'])
                                                    <i class="fas fa-bolt text-orange-500 ml-1" title="Frekuensi tinggi, volume kecil"></i>
                                                @endif
                                            </span>
                                        </td>
                                        <td class="px-3 py-2">
                                            <div class="w-24 bg-gray-200 rounded-full h-2">
                                                <div class="bg-red-500 h-2 rounded-full" style="width: {{ min(100, ($data['qty_7d'] / $maxQty7d) * 100) }}%"></div>
                                            </div>
                                        </td>
                                    </tr>
                                @empty
                                    <tr><td colspan="6" class="px-3 py-4 text-center text-gray-500">Tidak ada data</td></tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Days of Supply & ROP -->
                <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                    <div class="mb-4">
                        <h3 class="text-lg font-bold text-gray-900 flex items-center space-x-2">
                            <div class="w-7 h-7 bg-gradient-to-br from-orange-400 to-red-600 rounded-lg flex items-center justify-center">
                                <i class="fas fa-exclamation-triangle text-white text-xs"></i>
                            </div>
                            <span>Days of Supply</span>
                        </h3>
                        <p class="text-xs text-gray-500 mt-1">5 terendah + ROP alert</p>
                    </div>

                    <div class="space-y-3">
                        @forelse($dosItems as $data)
                            <div class="p-3 border rounded-lg {{ $data['needs_restock'] ? 'border-red-300 bg-red-50' : 'border-gray-200' }}">
                                <div class="flex items-start justify-between mb-2">
                                    <div class="flex-1">
                                        <p class="font-semibold text-sm text-gray-900">{{ $data['item']->name }}</p>
                                        <p class="text-xs text-gray-500">{{ $data['item']->item_code }}</p>
                                    </div>
                                    @if($data['needs_restock'])
                                        <span class="inline-flex items-center px-2 py-1 bg-red-100 text-red-800 text-xs font-bold rounded-full">
                                            <i class="fas fa-bell mr-1"></i>Restock
                                        </span>
                                    @endif
                                </div>
                                <div class="grid grid-cols-2 gap-2 text-xs">
                                    <div>
                                        <span class="text-gray-500">DoS:</span>
                                        <span class="font-bold ml-1
                                            {{ $data['dos'] < 3 ? 'text-red-600' : ($data['dos'] < 7 ? 'text-yellow-600' : 'text-green-600') }}">
                                            {{ $data['dos'] ?? '-' }} hari
                                        </span>
                                    </div>
                                    <div>
                                        <span class="text-gray-500">Stock:</span>
                                        <span class="font-bold ml-1">{{ $data['current_stock'] }}</span>
                                    </div>
                                    <div>
                                        <span class="text-gray-500">ROP:</span>
                                        <span class="font-bold ml-1">{{ $data['rop'] }}</span>
                                    </div>
                                    <div>
                                        <span class="text-gray-500">ADD:</span>
                                        <span class="font-bold ml-1">{{ $data['add'] }}/hari</span>
                                    </div>
                                </div>
                            </div>
                        @empty
                            <p class="text-sm text-gray-500 text-center py-4">Tidak ada data</p>
                        @endforelse
                    </div>
                </div>
            </div>

            <!-- Anomaly & Quick Slotting -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">

                <!-- Lonjakan Minggu Ini -->
                @if($anomalyItems->count() > 0)
                    <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                        <div class="mb-4">
                            <h3 class="text-lg font-bold text-gray-900 flex items-center space-x-2">
                                <div class="w-7 h-7 bg-gradient-to-br from-yellow-400 to-orange-500 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-chart-line text-white text-xs"></i>
                                </div>
                                <span>Lonjakan Minggu Ini</span>
                            </h3>
                            <p class="text-xs text-gray-500 mt-1">Item naik >50% vs minggu lalu</p>
                        </div>

                        <div class="space-y-2">
                            @foreach($anomalyItems as $data)
                                <div class="flex items-center justify-between p-3 bg-yellow-50 border border-yellow-200 rounded-lg">
                                    <div class="flex-1">
                                        <p class="font-semibold text-sm text-gray-900">{{ $data['item']->name }}</p>
                                        <p class="text-xs text-gray-500">{{ $data['qty_7d'] }} unit (7 hari)</p>
                                    </div>
                                    <span class="inline-flex items-center px-3 py-1 bg-yellow-100 text-yellow-800 text-xs font-bold rounded-full">
                                        <i class="fas fa-arrow-up mr-1"></i>{{ round($data['delta']) }}%
                                    </span>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif

                <!-- Quick Slotting -->
                @if($quickSlotting->count() > 0)
                    <div class="bg-white p-6 rounded-2xl shadow-sm border hover:shadow-lg transition-shadow">
                        <div class="mb-4">
                            <h3 class="text-lg font-bold text-gray-900 flex items-center space-x-2">
                                <div class="w-7 h-7 bg-gradient-to-br from-blue-400 to-indigo-600 rounded-lg flex items-center justify-center">
                                    <i class="fas fa-shipping-fast text-white text-xs"></i>
                                </div>
                                <span>Quick Slotting</span>
                            </h3>
                            <p class="text-xs text-gray-500 mt-1">Top 3 untuk rak dekat pintu</p>
                        </div>

                        <div class="space-y-2">
                            @foreach($quickSlotting as $data)
                                <div class="p-3 border border-blue-200 bg-blue-50 rounded-lg">
                                    <div class="flex items-start justify-between mb-2">
                                        <div class="flex-1">
                                            <p class="font-semibold text-sm text-gray-900">{{ $data['item']->name }}</p>
                                            <p class="text-xs text-gray-500">{{ $data['qty_7d'] }}x keluar (7h)</p>
                                        </div>
                                    </div>
                                    <div class="flex items-center justify-between text-xs">
                                        <span class="text-gray-600">{{ $data['current_rack']->code ?? '-' }}</span>
                                        <i class="fas fa-arrow-right text-blue-600 mx-2"></i>
                                        <span class="text-green-700 font-semibold">{{ $data['recommended_rack']->code }}</span>
                                        <span class="ml-2 px-2 py-1 bg-green-100 text-green-700 rounded-full text-xs font-bold">
                                            -{{ $data['improvement'] }} poin
                                        </span>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                @endif
            </div>

            <!-- Rack Optimization Recommendations -->
            @if($rackRecommendations->count() > 0)
                <div class="mt-8 bg-white rounded-2xl shadow-sm border overflow-hidden hover:shadow-lg transition-shadow duration-300">
                    <div class="p-8">
                        <div class="flex items-center justify-between mb-6">
                            <div>
                                <h3 class="text-xl font-bold text-gray-900 flex items-center space-x-2">
                                    <div class="w-8 h-8 bg-gradient-to-br from-yellow-400 to-orange-600 rounded-lg flex items-center justify-center">
                                        <i class="fas fa-lightbulb text-white text-sm"></i>
                                    </div>
                                    <span>Rekomendasi Optimasi Rak</span>
                                </h3>
                                <p class="text-sm text-gray-500 mt-1">Barang sering keluar yang perlu dipindah ke rak dekat pintu</p>
                            </div>
                        </div>

                        <div class="space-y-4">
                            @foreach($rackRecommendations as $rec)
                                <div class="border border-gray-200 rounded-xl p-4 hover:border-orange-300 hover:bg-orange-50/30 transition-all duration-200">
                                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                                        <!-- Item Info -->
                                        <div>
                                            <label class="text-xs font-medium text-gray-500 uppercase">Barang</label>
                                            <p class="text-sm font-semibold text-gray-900 mt-1">{{ $rec['item']->name }}</p>
                                            <p class="text-xs text-gray-500">Kode: {{ $rec['item']->item_code }}</p>
                                            <div class="mt-2">
                                                <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-red-100 text-red-800">
                                                    <i class="fas fa-fire mr-1"></i>
                                                    {{ $rec['out_frequency'] }}x keluar (30 hari)
                                                </span>
                                            </div>
                                        </div>

                                        <!-- Current Rack -->
                                        <div>
                                            <label class="text-xs font-medium text-gray-500 uppercase">Rak Sekarang</label>
                                            <p class="text-sm font-semibold text-gray-900 mt-1">{{ $rec['current_rack']->name }}</p>
                                            <p class="text-xs text-gray-500">{{ $rec['current_rack']->location }}</p>
                                            <div class="mt-2">
                                                <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-gray-100 text-gray-700">
                                                    Jarak: {{ $rec['current_rack']->distance_score }}
                                                </span>
                                            </div>
                                        </div>

                                        <!-- Recommended Rack -->
                                        <div>
                                            <label class="text-xs font-medium text-gray-500 uppercase flex items-center">
                                                <i class="fas fa-star text-yellow-500 mr-1"></i>
                                                Rekomendasi Rak
                                            </label>
                                            <p class="text-sm font-semibold text-green-700 mt-1">{{ $rec['recommended_rack']->name }}</p>
                                            <p class="text-xs text-gray-500">{{ $rec['recommended_rack']->location }}</p>
                                            <div class="mt-2 flex items-center space-x-2">
                                                <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-700">
                                                    Jarak: {{ $rec['recommended_rack']->distance_score }}
                                                </span>
                                                <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-blue-100 text-blue-700">
                                                    <i class="fas fa-arrow-down mr-1"></i>
                                                    Hemat {{ $rec['distance_improvement'] }} poin
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>

                        <div class="mt-6 p-4 bg-blue-50 border border-blue-200 rounded-lg">
                            <div class="flex items-start">
                                <i class="fas fa-info-circle text-blue-600 mt-1 mr-3"></i>
                                <div class="text-sm text-blue-800">
                                    <p class="font-semibold mb-1">Tips Optimasi:</p>
                                    <p>Pindahkan barang yang sering keluar ke rak dengan distance_score rendah (dekat pintu) untuk efisiensi picking dan mengurangi waktu pengambilan barang.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @endif

            <!-- Recent Transactions Table -->
            <div
                class="mt-8 bg-white overflow-hidden shadow-sm rounded-2xl border border-gray-100 hover:shadow-lg transition-shadow duration-300">
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

    @push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Monthly Transactions Chart
            const monthlyCtx = document.getElementById('monthlyChart');
            if (monthlyCtx) {
                new Chart(monthlyCtx, {
                    type: 'bar',
                    data: {
                        labels: @js($monthlyChart['labels']),
                        datasets: [
                            {
                                label: 'Barang Masuk',
                                data: @js($monthlyChart['dataIn']),
                                backgroundColor: 'rgba(99, 102, 241, 0.8)',
                                borderColor: 'rgba(99, 102, 241, 1)',
                                borderWidth: 2,
                                borderRadius: 8,
                                borderSkipped: false
                            },
                            {
                                label: 'Barang Keluar',
                                data: @js($monthlyChart['dataOut']),
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
                                    stepSize: 1,
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

            // Stock Status Chart
            const stockCtx = document.getElementById('stockChart');
            if (stockCtx) {
                new Chart(stockCtx, {
                    type: 'doughnut',
                    data: {
                        labels: @js($stockChart['labels']),
                        datasets: [{
                            data: @js($stockChart['data']),
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
        });
    </script>
    @endpush
</div>