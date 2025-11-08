<?php
// database/seeders/ItemSeeder.php

namespace Database\Seeders;

use App\Models\Item;
use App\Models\Supplier;
use App\Models\Rack;
use Illuminate\Database\Seeder;

class ItemSeeder extends Seeder
{
    public function run(): void
    {
        $suppliers = Supplier::pluck('id')->toArray();
        $racks = Rack::pluck('id')->toArray();

        $items = [
            // Raw Materials
            ['name' => 'Steel Plate 10mm', 'type' => 'raw_material', 'unit' => 'sheet', 'price' => 150000],
            ['name' => 'Aluminum Sheet 5mm', 'type' => 'raw_material', 'unit' => 'sheet', 'price' => 120000],
            ['name' => 'Copper Wire 2.5mm', 'type' => 'raw_material', 'unit' => 'roll', 'price' => 85000],

            // Finished Goods
            ['name' => 'Electric Motor Type A', 'type' => 'finished_goods', 'unit' => 'pcs', 'price' => 2500000],
            ['name' => 'Gearbox Model X', 'type' => 'finished_goods', 'unit' => 'pcs', 'price' => 1800000],
            ['name' => 'Control Panel CP-100', 'type' => 'finished_goods', 'unit' => 'unit', 'price' => 3500000],

            // Spare Parts
            ['name' => 'Bearing 6205', 'type' => 'spare_parts', 'unit' => 'pcs', 'price' => 45000],
            ['name' => 'V-Belt A-50', 'type' => 'spare_parts', 'unit' => 'pcs', 'price' => 35000],
            ['name' => 'Oil Seal 25x40x7', 'type' => 'spare_parts', 'unit' => 'pcs', 'price' => 25000],

            // Consumables
            ['name' => 'Lubricant Oil 20L', 'type' => 'consumable', 'unit' => 'drum', 'price' => 450000],
            ['name' => 'Safety Gloves', 'type' => 'consumable', 'unit' => 'pair', 'price' => 35000],
            ['name' => 'Welding Electrode 3.2mm', 'type' => 'consumable', 'unit' => 'box', 'price' => 125000],
        ];

        foreach ($items as $index => $item) {
            Item::create([
                'item_code' => 'ITM' . str_pad($index + 1, 5, '0', STR_PAD_LEFT),
                'name' => $item['name'],
                'type' => $item['type'],
                'supplier_id' => $suppliers[array_rand($suppliers)],
                'rack_id' => $racks[array_rand($racks)],
                'stock' => rand(50, 200),
                'minimum_stock' => rand(10, 30),
                'unit' => $item['unit'],
                'price' => $item['price'],
                'description' => 'High quality ' . strtolower($item['name']) . ' for industrial use',
                'status' => 'active',
            ]);
        }
    }
}