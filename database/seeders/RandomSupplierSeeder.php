<?php

namespace Database\Seeders;

use App\Models\Item;
use App\Models\Supplier;
use Faker\Factory as Faker;
use Illuminate\Database\Seeder;

class RandomSupplierSeeder extends Seeder
{
    public function run(): void
    {
        $faker = Faker::create('id_ID');

        $targetSuppliers = 30;
        $current = Supplier::count();
        $toCreate = max(0, $targetSuppliers - $current);

        for ($i = 0; $i < $toCreate; $i++) {
            $code = $this->uniqueCode();
            Supplier::create([
                'code' => $code,
                'name' => $faker->company,
                'contact' => $faker->name,
                'phone' => $faker->phoneNumber,
                'email' => $faker->unique()->safeEmail,
                'address' => $faker->address,
                'status' => 'active',
            ]);
        }

        $supplierIds = Supplier::pluck('id')->all();
        if (empty($supplierIds)) {
            $this->command?->warn('No suppliers available to assign.');
            return;
        }

        Item::select('id')->chunk(500, function ($items) use ($supplierIds) {
            foreach ($items as $item) {
                $item->supplier_id = $supplierIds[array_rand($supplierIds)];
                $item->save();
            }
        });

        $this->command?->info('Random suppliers created and items assigned.');
    }

    private function uniqueCode(): string
    {
        do {
            $code = 'SUPR-' . strtoupper(bin2hex(random_bytes(3)));
        } while (Supplier::where('code', $code)->exists());

        return $code;
    }
}
