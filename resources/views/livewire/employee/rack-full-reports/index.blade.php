<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Laporan Rak Penuh') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-5xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <form wire:submit.prevent="submitReport" class="p-6">
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

                    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                        <div>
                            <x-input-label for="rack_id" value="Pilih Rak" />
                            <select wire:model="rack_id" id="rack_id"
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
                            <x-input-error :messages="$errors->get('rack_id')" class="mt-2" />
                            @if($selectedRack)
                                @if($selectedRack->manual_full)
                                    <p class="mt-2 text-sm text-red-600">Rak ini ditandai penuh secara manual.</p>
                                @elseif($selectedRack->status === 'full')
                                    <p class="mt-2 text-sm text-red-600">Rak ini sudah penuh.</p>
                                @else
                                    <p class="mt-2 text-sm text-gray-600">Status rak: tersedia.</p>
                                @endif
                            @endif
                        </div>

                        <div>
                            <x-input-label for="photo" value="Foto (Opsional)" />
                            <input wire:model="photo" id="photo" type="file" accept="image/*"
                                class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4 file:rounded-full file:border-0 file:text-sm file:font-semibold file:bg-indigo-50 file:text-indigo-700 hover:file:bg-indigo-100">
                            <x-input-error :messages="$errors->get('photo')" class="mt-2" />
                            @if ($photo)
                                <div class="mt-3">
                                    <img src="{{ $photo->temporaryUrl() }}" class="h-28 rounded-lg border border-gray-200">
                                    <button type="button" wire:click="$set('photo', null)"
                                        class="mt-2 text-xs text-red-600 hover:text-red-800">Hapus foto</button>
                                </div>
                            @endif
                        </div>
                    </div>

                    <div class="mt-6">
                        <x-input-label for="notes" value="Catatan (Opsional)" />
                        <textarea wire:model="notes" id="notes" rows="3"
                            class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm text-sm"
                            placeholder="Tambahkan keterangan jika diperlukan..."></textarea>
                        <x-input-error :messages="$errors->get('notes')" class="mt-2" />
                    </div>

                    <div class="flex justify-end mt-6">
                        <x-primary-button>
                            Kirim Laporan
                        </x-primary-button>
                    </div>
                </form>
            </div>

            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">Riwayat Laporan</h3>
                        <select wire:model="perPage"
                            class="border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm text-sm">
                            <option value="5">5</option>
                            <option value="10">10</option>
                            <option value="25">25</option>
                        </select>
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Tanggal</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Rak</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Status</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Foto</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Catatan</th>
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
                                            {!! $report->status_badge !!}
                                            @if($report->approved_at)
                                                <div class="text-xs text-gray-500 mt-1">
                                                    {{ $report->approved_at->format('d/m/Y H:i') }}
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
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="5" class="px-4 py-4 text-center text-gray-500">
                                            Belum ada laporan.
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
    </div>
</div>
