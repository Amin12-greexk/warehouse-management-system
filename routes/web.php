<?php

use App\Http\Controllers\ProfileController;
use App\Livewire\Auth\Login;
use Illuminate\Support\Facades\Route;

// Guest routes
Route::middleware('guest')->group(function () {
    Route::get('/', function () {
        return redirect()->route('login');
    });

    // OK: File App\Livewire\Auth\Login.php sudah ada
    Route::get('/login', Login::class)->name('login');
});

// Authenticated routes
Route::middleware('auth')->group(function () {
    // OK: Ini adalah Closure, tidak butuh file
    Route::post('/logout', function () {
        auth()->logout();
        request()->session()->invalidate(); // <-- Perbaikan keamanan
        request()->session()->regenerateToken(); // <-- Perbaikan keamanan
        return redirect()->route('login');
    })->name('logout');

    // OK: Ini adalah Closure, tidak butuh file
    Route::get('/redirect', function () {
        $user = auth()->user();

        // PERBAIKAN: Arahkan ke rute yang benar sesuai role
        switch ($user->role) {
            case 'admin':
                return redirect()->route('admin.dashboard');
            case 'manager':
                return redirect()->route('manager.dashboard');
            case 'karyawan':
                return redirect()->route('employee.dashboard');
            default:
                abort(403);
        }
    })->name('redirect');
});

// Admin routes
Route::middleware(['auth', \App\Http\Middleware\AdminMiddleware::class])
    ->prefix('admin')
    ->name('admin.')
    ->group(function () {

        // OK: File App\Livewire\Admin\Dashboard.php sudah ada
        Route::get('/dashboard', \App\Livewire\Admin\Dashboard::class)->name('dashboard');

        // Master Data
        // OK: File App\Livewire\Admin\Users\Index.php sudah ada
        Route::get('/users', \App\Livewire\Admin\Users\Index::class)->name('users.index');

        // DIAKTIFKAN: File-file ini sudah kita buat
        Route::get('/users/create', \App\Livewire\Admin\Users\Create::class)->name('users.create');
        Route::get('/users/{user}/edit', \App\Livewire\Admin\Users\Edit::class)->name('users.edit');

        // DIAKTIFKAN: File-file ini sudah kita buat
        Route::get('/suppliers', \App\Livewire\Admin\Suppliers\Index::class)->name('suppliers.index');
        Route::get('/suppliers/create', \App\Livewire\Admin\Suppliers\Create::class)->name('suppliers.create');
        Route::get('/suppliers/{supplier}/edit', \App\Livewire\Admin\Suppliers\Edit::class)->name('suppliers.edit');

        // DIAKTIFKAN: File-file ini sudah kita buat
        Route::get('/racks', \App\Livewire\Admin\Racks\Index::class)->name('racks.index');
        Route::get('/racks/create', \App\Livewire\Admin\Racks\Create::class)->name('racks.create');
        Route::get('/racks/{rack}/edit', \App\Livewire\Admin\Racks\Edit::class)->name('racks.edit');

        // OK: File App\Livewire\Admin\Items\Index.php sudah ada
        Route::get('/items', \App\Livewire\Admin\Items\Index::class)->name('items.index');

        // NONAKTIFKAN SEMENTARA: File Livewire App\Livewire\Admin\Items\Create.php belum dibuat
        // Route::get('/items/create', \App\Livewire\Admin\Items\Create::class)->name('items.create');
        // Route::get('/items/{item}/edit', \App\Livewire\Admin\Items\Edit::class)->name('items.edit');
    
        // NONAKTIFKAN SEMENTARA: File Livewire Transaksi belum dibuat
        // Route::get('/transactions', \App\Livewire\Admin\Transactions\Index::class)->name('transactions');
        // Route::get('/transactions/{transaction}', \App\Livewire\Admin\Transactions\Show::class)->name('transactions.show');
    
        // NONAKTIFKAN SEMENTARA: File Livewire Laporan belum dibuat
        // Route::get('/reports', \App\Livewire\Admin\Reports\Index::class)->name('reports');
        // Route::get('/reports/stock', \App\Livewire\Admin\Reports\Stock::class)->name('reports.stock');
        // Route::get('/reports/transactions', \App\Livewire\Admin\Reports\Transactions::class)->name('reports.transactions');
        // Route::get('/reports/frequency', \App\Livewire\Admin\Reports\Frequency::class)->name('reports.frequency');
    
        // NONAKTIFKAN SEMENTARA: File Livewire Aktivitas belum dibuat
        // Route::get('/activities', \App\Livewire\Admin\Activities\Index::class)->name('activities');
    
        // NONAKTIFKAN SEMENTARA: File Livewire Pengaturan belum dibuat
        // Route::get('/settings', \App\Livewire\Admin\Settings\Index::class)->name('settings');
    });

