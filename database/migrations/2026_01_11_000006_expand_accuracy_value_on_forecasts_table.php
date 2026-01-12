<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        if (! Schema::hasColumn('forecasts', 'accuracy_value')) {
            return;
        }

        $driver = Schema::getConnection()->getDriverName();
        if ($driver === 'mysql') {
            DB::statement('ALTER TABLE forecasts MODIFY accuracy_value DECIMAL(12,4) NULL');
            return;
        }

        Schema::table('forecasts', function (Blueprint $table) {
            $table->decimal('accuracy_value', 12, 4)->nullable()->change();
        });
    }

    public function down(): void
    {
        if (! Schema::hasColumn('forecasts', 'accuracy_value')) {
            return;
        }

        $driver = Schema::getConnection()->getDriverName();
        if ($driver === 'mysql') {
            DB::statement('ALTER TABLE forecasts MODIFY accuracy_value DECIMAL(6,4) NULL');
            return;
        }

        Schema::table('forecasts', function (Blueprint $table) {
            $table->decimal('accuracy_value', 6, 4)->nullable()->change();
        });
    }
};
