<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Forecasting') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="bg-white overflow-visible shadow-sm sm:rounded-lg">
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
                    <div class="mb-4">
                        <x-input-label for="generateItemInput" value="Barang" />
                        <div class="relative" data-combobox>
                            <div class="flex gap-2">
                                <input wire:model.debounce.300ms="generateItemInput" data-combobox-input
                                    id="generateItemInput"
                                    autocomplete="off"
                                    class="mt-1 block w-full px-4 py-2.5 text-base border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm"
                                    placeholder="Ketik kode atau nama barang..." />
                                <button type="button" data-combobox-toggle
                                    class="mt-1 shrink-0 px-3 py-2 text-white bg-black border border-black rounded-md hover:bg-gray-900 focus:outline-none focus:ring focus:ring-gray-300">
                                    ▼
                                </button>
                            </div>
                            <div data-combobox-list
                                class="absolute z-20 mt-2 w-full bg-white border border-gray-200 rounded-md shadow-lg max-h-64 overflow-auto hidden">
                                @foreach ($generateItems as $item)
                                    <button type="button" data-combobox-item data-value="{{ $item->item_code }} - {{ $item->name }}"
                                        class="w-full text-left px-3 py-2 text-sm hover:bg-indigo-50">
                                        <span class="font-semibold">{{ $item->item_code }}</span> - {{ $item->name }}
                                    </button>
                                @endforeach
                                <div data-combobox-hint class="px-3 py-2 text-xs text-gray-500">
                                    Ketik untuk melihat item lainnya.
                                </div>
                                <div data-combobox-empty class="px-3 py-2 text-sm text-gray-500 hidden">
                                    Tidak ada hasil
                                </div>
                            </div>
                        </div>
                        <p class="mt-1 text-xs text-gray-500">Contoh: A001UFF005 - Nama Barang</p>
                    </div>

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
                                <option value="hybrid">Hybrid (berdasarkan panjang data)</option>
                                <option value="auto">Auto (uji akurasi)</option>
                                <option value="seasonal">Holt-Winters (Seasonal)</option>
                                <option value="trend">Holt's Linear (Trend)</option>
                                <option value="simple">Simple Exp (Basic)</option>
                            </select>
                        </div>
                        <div class="flex md:justify-end">
                            <x-primary-button wire:click="generateForecasts" wire:loading.attr="disabled">
                                <span wire:loading.remove>Generate Item</span>
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

    @push('scripts')
        <script>
            function initAdminForecastComboboxes() {
                document.querySelectorAll('[data-combobox]').forEach((box) => {
                    if (box.dataset.comboboxReady === '1') {
                        return;
                    }
                    box.dataset.comboboxReady = '1';

                    const input = box.querySelector('[data-combobox-input]');
                    const toggle = box.querySelector('[data-combobox-toggle]');
                    const list = box.querySelector('[data-combobox-list]');
                    const hint = box.querySelector('[data-combobox-hint]');
                    const empty = box.querySelector('[data-combobox-empty]');
                    const items = Array.from(box.querySelectorAll('[data-combobox-item]'));
                    const maxVisible = 30;

                    if (!input || !toggle || !list) {
                        return;
                    }

                    const open = () => list.classList.remove('hidden');
                    const close = () => list.classList.add('hidden');
                    const filter = () => {
                        const query = (input.value || '').trim().toLowerCase();
                        let visible = 0;
                        items.forEach((item) => {
                            const value = (item.dataset.value || '').toLowerCase();
                            const match = query === ''
                                ? visible < maxVisible
                                : value.includes(query);
                            item.classList.toggle('hidden', !match);
                            if (match) {
                                visible++;
                            }
                        });
                        if (hint) {
                            hint.classList.toggle('hidden', query !== '');
                        }
                        if (empty) {
                            empty.classList.toggle('hidden', visible !== 0);
                        }
                    };

                    input.addEventListener('focus', () => {
                        filter();
                        open();
                    });
                    input.addEventListener('input', () => {
                        filter();
                        open();
                    });
                    toggle.addEventListener('click', () => {
                        if (list.classList.contains('hidden')) {
                            filter();
                            open();
                            input.focus();
                        } else {
                            close();
                        }
                    });
                    items.forEach((item) => {
                        item.addEventListener('click', () => {
                            input.value = item.dataset.value || '';
                            input.dispatchEvent(new Event('input', { bubbles: true }));
                            close();
                        });
                    });
                    document.addEventListener('click', (event) => {
                        if (!box.contains(event.target)) {
                            close();
                        }
                    });
                });
            }

            document.addEventListener('DOMContentLoaded', initAdminForecastComboboxes);
            document.addEventListener('livewire:init', () => {
                initAdminForecastComboboxes();
                Livewire.hook('message.processed', () => {
                    initAdminForecastComboboxes();
                });
            });
        </script>
    @endpush
</div>
