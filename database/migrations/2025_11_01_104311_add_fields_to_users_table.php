<?php
// database/migrations/xxxx_add_fields_to_users_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('username')->unique()->after('name');
            $table->enum('role', ['admin', 'manager', 'karyawan'])->default('karyawan')->after('password');
            $table->string('photo')->nullable()->after('role');
            $table->string('phone', 20)->nullable()->after('photo');
            $table->text('address')->nullable()->after('phone');
            $table->string('position', 100)->nullable()->after('address');
            $table->enum('status', ['active', 'inactive', 'suspended'])->default('active')->after('position');

            // Indexes
            $table->index('role');
            $table->index('status');
        });
    }

    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn(['username', 'role', 'photo', 'phone', 'address', 'position', 'status']);
        });
    }
};