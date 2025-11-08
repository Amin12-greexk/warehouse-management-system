<?php
// database/seeders/SupplierSeeder.php

namespace Database\Seeders;

use App\Models\Supplier;
use Illuminate\Database\Seeder;

class SupplierSeeder extends Seeder
{
    public function run(): void
    {
        $suppliers = [
            [
                'code' => 'SUP001',
                'name' => 'PT. Maju Bersama',
                'contact' => 'Pak Ahmad',
                'phone' => '021-12345678',
                'email' => 'info@majubersama.com',
                'address' => 'Jl. Industri No. 123, Jakarta Utara',
                'status' => 'active',
            ],
            [
                'code' => 'SUP002',
                'name' => 'CV. Sentosa Jaya',
                'contact' => 'Bu Siti',
                'phone' => '022-87654321',
                'email' => 'sales@sentosajaya.co.id',
                'address' => 'Jl. Raya Bandung No. 456, Bandung',
                'status' => 'active',
            ],
            [
                'code' => 'SUP003',
                'name' => 'PT. Global Mandiri',
                'contact' => 'Pak Budi',
                'phone' => '031-11223344',
                'email' => 'procurement@globalmandiri.com',
                'address' => 'Jl. Tunjungan No. 789, Surabaya',
                'status' => 'active',
            ],
        ];

        foreach ($suppliers as $supplier) {
            Supplier::create($supplier);
        }
    }
}