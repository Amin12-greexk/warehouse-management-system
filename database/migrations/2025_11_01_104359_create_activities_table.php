<?php
// database/migrations/xxxx_create_activities_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('activities', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('transaction_id')->nullable()->constrained()->onDelete('cascade');
            $table->string('action', 50); // login, logout, create, update, delete, approve, reject
            $table->string('model_type', 50)->nullable(); // User, Item, Transaction, etc
            $table->unsignedBigInteger('model_id')->nullable();
            $table->text('message');
            $table->json('properties')->nullable(); // Additional data
            $table->string('photo_path')->nullable();
            $table->ipAddress('ip_address')->nullable();
            $table->string('user_agent')->nullable();
            $table->timestamps();

            // Indexes
            $table->index('user_id');
            $table->index('transaction_id');
            $table->index('action');
            $table->index('model_type');
            $table->index('created_at');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('activities');
    }
};