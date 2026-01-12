<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('forecasts', function (Blueprint $table) {
            $table->id();
            $table->foreignId('item_id')->constrained()->cascadeOnDelete();
            $table->smallInteger('year');
            $table->tinyInteger('month');
            $table->tinyInteger('horizon');
            $table->decimal('predicted_qty', 15, 2);
            $table->string('method', 30);
            $table->decimal('alpha', 5, 4)->nullable();
            $table->decimal('beta', 5, 4)->nullable();
            $table->decimal('gamma', 5, 4)->nullable();
            $table->smallInteger('season_length')->default(12);
            $table->decimal('mae', 15, 4)->nullable();
            $table->string('source', 20)->default('qty_out');
            $table->timestamp('run_at')->nullable();
            $table->timestamps();

            $table->unique(['item_id', 'year', 'month', 'horizon', 'source']);
            $table->index(['method', 'horizon']);
            $table->index(['run_at']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('forecasts');
    }
};
