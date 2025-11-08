<?php
// database/migrations/xxxx_create_notifications_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('notifications', function (Blueprint $table) {
            $table->id();
            $table->string('type', 50);
            $table->morphs('notifiable'); // ini sudah membuat index
            $table->foreignId('from_user_id')->nullable()->constrained('users');
            $table->string('title', 100);
            $table->text('message');
            $table->json('data')->nullable();
            $table->string('action_url')->nullable();
            $table->timestamp('read_at')->nullable();
            $table->timestamps();

            // Indexes tambahan
            $table->index('type');
            $table->index('from_user_id');
            $table->index('read_at');
            $table->index('created_at');
        });

    }

    public function down(): void
    {
        Schema::dropIfExists('notifications');
    }
};