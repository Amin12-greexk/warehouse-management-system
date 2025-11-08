<?php
// database/migrations/xxxx_create_item_frequency_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('item_frequency', function (Blueprint $table) {
            $table->id();
            $table->foreignId('item_id')->constrained()->onDelete('cascade');
            $table->integer('out_count')->default(0);
            $table->integer('in_count')->default(0);
            $table->date('period_date'); // Daily tracking
            $table->string('period_week', 10)->nullable(); // 2024-W01
            $table->string('period_month', 7); // 2024-01
            $table->integer('period_year'); // 2024
            $table->decimal('average_quantity', 10, 2)->default(0);
            $table->timestamp('last_calculated_at')->nullable();
            $table->timestamps();

            // Indexes
            $table->index('item_id');
            $table->index('period_date');
            $table->index('period_week');
            $table->index('period_month');
            $table->index('period_year');
            $table->unique(['item_id', 'period_date']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('item_frequency');
    }
};