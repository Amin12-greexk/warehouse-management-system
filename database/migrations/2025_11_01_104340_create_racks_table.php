<?php
// database/migrations/xxxx_create_racks_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('racks', function (Blueprint $table) {
            $table->id();
            $table->string('code', 20)->unique();
            $table->string('name', 50);
            $table->string('location', 100);
            $table->integer('distance_score')->default(100)->comment('Lower score = closer to door');
            $table->integer('capacity')->default(100);
            $table->integer('used_capacity')->default(0);
            $table->text('description')->nullable();
            $table->enum('status', ['available', 'full', 'maintenance'])->default('available');
            $table->timestamps();

            // Indexes
            $table->index('code');
            $table->index('location');
            $table->index('distance_score');
            $table->index('status');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('racks');
    }
};