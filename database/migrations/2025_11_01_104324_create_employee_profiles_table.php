<?php
// database/migrations/xxxx_create_employee_profiles_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('employee_profiles', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->string('employee_code', 20)->unique();
            $table->string('nik', 16)->unique()->nullable();
            $table->date('birth_date')->nullable();
            $table->enum('gender', ['L', 'P'])->nullable();
            $table->date('join_date');
            $table->foreignId('supervisor_id')->nullable()->constrained('users');
            $table->text('notes')->nullable();
            $table->timestamps();

            // Indexes
            $table->index('employee_code');
            $table->index('nik');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('employee_profiles');
    }
};