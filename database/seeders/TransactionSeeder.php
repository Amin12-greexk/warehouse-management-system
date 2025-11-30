<?php

namespace Database\Seeders;

use App\Models\Transaction;
use App\Models\Item;
use App\Models\Rack;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class TransactionSeeder extends Seeder
{
    public function run(): void
    {
        // Disable observers to speed up seeding and avoid creating notifications
        Transaction::unsetEventDispatcher();

        $items = Item::all();
        $racks = Rack::all();
        $employees = User::where('role', 'karyawan')->get();

        if ($items->isEmpty() || $racks->isEmpty() || $employees->isEmpty()) {
            $this->command->warn('Please run UserSeeder, ItemSeeder, and RackSeeder first!');
            return;
        }

        // Create transactions for the last 12 months
        $startDate = Carbon::now()->subMonths(12);
        $endDate = Carbon::now();

        $transactionCount = 0;

        // Generate 150-200 transactions spread across 12 months
        for ($i = 0; $i < 180; $i++) {
            // Random date within the last 12 months
            $randomDate = Carbon::createFromTimestamp(
                rand($startDate->timestamp, $endDate->timestamp)
            );

            // Random transaction type (60% in, 40% out)
            $type = rand(1, 10) <= 6 ? 'in' : 'out';

            // Get random item and employee
            $item = $items->random();
            $employee = $employees->random();
            $rack = $racks->random();

            // Generate transaction code
            $prefix = $type === 'in' ? 'IN' : 'OUT';
            $date = $randomDate->format('Ymd');
            $random = strtoupper(substr(md5(uniqid()), 0, 4));
            $transactionCode = "{$prefix}-{$date}-{$random}";

            // Random quantity
            $quantity = rand(1, 20);

            // 70% approved, 20% pending, 10% rejected
            $statusRand = rand(1, 10);
            if ($statusRand <= 7) {
                $status = 'approved';
            } elseif ($statusRand <= 9) {
                $status = 'pending';
            } else {
                $status = 'rejected';
            }

            Transaction::create([
                'transaction_code' => $transactionCode,
                'user_id' => $employee->id,
                'item_id' => $item->id,
                'type' => $type,
                'quantity' => $quantity,
                'rack_id' => $rack->id,
                'status' => $status,
                'notes' => $this->generateNotes($type),
                'created_at' => $randomDate,
                'updated_at' => $randomDate,
            ]);

            $transactionCount++;
        }

        $this->command->info("Created {$transactionCount} demo transactions");
    }

    private function generateNotes($type): ?string
    {
        $notesTemplates = [
            'in' => [
                'Barang diterima dalam kondisi baik',
                'Pengiriman dari supplier sesuai PO',
                'Kualitas produk sudah dicek',
                'Barang masuk untuk stock replenishment',
                null, // Some transactions without notes
            ],
            'out' => [
                'Pengiriman ke customer',
                'Pemakaian untuk produksi',
                'Transfer antar gudang',
                'Order dari divisi maintenance',
                null, // Some transactions without notes
            ],
        ];

        $templates = $notesTemplates[$type];
        return $templates[array_rand($templates)];
    }
}
