<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class HistoricalDataSeeder extends Seeder
{
    public function run(): void
    {
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
}
