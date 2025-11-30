<div>
    <x-slot name="header">
        <div class="flex items-center justify-between">
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Detail Transaksi
            </h2>
            <a href="{{ route('admin.transactions.index') }}" wire:navigate class="text-sm text-gray-600 hover:text-gray-900">
                <i class="fas fa-arrow-left mr-1"></i> Kembali
            </a>
        </div>
    </x-slot>

    <div class="py-12">
        <div class="max-w-5xl mx-auto sm:px-6 lg:px-8">

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

            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    <!-- Transaction Header -->
                    <div class="flex items-center justify-between mb-6 pb-4 border-b">
                        <div>
                            <h3 class="text-2xl font-bold text-gray-900">{{ $transaction->transaction_code }}</h3>
                            <p class="text-sm text-gray-500 mt-1">
                                {{ $transaction->created_at->format('d F Y, H:i') }}
                            </p>
                        </div>
                        <div>
                            <span class="px-4 py-2 inline-flex text-sm leading-5 font-semibold rounded-full
                                @if($transaction->status == 'approved') bg-green-100 text-green-800
                                @elseif($transaction->status == 'pending') bg-yellow-100 text-yellow-800
                                @else bg-red-100 text-red-800
                                @endif">
                                {{ strtoupper($transaction->status) }}
                            </span>
                        </div>
                    </div>

                    <!-- Transaction Details -->
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
                        <!-- Left Column -->
                        <div class="space-y-4">
                            <div>
                                <label class="text-sm font-medium text-gray-500">Tipe Transaksi</label>
                                <div class="mt-1">
                                    <span class="px-3 py-1 inline-flex text-sm font-semibold rounded-full
                                        {{ $transaction->type == 'in' ? 'bg-green-100 text-green-800' : 'bg-red-100 text-red-800' }}">
                                        <i class="fas fa-arrow-{{ $transaction->type == 'in' ? 'down' : 'up' }} mr-2"></i>
                                        {{ $transaction->type == 'in' ? 'Barang Masuk' : 'Barang Keluar' }}
                                    </span>
                                </div>
                            </div>

                            <div>
                                <label class="text-sm font-medium text-gray-500">Barang</label>
                                <p class="mt-1 text-lg font-semibold text-gray-900">{{ $transaction->item->name }}</p>
                                <p class="text-sm text-gray-500">Kode: {{ $transaction->item->item_code }}</p>
                            </div>

                            <div>
                                <label class="text-sm font-medium text-gray-500">Jumlah</label>
                                <p class="mt-1 text-lg font-semibold text-gray-900">
                                    {{ $transaction->quantity }} {{ $transaction->item->unit }}
                                </p>
                            </div>

                            <div>
                                <label class="text-sm font-medium text-gray-500">Rak</label>
                                <p class="mt-1 text-lg font-semibold text-gray-900">{{ $transaction->rack->name }}</p>
                                <p class="text-sm text-gray-500">Kode: {{ $transaction->rack->code }}</p>
                            </div>
                        </div>

                        <!-- Right Column -->
                        <div class="space-y-4">
                            <div>
                                <label class="text-sm font-medium text-gray-500">Dibuat Oleh</label>
                                <p class="mt-1 text-lg font-semibold text-gray-900">{{ $transaction->user->name }}</p>
                                <p class="text-sm text-gray-500">{{ $transaction->user->email }}</p>
                            </div>

                            @if($transaction->status != 'pending')
                                <div>
                                    <label class="text-sm font-medium text-gray-500">
                                        {{ $transaction->status == 'approved' ? 'Disetujui Oleh' : 'Ditolak Oleh' }}
                                    </label>
                                    <p class="mt-1 text-lg font-semibold text-gray-900">
                                        {{ $transaction->approver->name ?? '-' }}
                                    </p>
                                    <p class="text-sm text-gray-500">
                                        {{ $transaction->approved_at ? $transaction->approved_at->format('d F Y, H:i') : '-' }}
                                    </p>
                                </div>
                            @endif

                            @if($transaction->status == 'rejected' && $transaction->rejection_reason)
                                <div>
                                    <label class="text-sm font-medium text-gray-500">Alasan Penolakan</label>
                                    <div class="mt-1 p-3 bg-red-50 border border-red-200 rounded-lg">
                                        <p class="text-sm text-red-800">{{ $transaction->rejection_reason }}</p>
                                    </div>
                                </div>
                            @endif

                            @if($transaction->notes)
                                <div>
                                    <label class="text-sm font-medium text-gray-500">Catatan</label>
                                    <div class="mt-1 p-3 bg-gray-50 border border-gray-200 rounded-lg">
                                        <p class="text-sm text-gray-700">{{ $transaction->notes }}</p>
                                    </div>
                                </div>
                            @endif
                        </div>
                    </div>

                    <!-- Photo Evidence -->
                    @if($transaction->photo)
                        <div class="mb-6">
                            <label class="text-sm font-medium text-gray-500 block mb-3">Bukti Foto</label>
                            <div class="bg-gray-100 p-4 rounded-lg">
                                <img src="{{ $transaction->photo_url }}"
                                    alt="Transaction Photo"
                                    class="max-w-full h-auto rounded-lg shadow-lg cursor-pointer"
                                    onclick="document.getElementById('photoModal').classList.remove('hidden')">
                            </div>
                            <p class="text-xs text-gray-500 mt-2">
                                <i class="fas fa-info-circle mr-1"></i>
                                Klik gambar untuk memperbesar
                            </p>
                        </div>

                        <!-- Photo Modal -->
                        <div id="photoModal" class="hidden fixed inset-0 bg-black bg-opacity-75 z-50 flex items-center justify-center p-4"
                            onclick="this.classList.add('hidden')">
                            <div class="max-w-4xl w-full">
                                <img src="{{ $transaction->photo_url }}"
                                    alt="Transaction Photo"
                                    class="w-full h-auto rounded-lg">
                            </div>
                        </div>
                    @else
                        <div class="mb-6">
                            <label class="text-sm font-medium text-gray-500 block mb-3">Bukti Foto</label>
                            <div class="bg-gray-50 p-8 rounded-lg text-center">
                                <i class="fas fa-camera-slash text-gray-400 text-4xl mb-2"></i>
                                <p class="text-gray-500">Tidak ada bukti foto</p>
                            </div>
                        </div>
                    @endif

                    <!-- Action Buttons -->
                    @if($transaction->status == 'pending')
                        <div class="flex items-center justify-end space-x-3 pt-6 border-t">
                            <button wire:click="openRejectModal"
                                class="px-6 py-2 bg-red-600 text-white font-semibold rounded-lg hover:bg-red-700 transition">
                                <i class="fas fa-times mr-2"></i>Tolak
                            </button>
                            <button wire:click="approve"
                                wire:loading.attr="disabled"
                                wire:confirm="Anda yakin ingin approve transaksi ini? Stock akan otomatis diupdate."
                                class="px-6 py-2 bg-green-600 text-white font-semibold rounded-lg hover:bg-green-700 transition">
                                <i class="fas fa-check mr-2"></i>
                                <span wire:loading.remove>Setujui</span>
                                <span wire:loading>Memproses...</span>
                            </button>
                        </div>
                    @endif
                </div>
            </div>

            <!-- Reject Modal -->
            @if($showRejectModal)
                <div class="fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
                    <div class="bg-white rounded-lg p-6 max-w-md w-full">
                        <h3 class="text-lg font-semibold text-gray-900 mb-4">Tolak Transaksi</h3>

                        <div class="mb-4">
                            <x-input-label for="rejectionReason" value="Alasan Penolakan *" />
                            <textarea wire:model="rejectionReason" id="rejectionReason" rows="4"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"
                                placeholder="Jelaskan alasan penolakan transaksi ini..."></textarea>
                            @error('rejectionReason')
                                <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                            @enderror
                        </div>

                        <div class="flex items-center justify-end space-x-3">
                            <button wire:click="closeRejectModal"
                                class="px-4 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 transition">
                                Batal
                            </button>
                            <button wire:click="reject"
                                wire:loading.attr="disabled"
                                class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition">
                                <span wire:loading.remove>Tolak Transaksi</span>
                                <span wire:loading>Memproses...</span>
                            </button>
                        </div>
                    </div>
                </div>
            @endif

        </div>
    </div>
</div>
