<?php
// database/migrations/xxxx_create_items_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('items', function (Blueprint $table) {
            $table->id();
            $table->string('item_code', 30)->unique();
            $table->string('name', 100);
            $table->enum('type', ['raw_material', 'finished_goods', 'spare_parts', 'consumable']);
            $table->foreignId('supplier_id')->constrained()->onDelete('restrict');
            $table->foreignId('rack_id')->nullable()->constrained()->onDelete('set null');
            $table->integer('stock')->default(0);
            $table->integer('minimum_stock')->default(0);
            $table->string('unit', 20)->default('pcs');
            $table->decimal('price', 15, 2)->default(0);
            $table->string('image')->nullable();
            $table->text('description')->nullable();
            $table->enum('status', ['active', 'inactive', 'discontinued'])->default('active');
            $table->timestamps();

            // Indexes
            $table->index('item_code');
            $table->index('name');
            $table->index('type');
            $table->index('supplier_id');
            $table->index('rack_id');
            $table->index('status');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('items');
    }
};