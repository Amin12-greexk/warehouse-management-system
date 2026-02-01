<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class HistoricalDataSeeder extends Seeder
{
    public function run(): void
    {
        $this->call(UserSeeder::class);

        $basePath = base_path('database/hasil normalisasi data');
        $files = [
            'suppliers.sql',
            'items.sql',
            'item_monthly_demands.sql',
        ];

        DB::disableQueryLog();

        foreach ($files as $file) {
            $path = $basePath . DIRECTORY_SEPARATOR . $file;
            if (! File::exists($path)) {
                $this->command->warn("File not found: {$path}");
                continue;
            }

            $this->runSqlFile($path);
        }

        $this->seedStockFromMonthlyDemands();
    }

    private function runSqlFile(string $path): void
    {
        $sql = File::get($path);
        $statements = preg_split('/;\s*\R/', $sql);

        if (! $statements) {
            $this->command->warn("No statements found in {$path}");
            return;
        }

        DB::beginTransaction();
        try {
            foreach ($statements as $statement) {
                $statement = trim($statement);
                if ($statement === '') {
                    continue;
                }

                DB::statement($statement);
            }

            DB::commit();
            $this->command->info("Imported {$path}");
        } catch (\Throwable $e) {
            DB::rollBack();
            $this->command->error("Failed importing {$path}: " . $e->getMessage());
            throw $e;
        }
    }

    private function seedStockFromMonthlyDemands(): void
    {
        $demands = DB::table('item_monthly_demands')
            ->select('item_id', DB::raw('AVG(qty_out) as avg_qty'))
            ->groupBy('item_id')
            ->get();

        if ($demands->isEmpty()) {
            $this->command->warn('No item_monthly_demands data found. Stock not updated.');
            return;
        }

        foreach ($demands as $row) {
            $avgQty = (float) $row->avg_qty;
            $minStock = max(1, (int) ceil($avgQty * 0.5));
            $stock = max($minStock, (int) ceil($avgQty * 1.2));

            DB::table('items')
                ->where('id', $row->item_id)
                ->update([
                    'minimum_stock' => $minStock,
                    'stock' => $stock,
                ]);
        }

        $this->command->info('Stock updated from item_monthly_demands.');
    }
}
