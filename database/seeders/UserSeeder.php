<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\EmployeeProfile;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        // === ADMIN ===
        $admin = User::firstOrCreate(
            ['email' => 'admin@wms.com'],
            [
                'name' => 'Administrator',
                'username' => 'admin',
                'password' => Hash::make('password'),
                'role' => 'admin',
                'phone' => '081234567890',
                'position' => 'System Administrator',
                'status' => 'active',
                'email_verified_at' => now(),
            ]
        );

        // === MANAGER ===
        $manager = User::firstOrCreate(
            ['email' => 'manager@wms.com'],
            [
                'name' => 'John Manager',
                'username' => 'manager1',
                'password' => Hash::make('password'),
                'role' => 'manager',
                'phone' => '081234567891',
                'position' => 'Warehouse Manager',
                'status' => 'active',
                'email_verified_at' => now(),
            ]
        );

        EmployeeProfile::firstOrCreate(
            ['user_id' => $manager->id],
            [
                'employee_code' => 'MGR001',
                'nik' => '3201234567890001',
                'birth_date' => '1985-05-15',
                'gender' => 'L',
                'join_date' => '2020-01-01',
            ]
        );

        // === EMPLOYEES ===
        $employees = [
            ['name' => 'Budi Karyawan', 'username' => 'budi01', 'code' => 'EMP001', 'nik' => '3201234567890011'],
            ['name' => 'Siti Operator', 'username' => 'siti01', 'code' => 'EMP002', 'nik' => '3201234567890022'],
            ['name' => 'Ahmad Worker', 'username' => 'ahmad01', 'code' => 'EMP003', 'nik' => '3201234567890033'],
        ];

        foreach ($employees as $emp) {
            $user = User::firstOrCreate(
                ['email' => $emp['username'] . '@wms.com'],
                [
                    'name' => $emp['name'],
                    'username' => $emp['username'],
                    'password' => Hash::make('password'),
                    'role' => 'karyawan',
                    'phone' => '08123456' . rand(1000, 9999),
                    'position' => 'Warehouse Staff',
                    'status' => 'active',
                    'email_verified_at' => now(),
                ]
            );

            EmployeeProfile::firstOrCreate(
                ['nik' => $emp['nik']],
                [
                    'user_id' => $user->id,
                    'employee_code' => $emp['code'],
                    'birth_date' => '1990-05-15',
                    'gender' => 'L',
                    'join_date' => '2022-08-01',
                    'supervisor_id' => $manager->id,
                ]
            );
        }
    }
}
