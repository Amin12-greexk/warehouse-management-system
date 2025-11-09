<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth; // <-- Import
use Symfony\Component\HttpFoundation\Response;

class ManagerMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // GANTI DENGAN LOGIKA INI
        if (!Auth::check() || Auth::user()->role !== 'manager') {
            // Anda bisa juga perbolehkan admin: 
            // if (!Auth::check() || !in_array(Auth::user()->role, ['manager', 'admin'])) {
            abort(403, 'AKSES DITOLAK. HANYA UNTUK MANAGER.');
        }
        return $next($request);
    }
}