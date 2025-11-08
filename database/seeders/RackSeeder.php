<?php
// database/seeders/RackSeeder.php

namespace Database\Seeders;

use App\Models\Rack;
use Illuminate\Database\Seeder;

class RackSeeder extends Seeder
{
    public function run(): void
    {
        $zones = ['A', 'B', 'C', 'D'];
        $levels = 4; // 4 levels per rack
        $positions = 5; // 5 positions per zone

        foreach ($zones as $zoneIndex => $zone) {
            for ($position = 1; $position <= $positions; $position++) {
                for ($level = 1; $level <= $levels; $level++) {
                    $code = $zone . '-' . str_pad($position, 2, '0', STR_PAD_LEFT) . '-' . $level;

                    // Calculate distance score (lower = closer to door)
                    // Assume Zone A is closest to door
                    $baseScore = ($zoneIndex * 25) + ($position * 5) + ($level * 2);

                    Rack::create([
                        'code' => $code,
                        'name' => 'Rack ' . $code,
                        'location' => 'Zone ' . $zone . ', Position ' . $position . ', Level ' . $level,
                        'distance_score' => $baseScore,
                        'capacity' => 100,
                        'used_capacity' => 0,
                        'description' => 'Standard rack in warehouse zone ' . $zone,
                        'status' => 'available',
                    ]);
                }
            }
        }
    }
}