// NONAKTIFKAN SEMENTARA: Grup Rute Manager (File Livewire belum dibuat)
Route::middleware(['auth', \App\Http\Middleware\ManagerMiddleware::class])
    ->prefix('manager')
    ->name('manager.')
    ->group(function () {
        // Route::get('/dashboard', \App\Livewire\Manager\Dashboard::class)->name('dashboard');
        // Route::get('/items', \App\Livewire\Manager\Items\Index::class)->name('items.index');
        // Route::get('/items/{item}', \App\Livewire\Manager\Items\Show::class)->name('items.show');
        // Route::get('/transactions', \App\Livewire\Manager\Transactions\Index::class)->name('transactions');
        // Route::get('/transactions/{transaction}', \App\Livewire\Manager\Transactions\Show::class)->name('transactions.show');
        // Route::get('/reports', \App\Livewire\Manager\Reports\Index::class)->name('reports');
        // Route::get('/reports/stock', \App\Livewire\Manager\Reports\Stock::class)->name('reports.stock');
        // Route::get('/reports/employee-performance', \App\Livewire\Manager\Reports\EmployeePerformance::class)->name('reports.employee-performance');
        // Route::get('/team', \App\Livewire\Manager\Team\Index::class)->name('team');
    });

// NONAKTIFKAN SEMENTARA: Grup Rute Karyawan (File Livewire belum dibuat)
Route::middleware(['auth', \App\Http\Middleware\EmployeeMiddleware::class])
    ->prefix('employee')
    ->name('employee.')
    ->group(function () {
        // Route::get('/dashboard', \App\Livewire\Employee\Dashboard::class)->name('dashboard');
        // Route::get('/items', \App\Livewire\Employee\Items\Index::class)->name('items.index');
        // Route::get('/items/{item}', \App\Livewire\Employee\Items\Show::class)->name('items.show');
        // Route::get('/transactions/create', \App\Livewire\Employee\Transactions\Create::class)->name('transactions.create');
        // Route::get('/transactions/in', \App\Livewire\Employee\Transactions\In::class)->name('transactions.in');
        // Route::get('/transactions/out', \App\Livewire\Employee\Transactions\Out::class)->name('transactions.out');
        // Route::get('/history', \App\Livewire\Employee\Transactions\History::class)->name('history');
        // Route::get('/transactions/{transaction}', \App\Livewire\Employee\Transactions\Show::class)->name('transactions.show');
    });

// NONAKTIFKAN SEMENTARA: Grup Rute Profil (File Livewire belum dibuat)
// Route::middleware('auth')->group(function () {
//     // Profile
//     // Route::get('/profile', \App\Livewire\Profile\Show::class)->name('profile.show');
//     // Route::get('/profile/edit', \App\Livewire\Profile\Edit::class)->name('profile.edit');

//     // Notifications
//     // Route::get('/notifications', \App\Livewire\Notifications\Index::class)->name('notifications.index');
//     // Route::post('/notifications/mark-as-read', \App\Livewire\Notifications\MarkAsRead::class)->name('notifications.mark-as-read');
// });