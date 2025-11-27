<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        commands: __DIR__ . '/../routes/console.php',
        channels: __DIR__ . '/../routes/channels.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        // Push authenticated users away from the guest pages to the central redirect handler.
        $middleware->redirectUsersTo('/redirect');

        // Send unauthenticated users to the login form when they hit protected routes.
        $middleware->redirectGuestsTo('/login');

        $middleware->alias([
            'admin' => \App\Http\Middleware\AdminMiddleware::class,
            'manager' => \App\Http\Middleware\ManagerMiddleware::class,
            'employee' => \App\Http\Middleware\EmployeeMiddleware::class,
            //
        ]);
    })
    ->withExceptions(function (Exceptions $exceptions) {
        //
    })->create();
