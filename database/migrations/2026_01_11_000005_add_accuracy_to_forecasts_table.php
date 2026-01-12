<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('forecasts', function (Blueprint $table) {
            if (! Schema::hasColumn('forecasts', 'accuracy_percent')) {
                $table->decimal('accuracy_percent', 6, 2)->nullable()->after('mae');
            }
            if (! Schema::hasColumn('forecasts', 'accuracy_value')) {
                $table->decimal('accuracy_value', 6, 4)->nullable()->after('accuracy_percent');
            }
        });
    }

    public function down(): void
    {
        Schema::table('forecasts', function (Blueprint $table) {
            if (Schema::hasColumn('forecasts', 'accuracy_value')) {
                $table->dropColumn('accuracy_value');
            }
            if (Schema::hasColumn('forecasts', 'accuracy_percent')) {
                $table->dropColumn('accuracy_percent');
            }
        });
    }
};
