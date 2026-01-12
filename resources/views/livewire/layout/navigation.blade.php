
<nav x-data="{ open: false }" class="bg-gradient-to-r from-indigo-600 via-purple-600 to-pink-600 shadow-lg border-b border-indigo-700">
    <!-- Primary Navigation Menu -->
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
            <div class="flex">
                <!-- Logo -->
                <div class="shrink-0 flex items-center">
                    <a href="{{ route('redirect') }}" wire:navigate class="flex items-center space-x-3 group">
                        <div class="relative">
                            <x-application-logo class="block h-10 w-auto fill-current text-white drop-shadow-lg group-hover:scale-110 transition-transform duration-300" />
                            <div class="absolute inset-0 bg-white/20 rounded-full blur-xl group-hover:bg-white/30 transition-all duration-300"></div>
                        </div>
                        <span class="text-white font-bold text-xl hidden lg:block tracking-tight">WMS</span>
                    </a>
                </div>

                <!-- Navigation Links -->
                <div class="hidden space-x-2 sm:-my-px sm:ms-10 sm:flex items-center">
                    
                    <!-- MENU ADMIN -->
                    {{-- GANTI @role('admin') DENGAN @if --}}
                    @if(auth()->user()->role == 'admin')
                        <x-nav-link :href="route('admin.dashboard')" :active="request()->routeIs('admin.dashboard')" wire:navigate 
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                                </svg>
                                <span>{{ __('Dashboard') }}</span>
                            </span>
                        </x-nav-link>
                        
                        <!-- Master Data Dropdown -->
                        <div class="hidden sm:flex sm:items-center">
                            <x-dropdown align="right" width="56">
                                <x-slot name="trigger">
                                    <button class="inline-flex items-center space-x-2 px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4m0 5c0 2.21-3.582 4-8 4s-8-1.79-8-4"></path>
                                        </svg>
                                        <span>Master Data</span>
                                        <svg class="fill-current h-4 w-4 transition-transform group-hover:rotate-180 duration-200" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                                        </svg>
                                    </button>
                                </x-slot>
                                <x-slot name="content">
                                    <div class="py-1 bg-white rounded-lg shadow-xl border border-gray-100">
                                        <x-dropdown-link :href="route('admin.users.index')" wire:navigate 
                                            class="flex items-center space-x-3 px-4 py-3 hover:bg-gradient-to-r hover:from-indigo-50 hover:to-purple-50 transition-all duration-200">
                                            <svg class="w-4 h-4 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                                            </svg>
                                            <span>{{ __('Users') }}</span>
                                        </x-dropdown-link>
                                        <x-dropdown-link :href="route('admin.items.index')" wire:navigate 
                                            class="flex items-center space-x-3 px-4 py-3 hover:bg-gradient-to-r hover:from-indigo-50 hover:to-purple-50 transition-all duration-200">
                                            <svg class="w-4 h-4 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"></path>
                                            </svg>
                                            <span>{{ __('Items') }}</span>
                                        </x-dropdown-link>
                                        <x-dropdown-link :href="route('admin.suppliers.index')" wire:navigate 
                                            class="flex items-center space-x-3 px-4 py-3 hover:bg-gradient-to-r hover:from-indigo-50 hover:to-purple-50 transition-all duration-200">
                                            <svg class="w-4 h-4 text-pink-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"></path>
                                            </svg>
                                            <span>{{ __('Suppliers') }}</span>
                                        </x-dropdown-link>
                                        <x-dropdown-link :href="route('admin.racks.index')" wire:navigate 
                                            class="flex items-center space-x-3 px-4 py-3 hover:bg-gradient-to-r hover:from-indigo-50 hover:to-purple-50 transition-all duration-200">
                                            <svg class="w-4 h-4 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z"></path>
                                            </svg>
                                            <span>{{ __('Racks') }}</span>
                                        </x-dropdown-link>
                                    </div>
                                </x-slot>
                            </x-dropdown>
                        </div>

                        <!-- Transaksi Link -->
                        <x-nav-link :href="route('admin.transactions.index')" :active="request()->routeIs('admin.transactions.*')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"></path>
                                </svg>
                                <span>{{ __('Transaksi') }}</span>
                            </span>
                        </x-nav-link>

                        <x-nav-link :href="route('admin.rack-full-reports.index')" :active="request()->routeIs('admin.rack-full-reports.*')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 10h16M4 14h16M4 18h16"></path>
                                </svg>
                                <span>{{ __('Rak Penuh') }}</span>
                            </span>
                        </x-nav-link>

                    @endif {{-- GANTI @endrole DENGAN @endif --}}

                    <!-- MENU MANAGER -->
                    @if(auth()->user()->role == 'manager')
                        <x-nav-link :href="route('manager.dashboard')" :active="request()->routeIs('manager.dashboard')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                                </svg>
                                <span>{{ __('Dashboard') }}</span>
                            </span>
                        </x-nav-link>

                        <x-nav-link :href="route('manager.users.index')" :active="request()->routeIs('manager.users.*')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z"></path>
                                </svg>
                                <span>{{ __('Kelola User') }}</span>
                            </span>
                        </x-nav-link>

                        <x-nav-link :href="route('manager.forecasts.index')" :active="request()->routeIs('manager.forecasts.*')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 19h16M4 15h4M4 11h8M4 7h12"></path>
                                </svg>
                                <span>{{ __('Forecasting') }}</span>
                            </span>
                        </x-nav-link>
                    @endif
                    
                    <!-- MENU KARYAWAN -->
                    {{-- GANTI @role('karyawan') DENGAN @if --}}
                    @if(auth()->user()->role == 'karyawan')
                        <x-nav-link :href="route('employee.dashboard')" :active="request()->routeIs('employee.dashboard')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"></path>
                                </svg>
                                <span>{{ __('Dashboard') }}</span>
                            </span>
                        </x-nav-link>

                        <x-nav-link :href="route('employee.rack-full-reports.index')" :active="request()->routeIs('employee.rack-full-reports.*')" wire:navigate
                            class="relative px-4 py-2 text-white/90 hover:text-white font-medium transition-all duration-200 hover:bg-white/10 rounded-lg group">
                            <span class="flex items-center space-x-2">
                                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 10h16M4 14h16M4 18h16"></path>
                                </svg>
                                <span>{{ __('Lapor Rak Penuh') }}</span>
                            </span>
                        </x-nav-link>
                    @endif {{-- GANTI @endrole DENGAN @endif --}}

                </div>
            </div>

            <!-- Settings Dropdown -->
            <div class="hidden sm:flex sm:items-center sm:ms-6">
                <x-dropdown align="right" width="48">
                    <x-slot name="trigger">
                        <button class="inline-flex items-center space-x-3 px-4 py-2 bg-white/10 hover:bg-white/20 text-white rounded-lg transition-all duration-200 group border border-white/20">
                            <div class="w-8 h-8 rounded-full bg-gradient-to-br from-yellow-400 to-orange-500 flex items-center justify-center text-white font-bold text-sm shadow-lg">
                                {{ strtoupper(substr(auth()->user()->name, 0, 1)) }}
                            </div>
                            <div class="text-left hidden lg:block">
                                <div x-data="{ name: '{{ auth()->user()->name }}' }" x-text="name" x-on:profile-updated.window="name = $event.detail.name" class="font-medium text-sm"></div>
                                <div class="text-xs text-white/70">{{ ucfirst(auth()->user()->role ?? 'User') }}</div>
                            </div>
                            <svg class="fill-current h-4 w-4 transition-transform group-hover:rotate-180 duration-200" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                            </svg>
                        </button>
                    </x-slot>

                    <x-slot name="content">
                        <div class="py-1 bg-white rounded-lg shadow-xl border border-gray-100">
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                <button type="submit" class="w-full text-start">
                                    <x-dropdown-link class="flex items-center space-x-3 px-4 py-3 hover:bg-gradient-to-r hover:from-red-50 hover:to-pink-50 transition-all duration-200 text-red-600">
                                        <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                                        </svg>
                                        <span class="font-medium">{{ __('Log Out') }}</span>
                                    </x-dropdown-link>
                                </button>
                            </form>
                        </div>
                    </x-slot>
                </x-dropdown>
            </div>

            <!-- Hamburger -->
            <div class="-me-2 flex items-center sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-lg text-white hover:bg-white/10 focus:outline-none focus:bg-white/20 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
        </div>
    </div>

    <!-- Responsive Navigation Menu -->
    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden bg-white/10 backdrop-blur-lg">
        <div class="pt-2 pb-3 space-y-1 px-4">
            <x-responsive-nav-link :href="route('redirect')" :active="request()->routeIs('dashboard')" wire:navigate 
                class="text-white hover:bg-white/10 rounded-lg transition-all duration-200">
                {{ __('Dashboard') }}
            </x-responsive-nav-link>
            @if(auth()->user()->role == 'admin')
                <x-responsive-nav-link :href="route('admin.rack-full-reports.index')" :active="request()->routeIs('admin.rack-full-reports.*')" wire:navigate
                    class="text-white hover:bg-white/10 rounded-lg transition-all duration-200">
                    {{ __('Rak Penuh') }}
                </x-responsive-nav-link>
            @endif
            @if(auth()->user()->role == 'manager')
                <x-responsive-nav-link :href="route('manager.forecasts.index')" :active="request()->routeIs('manager.forecasts.*')" wire:navigate
                    class="text-white hover:bg-white/10 rounded-lg transition-all duration-200">
                    {{ __('Forecasting') }}
                </x-responsive-nav-link>
            @endif
            @if(auth()->user()->role == 'karyawan')
                <x-responsive-nav-link :href="route('employee.rack-full-reports.index')" :active="request()->routeIs('employee.rack-full-reports.*')" wire:navigate
                    class="text-white hover:bg-white/10 rounded-lg transition-all duration-200">
                    {{ __('Lapor Rak Penuh') }}
                </x-responsive-nav-link>
            @endif
        </div>

        <!-- Responsive Settings Options -->
        <div class="pt-4 pb-1 border-t border-white/20">
            <div class="px-4 flex items-center space-x-3">
                <div class="w-10 h-10 rounded-full bg-gradient-to-br from-yellow-400 to-orange-500 flex items-center justify-center text-white font-bold shadow-lg">
                    {{ strtoupper(substr(auth()->user()->name, 0, 1)) }}
                </div>
                <div>
                    <div class="font-medium text-base text-white" x-data="{ name: '{{ auth()->user()->name }}' }" x-text="name" x-on:profile-updated.window="name = $event.detail.name"></div>
                    <div class="font-medium text-sm text-white/70">{{ auth()->user()->email }}</div>
                </div>
            </div>

            <div class="mt-3 space-y-1 px-4">
                {{-- <x-responsive-nav-link :href="route('profile.show')" wire:navigate>
                    {{ __('Profile') }}
                </x-responsive-nav-link> --}}

                <!-- Authentication -->
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <button type="submit" class="w-full text-start">
                        <x-responsive-nav-link class="text-red-100 hover:bg-red-500/20 rounded-lg transition-all duration-200 flex items-center space-x-2">
                            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
                            </svg>
                            <span>{{ __('Log Out') }}</span>
                        </x-responsive-nav-link>
                    </button>
                </form>
            </div>
        </div>
    </div>
</nav>
