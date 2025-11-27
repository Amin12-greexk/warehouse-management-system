<div>
    <style>
        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-20px);
            }
        }

        @keyframes pulse-slow {
            0%, 100% {
                opacity: 0.6;
            }
            50% {
                opacity: 0.8;
            }
        }

        .float-animation {
            animation: float 6s ease-in-out infinite;
        }

        .pulse-animation {
            animation: pulse-slow 4s ease-in-out infinite;
        }
    </style>

    <div class="min-h-screen bg-gradient-to-br from-indigo-100 via-purple-50 to-pink-100 flex items-center justify-center p-4 sm:p-6 lg:p-8 relative overflow-hidden">
        <!-- Animated Background Elements -->
        <div class="absolute inset-0 overflow-hidden pointer-events-none">
            <div class="absolute top-20 left-10 w-48 h-48 sm:w-72 sm:h-72 bg-purple-300 rounded-full mix-blend-multiply filter blur-3xl opacity-40 pulse-animation"></div>
            <div class="absolute top-40 right-10 w-48 h-48 sm:w-72 sm:h-72 bg-indigo-300 rounded-full mix-blend-multiply filter blur-3xl opacity-40 pulse-animation" style="animation-delay: 2s;"></div>
            <div class="absolute -bottom-20 left-1/3 w-48 h-48 sm:w-72 sm:h-72 bg-pink-300 rounded-full mix-blend-multiply filter blur-3xl opacity-40 pulse-animation" style="animation-delay: 4s;"></div>
        </div>

        <!-- Login Container -->
        <div class="relative w-full max-w-6xl">
            <div class="grid lg:grid-cols-2 gap-8 lg:gap-12 items-center">

                <!-- Left Side - Branding & Illustration -->
                <div class="hidden lg:flex flex-col items-center justify-center text-center space-y-8 float-animation">
                    <div class="relative">
                        <div class="absolute inset-0 bg-gradient-to-r from-indigo-500 to-purple-600 rounded-full blur-3xl opacity-50"></div>
                        <div class="relative bg-white/90 backdrop-blur-sm p-10 rounded-3xl shadow-2xl">
                            <svg class="w-40 h-40 text-indigo-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5"
                                    d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"></path>
                            </svg>
                        </div>
                    </div>
                    <div class="space-y-4">
                        <h1 class="text-5xl font-bold text-gray-800 leading-tight">
                            Warehouse<br>Management
                        </h1>
                        <p class="text-xl text-gray-600 max-w-md">
                            Kelola gudang Anda dengan sistem yang modern, efisien, dan terintegrasi
                        </p>
                    </div>
                    <div class="flex gap-12 mt-8">
                        <div class="text-center">
                            <div class="text-4xl font-bold text-indigo-600">100%</div>
                            <div class="text-sm text-gray-600 mt-1">Akurasi</div>
                        </div>
                        <div class="text-center">
                            <div class="text-4xl font-bold text-purple-600">24/7</div>
                            <div class="text-sm text-gray-600 mt-1">Support</div>
                        </div>
                        <div class="text-center">
                            <div class="text-4xl font-bold text-pink-600">Fast</div>
                            <div class="text-sm text-gray-600 mt-1">Processing</div>
                        </div>
                    </div>
                </div>

                <!-- Right Side - Login Form -->
                <div class="w-full">
                    <div class="bg-white/95 backdrop-blur-xl rounded-2xl sm:rounded-3xl shadow-2xl p-6 sm:p-8 lg:p-10 border border-white/50">
                        <!-- Logo for smaller screens -->
                        <div class="lg:hidden text-center mb-6">
                            <div class="inline-flex items-center justify-center w-16 h-16 bg-gradient-to-br from-indigo-500 to-purple-600 rounded-2xl mb-3 shadow-lg">
                                <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"></path>
                                </svg>
                            </div>
                            <h1 class="text-2xl font-bold text-gray-800">Warehouse Management</h1>
                        </div>

                        <!-- Header -->
                        <div class="mb-6 sm:mb-8">
                            <h2 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-2">
                                Selamat Datang! 👋
                            </h2>
                            <p class="text-sm sm:text-base text-gray-600">
                                Silakan masuk untuk melanjutkan ke dashboard
                            </p>
                        </div>

                        <!-- Error Messages -->
                        @if ($errors->has('username') || $errors->has('password'))
                            @if (session()->has('error'))
                                <div class="mb-6 p-4 bg-red-50 border-l-4 border-red-500 rounded-lg">
                                    <div class="flex items-center">
                                        <svg class="w-5 h-5 text-red-500 mr-2 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" clip-rule="evenodd"/>
                                        </svg>
                                        <span class="text-sm sm:text-base text-red-700 font-medium">{{ session('error') }}</span>
                                    </div>
                                </div>
                            @endif
                        @endif

                        <!-- Login Form -->
                        <form wire:submit="login" class="space-y-5 sm:space-y-6">
                            <!-- Username Field -->
                            <div>
                                <label for="username" class="block text-sm font-semibold text-gray-700 mb-2">
                                    Username
                                </label>
                                <div class="relative group">
                                    <div class="absolute inset-y-0 left-0 pl-3 sm:pl-4 flex items-center pointer-events-none">
                                        <svg class="h-5 w-5 text-gray-400 group-focus-within:text-indigo-500 transition-colors" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
                                        </svg>
                                    </div>
                                    <input id="username" type="text" wire:model="username"
                                        class="block w-full pl-10 sm:pl-12 pr-4 py-3 sm:py-3.5 text-sm sm:text-base text-gray-900 border border-gray-300 rounded-xl focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all duration-200 bg-gray-50 focus:bg-white @error('username') border-red-500 bg-red-50 @enderror"
                                        placeholder="Masukkan username Anda"
                                        autofocus>
                                </div>
                                @error('username')
                                    <p class="mt-2 text-xs sm:text-sm text-red-600 flex items-center">
                                        <svg class="w-4 h-4 mr-1 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd"/>
                                        </svg>
                                        {{ $message }}
                                    </p>
                                @enderror
                            </div>

                            <!-- Password Field -->
                            <div>
                                <label for="password" class="block text-sm font-semibold text-gray-700 mb-2">
                                    Password
                                </label>
                                <div class="relative group">
                                    <div class="absolute inset-y-0 left-0 pl-3 sm:pl-4 flex items-center pointer-events-none">
                                        <svg class="h-5 w-5 text-gray-400 group-focus-within:text-indigo-500 transition-colors" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M12 15v2m-6 4h12a2 2 0 002-2v-6a2 2 0 00-2-2H6a2 2 0 00-2 2v6a2 2 0 002 2zm10-10V7a4 4 0 00-8 0v4h8z">
                                            </path>
                                        </svg>
                                    </div>
                                    <input id="password" type="password" wire:model="password"
                                        class="block w-full pl-10 sm:pl-12 pr-4 py-3 sm:py-3.5 text-sm sm:text-base text-gray-900 border border-gray-300 rounded-xl focus:ring-2 focus:ring-indigo-500 focus:border-transparent transition-all duration-200 bg-gray-50 focus:bg-white @error('password') border-red-500 bg-red-50 @enderror"
                                        placeholder="Masukkan password Anda">
                                </div>
                                @error('password')
                                    <p class="mt-2 text-xs sm:text-sm text-red-600 flex items-center">
                                        <svg class="w-4 h-4 mr-1 flex-shrink-0" fill="currentColor" viewBox="0 0 20 20">
                                            <path fill-rule="evenodd" d="M18 10a8 8 0 11-16 0 8 8 0 0116 0zm-7 4a1 1 0 11-2 0 1 1 0 012 0zm-1-9a1 1 0 00-1 1v4a1 1 0 102 0V6a1 1 0 00-1-1z" clip-rule="evenodd"/>
                                        </svg>
                                        {{ $message }}
                                    </p>
                                @enderror
                            </div>

                            <!-- Remember Me -->
                            <div class="flex items-center justify-between">
                                <label class="flex items-center group cursor-pointer">
                                    <input id="remember" type="checkbox" wire:model="remember"
                                        class="w-4 h-4 text-indigo-600 bg-gray-100 border-gray-300 rounded focus:ring-indigo-500 focus:ring-2 cursor-pointer">
                                    <span class="ml-2 text-xs sm:text-sm text-gray-700 group-hover:text-gray-900 transition-colors select-none">
                                        Ingat saya
                                    </span>
                                </label>
                            </div>

                            <!-- Submit Button -->
                            <button type="submit"
                                class="w-full bg-gradient-to-r from-indigo-600 to-purple-600 hover:from-indigo-700 hover:to-purple-700 text-white py-3 sm:py-3.5 px-6 rounded-xl font-semibold text-sm sm:text-base shadow-lg hover:shadow-xl transform hover:-translate-y-0.5 transition-all duration-200 flex items-center justify-center gap-2">
                                <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1">
                                    </path>
                                </svg>
                                Masuk ke Dashboard
                            </button>
                        </form>

                        <!-- Demo Accounts -->
                        @if(app()->environment('local'))
                            <div class="mt-6 sm:mt-8 pt-6 border-t border-gray-200">
                                <div class="flex items-center justify-center mb-4">
                                    <div class="flex-grow border-t border-gray-300"></div>
                                    <span class="px-3 sm:px-4 text-xs font-semibold text-gray-500 uppercase">Akun Demo</span>
                                    <div class="flex-grow border-t border-gray-300"></div>
                                </div>
                                <div class="grid grid-cols-1 sm:grid-cols-3 gap-3">
                                    <div class="p-3 sm:p-4 bg-gradient-to-br from-purple-50 to-purple-100 rounded-xl border border-purple-200 text-center hover:shadow-md transition-shadow">
                                        <div class="text-xs sm:text-sm font-bold text-purple-700 mb-1">Admin</div>
                                        <div class="text-xs text-purple-600 font-mono">admin</div>
                                        <div class="text-xs text-purple-500">password</div>
                                    </div>
                                    <div class="p-3 sm:p-4 bg-gradient-to-br from-indigo-50 to-indigo-100 rounded-xl border border-indigo-200 text-center hover:shadow-md transition-shadow">
                                        <div class="text-xs sm:text-sm font-bold text-indigo-700 mb-1">Manager</div>
                                        <div class="text-xs text-indigo-600 font-mono">manager</div>
                                        <div class="text-xs text-indigo-500">password</div>
                                    </div>
                                    <div class="p-3 sm:p-4 bg-gradient-to-br from-pink-50 to-pink-100 rounded-xl border border-pink-200 text-center hover:shadow-md transition-shadow">
                                        <div class="text-xs sm:text-sm font-bold text-pink-700 mb-1">Karyawan</div>
                                        <div class="text-xs text-pink-600 font-mono">karyawan</div>
                                        <div class="text-xs text-pink-500">password</div>
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>

                    <!-- Footer -->
                    <p class="text-center mt-4 sm:mt-6 text-xs sm:text-sm text-gray-600">
                        © 2024 Warehouse Management System. All rights reserved.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
