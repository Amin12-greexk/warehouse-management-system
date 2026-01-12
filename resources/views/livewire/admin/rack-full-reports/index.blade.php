<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Validasi Rak Penuh') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
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

                    <h3 class="text-lg font-semibold text-gray-800 mb-4">Tandai Rak Penuh (Admin)</h3>
                    <form wire:submit.prevent="submitManualFull" class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <x-input-label for="manualRackId" value="Rak" />
                            <select wire:model="manualRackId" id="manualRackId"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"
                                required>
                                <option value="">-- Pilih Rak --</option>
                                @foreach($racks as $rack)
                                    <option value="{{ $rack->id }}">
                                        {{ $rack->name }} ({{ $rack->rack_code }}) - {{ $rack->location }}
                                        @if($rack->status === 'full' || $rack->manual_full)
                                            - Penuh
                                        @endif
                                    </option>
                                @endforeach
                            </select>
                            <x-input-error :messages="$errors->get('manualRackId')" class="mt-2" />
                        </div>

                        <div>
                            <x-input-label for="manualPhoto" value="Foto (Opsional)" />
                            <input wire:model="manualPhoto" id="manualPhoto" type="file" accept="image/*"
                                class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-indigo-50 file:text-indigo-700 hover:file:bg-indigo-100">
                            <x-input-error :messages="$errors->get('manualPhoto')" class="mt-2" />
                            @if ($manualPhoto)
                                <div class="mt-3">
                                    <img src="{{ $manualPhoto->temporaryUrl() }}" class="h-28 rounded-lg border border-gray-200">
                                    <button type="button" wire:click="$set('manualPhoto', null)"
                                        class="mt-2 text-xs text-red-600 hover:text-red-800">Hapus foto</button>
                                </div>
                            @endif
                        </div>

                        <div class="md:col-span-2">
                            <x-input-label for="manualNotes" value="Catatan (Opsional)" />
                            <textarea wire:model="manualNotes" id="manualNotes" rows="3"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm text-sm"
                                placeholder="Catatan inspeksi..."></textarea>
                            <x-input-error :messages="$errors->get('manualNotes')" class="mt-2" />
                        </div>

                        <div class="md:col-span-2 flex justify-end">
                            <x-primary-button>
                                Tandai Penuh
                            </x-primary-button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    <div class="flex flex-col md:flex-row md:items-end md:justify-between gap-4 mb-4">
                        <div class="flex-1">
                            <x-input-label for="search" value="Cari Laporan" />
                            <x-text-input wire:model.live.debounce.300ms="search" id="search" type="text"
                                class="mt-1 block w-full" placeholder="Rak, pelapor, atau catatan..." />
                        </div>
                        <div class="w-full md:w-56">
                            <x-input-label for="statusFilter" value="Status" />
                            <select wire:model.live="statusFilter" id="statusFilter"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua Status</option>
                                <option value="pending">Pending</option>
                                <option value="approved">Approved</option>
                                <option value="rejected">Rejected</option>
                            </select>
                        </div>
                        <div class="w-full md:w-28">
                            <x-input-label for="perPage" value="Per Hal." />
                            <select wire:model="perPage" id="perPage"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option value="25">25</option>
                            </select>
                        </div>
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tanggal</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Rak</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Pelapor</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Foto</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Catatan</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Aksi</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @forelse ($reports as $report)
                                    <tr>
                                        <td class="px-4 py-3 text-sm text-gray-600 whitespace-nowrap">
                                            {{ $report->created_at->format('d/m/Y H:i') }}
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-900">
                                            {{ $report->rack->name ?? '-' }} ({{ $report->rack->rack_code ?? '-' }})
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-900">
                                            {{ $report->reporter->name ?? '-' }}
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-900">
                                            {!! $report->status_badge !!}
                                            @if($report->approver)
                                                <div class="text-xs text-gray-500 mt-1">
                                                    {{ $report->approver->name }} • {{ optional($report->approved_at)->format('d/m/Y H:i') }}
                                                </div>
                                            @endif
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-600">
                                            @if($report->photo_url)
                                                <a href="{{ $report->photo_url }}" target="_blank" class="text-indigo-600 hover:text-indigo-800">Lihat</a>
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-600">
                                            <div>{{ $report->notes ?: '-' }}</div>
                                            @if($report->status === 'rejected' && $report->rejection_reason)
                                                <div class="mt-1 text-xs text-red-600">
                                                    Alasan: {{ $report->rejection_reason }}
                                                </div>
                                            @endif
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-600">
                                            @if($report->status === 'pending')
                                                <div class="flex flex-col space-y-2">
                                                    <button wire:click="approveReport({{ $report->id }})"
                                                        wire:confirm="Setujui laporan ini?"
                                                        class="text-green-600 hover:text-green-800 text-left">
                                                        <i class="fas fa-check mr-1"></i>Approve
                                                    </button>
                                                    <button wire:click="openRejectModal({{ $report->id }})"
                                                        class="text-red-600 hover:text-red-800 text-left">
                                                        <i class="fas fa-times mr-1"></i>Reject
                                                    </button>
                                                </div>
                                            @else
                                                -
                                            @endif
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="7" class="px-4 py-4 text-center text-gray-500">
                                            Tidak ada laporan.
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $reports->links() }}
                    </div>
                </div>
            </div>
        </div>

        @if($showRejectModal)
            <div class="fixed inset-0 bg-black bg-opacity-50 z-50 flex items-center justify-center p-4">
                <div class="bg-white rounded-lg p-6 max-w-md w-full">
                    <h3 class="text-lg font-semibold text-gray-900 mb-4">Tolak Laporan</h3>

                    <div class="mb-4">
                        <x-input-label for="rejectReason" value="Alasan Penolakan *" />
                        <textarea wire:model="rejectReason" id="rejectReason" rows="4"
                            class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"
                            placeholder="Jelaskan alasan penolakan..."></textarea>
                        @error('rejectReason')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <div class="flex items-center justify-end space-x-3">
                        <button wire:click="closeRejectModal"
                            class="px-4 py-2 bg-gray-200 text-gray-700 rounded-lg hover:bg-gray-300 transition">
                            Batal
                        </button>
                        <button wire:click="rejectReport"
                            wire:loading.attr="disabled"
                            class="px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition">
                            <span wire:loading.remove>Tolak</span>
                            <span wire:loading>Memproses...</span>
                        </button>
                    </div>
                </div>
            </div>
        @endif
    </div>
</div>
