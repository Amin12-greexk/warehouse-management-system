<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('item_monthly_demands', function (Blueprint $table) {
            $table->id();
            $table->foreignId('item_id')->constrained()->cascadeOnDelete();
            $table->smallInteger('year');
            $table->tinyInteger('month');
            $table->decimal('qty_out', 15, 2)->default(0);
            $table->decimal('qty_in', 15, 2)->nullable();
            $table->timestamps();

            $table->unique(['item_id', 'year', 'month']);
            $table->index(['year', 'month']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('item_monthly_demands');
    }
};
