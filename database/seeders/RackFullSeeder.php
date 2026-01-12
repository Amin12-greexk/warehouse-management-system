<?php
// database/seeders/RackFullSeeder.php

namespace Database\Seeders;

use App\Models\Rack;
use Illuminate\Database\Seeder;

class RackFullSeeder extends Seeder
{
    public function run(): void
    {
        if (Rack::count() === 0) {
            $this->call([RackSeeder::class]);
        }

        $racks = Rack::where('status', '!=', 'maintenance')->get();

        if ($racks->isEmpty()) {
            $this->command->warn('No racks found to mark as full.');
            return;
        }

        $count = min(6, $racks->count());
        $fullRacks = $racks->shuffle()->take($count);

        foreach ($fullRacks as $rack) {
            if ($rack->capacity <= 0) {
                continue;
            }

            $rack->used_capacity = $rack->capacity;
            $rack->manual_full = true;
            $rack->status = 'full';
            $rack->save();
        }

        $this->command->info("Marked {$fullRacks->count()} racks as full.");
    }
}
