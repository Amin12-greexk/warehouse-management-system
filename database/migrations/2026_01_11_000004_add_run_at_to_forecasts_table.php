<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        if (! Schema::hasColumn('forecasts', 'run_at')) {
            Schema::table('forecasts', function (Blueprint $table) {
                $table->timestamp('run_at')->nullable()->after('source');
                $table->index('run_at');
            });
        }
    }

    public function down(): void
    {
        if (Schema::hasColumn('forecasts', 'run_at')) {
            Schema::table('forecasts', function (Blueprint $table) {
                $table->dropIndex(['run_at']);
                $table->dropColumn('run_at');
            });
        }
    }
};
