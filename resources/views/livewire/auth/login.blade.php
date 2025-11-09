<div>
    <div class="min-h-screen flex flex-col sm:justify-center items-center pt-6 sm:pt-0 bg-gray-100">
        <div>
            <a href="/" wire:navigate>
                <x-application-logo class="w-20 h-20 fill-current text-gray-500" />
            </a>
        </div>

        <div class="w-full sm:max-w-md mt-6 px-6 py-8 bg-white shadow-xl overflow-hidden sm:rounded-lg">

            <h2 class="mt-2 text-center text-3xl font-bold text-gray-900">
                Sistem Manajemen Gudang
            </h2>
            <p class="mt-2 text-center text-sm text-gray-600">
                Masuk ke akun Anda
            </p>

            @if ($errors->has('username') || $errors->has('password'))
                @if (session()->has('error'))
                    <div class="mt-4 p-3 bg-red-100 text-red-700 rounded-md text-sm">
                        {{ session('error') }}
                    </div>
                @endif
            @endif

            <form class="mt-8 space-y-6" wire:submit="login">
                <div class="rounded-md shadow-sm space-y-4">
                    <div>
                        <label for="username" class="block text-sm font-medium text-gray-700">Username</label>
                        <div class="mt-1">
                            <input id="username" name="username" type="text" wire:model="username"
                                class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary-500 focus:border-primary-500 sm:text-sm @error('username') border-red-500 @enderror"
                                placeholder="Username Anda" autofocus>
                        </div>
                        @error('username')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <div>
                        <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                        <div class="mt-1">
                            <input id="password" name="password" type="password" wire:model="password"
                                class="appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-primary-500 focus:border-primary-500 sm:text-sm @error('password') border-red-500 @enderror"
                                placeholder="Password Anda">
                        </div>
                        @error('password')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="flex items-center justify-between">
                    <div class="flex items-center">
                        <input id="remember" name="remember" type="checkbox" wire:model="remember"
                            class="h-4 w-4 text-primary-600 focus:ring-primary-500 border-gray-300 rounded">
                        <label for="remember" class="ml-2 block text-sm text-gray-900">
                            Ingat saya
                        </label>
                    </div>
                </div>

                <div>
                    <button type="submit"
                        class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-primary-600 hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500">
                        <span class="absolute left-0 inset-y-0 flex items-center pl-3">
                            <svg class="h-5 w-5 text-primary-500 group-hover:text-primary-400"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"
                                aria-hidden="true">
                                <path fill-rule="evenodd"
                                    d="M10 1a4.5 4.5 0 00-4.5 4.5V9H5a2 2 0 00-2 2v6a2 2 0 002 2h10a2 2 0 002-2v-6a2 2 0 00-2-2h-.5V5.5A4.5 4.5 0 0010 1zm3 8V5.5a3 3 0 10-6 0V9h6z"
                                    clip-rule="evenodd" />
                            </svg>
                        </span>
                        Masuk
                    </button>
                </div>
            </form>

            @if(app()->environment('local'))
                <div class="mt-6 border-t border-gray-200 pt-6">
                    <p class="text-xs text-gray-500 text-center mb-3">Akun Demo (dari Seeder):</p>
                    <div class="grid grid-cols-1 sm:grid-cols-3 gap-2 text-xs">
                        <div class="text-center p-2 bg-gray-50 rounded">
                            <p class="font-medium">Admin</p>
                            <p class="text-gray-500">admin / password</p>
                        </div>
                        <div class="text-center p-2 bg-gray-50 rounded">
                            <p class="font-medium">Manager</p>
                            <p class="text-gray-500">manager / password</p>
                        </div>
                        <div class="text-center p-2 bg-gray-50 rounded">
                            <p class="font-medium">Karyawan</p>
                            <p class="text-gray-500">karyawan / password</p>
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>