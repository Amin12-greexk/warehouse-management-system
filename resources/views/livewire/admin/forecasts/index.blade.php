<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Forecasting') }}
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

                    <h3 class="text-lg font-semibold text-gray-800 mb-4">Generate Forecast</h3>
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-4 items-end">
                        <div>
                            <x-input-label for="generateHorizon" value="Horizon (bulan)" />
                            <select wire:model="generateHorizon" id="generateHorizon"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="3">3</option>
                                <option value="6">6</option>
                                <option value="12">12</option>
                            </select>
                        </div>
                        <div>
                            <x-input-label for="generateSeason" value="Season Length" />
                            <x-text-input wire:model="generateSeason" id="generateSeason" type="number" min="2"
                                class="mt-1 block w-full" />
                        </div>
                        <div>
                            <x-input-label for="generateMethod" value="Metode" />
                            <select wire:model="generateMethod" id="generateMethod"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="auto">Auto (pilih sesuai data)</option>
                                <option value="seasonal">Holt-Winters (Seasonal)</option>
                                <option value="trend">Holt's Linear (Trend)</option>
                                <option value="simple">Simple Exp (Basic)</option>
                            </select>
                        </div>
                        <div class="flex md:justify-end">
                            <x-primary-button wire:click="generateForecasts" wire:loading.attr="disabled">
                                <span wire:loading.remove>Generate</span>
                                <span wire:loading>Memproses...</span>
                            </x-primary-button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    <div class="grid grid-cols-1 md:grid-cols-5 gap-4 mb-4">
                        <div class="md:col-span-2">
                            <x-input-label for="search" value="Cari Barang" />
                            <x-text-input wire:model.live.debounce.300ms="search" id="search" type="text"
                                class="mt-1 block w-full" placeholder="Kode atau nama barang..." />
                        </div>
                        <div>
                            <x-input-label for="horizonFilter" value="Horizon" />
                            <select wire:model.live="horizonFilter" id="horizonFilter"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="3">3 bulan</option>
                                <option value="6">6 bulan</option>
                                <option value="12">12 bulan</option>
                            </select>
                        </div>
                        <div>
                            <x-input-label for="methodFilter" value="Metode" />
                            <select wire:model.live="methodFilter" id="methodFilter"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="">Semua</option>
                                <option value="seasonal">Holt-Winters (Seasonal)</option>
                                <option value="trend">Holt's Linear (Trend)</option>
                                <option value="simple">Simple Exp (Basic)</option>
                            </select>
                        </div>
                        <div>
                            <x-input-label for="perPage" value="Per Hal." />
                            <select wire:model="perPage" id="perPage"
                                class="mt-1 block w-full border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm">
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                            </select>
                        </div>
                    </div>

                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                <tr>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Barang</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Periode</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Horizon</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Prediksi</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Metode</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Akurasi (uji 3 bulan)</th>
                                    <th class="px-4 py-3 text-left text-xs font-medium text-gray-500 uppercase">Update</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                @forelse ($forecasts as $forecast)
                                    <tr>
                                        <td class="px-4 py-3 text-sm text-gray-900">
                                            <div class="font-semibold">{{ $forecast->item->name ?? '-' }}</div>
                                            <div class="text-xs text-gray-500">{{ $forecast->item->item_code ?? '-' }}</div>
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-700">
                                            {{ str_pad($forecast->month, 2, '0', STR_PAD_LEFT) }}/{{ $forecast->year }}
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-700">
                                            {{ $forecast->horizon }} bulan
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-900 font-semibold">
                                            {{ number_format($forecast->predicted_qty, 2) }}
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-700">
                                            {{ $forecast->method_label }}
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-700">
                                            @if ($forecast->accuracy_percent !== null)
                                                {{ number_format($forecast->accuracy_percent, 1) }}%
                                                @if ($forecast->accuracy_value !== null)
                                                    ({{ number_format($forecast->accuracy_value, 4) }})
                                                @endif
                                            @else
                                                -
                                            @endif
                                        </td>
                                        <td class="px-4 py-3 text-sm text-gray-600">
                                            {{ $forecast->updated_at->format('d/m/Y H:i') }}
                                        </td>
                                    </tr>
                                @empty
                                    <tr>
                                        <td colspan="7" class="px-4 py-4 text-center text-gray-500">
                                            Belum ada data forecast.
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                        </table>
                    </div>

                    <div class="mt-4">
                        {{ $forecasts->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
