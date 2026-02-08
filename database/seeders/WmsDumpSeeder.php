<?php

namespace Database\Seeders;

use App\Models\Item;
use App\Models\ItemMonthlyDemand;
use App\Models\Rack;
use App\Models\RackFullReport;
use App\Models\Supplier;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class WmsDumpSeeder extends Seeder
{
    public function run(): void
    {
        $path = base_path('database/wms (2).sql');
        if (! File::exists($path)) {
            $this->command?->warn("File not found: {$path}");
            return;
        }

        $sql = File::get($path);

        $supplierRows = $this->extractInsertRows($sql, 'suppliers');
        $itemRows = $this->extractInsertRows($sql, 'items');
        $demandRows = $this->extractInsertRows($sql, 'item_monthly_demands');

        $supplierIdMap = $this->seedSuppliers($supplierRows);
        $itemIdMap = $this->seedItems($itemRows, $supplierIdMap);
        $this->seedItemMonthlyDemands($demandRows, $itemIdMap);

        $this->seedRacksAndReports();
    }

    private function extractInsertRows(string $sql, string $table): array
    {
        $pattern = '/INSERT INTO `'.preg_quote($table, '/').'` \\((.*?)\\) VALUES\\s*(.+?);/s';
        preg_match_all($pattern, $sql, $matches, PREG_SET_ORDER);

        $rows = [];
        foreach ($matches as $match) {
            $columns = array_map(function ($col) {
                return trim($col, " \t\n\r\0\x0B`");
            }, explode(',', $match[1]));

            $values = $this->parseValues($match[2]);
            foreach ($values as $row) {
                if (count($row) !== count($columns)) {
                    continue;
                }
                $rows[] = array_combine($columns, $row);
            }
        }

        return $rows;
    }

    private function parseValues(string $values): array
    {
        $rows = [];
        $row = [];
        $token = '';
        $inString = false;
        $escape = false;

        $length = strlen($values);
        for ($i = 0; $i < $length; $i++) {
            $ch = $values[$i];

            if ($inString) {
                if ($escape) {
                    $token .= $ch;
                    $escape = false;
                    continue;
                }
                if ($ch === '\\\\') {
                    $escape = true;
                    continue;
                }
                if ($ch === "'") {
                    $inString = false;
                    continue;
                }
                $token .= $ch;
                continue;
            }

            if ($ch === "'") {
                $inString = true;
                continue;
            }
            if ($ch === '(') {
                $row = [];
                $token = '';
                continue;
            }
            if ($ch === ',') {
                $row[] = $this->convertToken($token);
                $token = '';
                continue;
            }
            if ($ch === ')') {
                $row[] = $this->convertToken($token);
                $rows[] = $row;
                $token = '';
                $row = [];
                continue;
            }

            $token .= $ch;
        }

        return $rows;
    }

    private function convertToken(string $token): mixed
    {
        $token = trim($token);
        if ($token === '' || strcasecmp($token, 'NULL') === 0) {
            return null;
        }

        if (is_numeric($token)) {
            return str_contains($token, '.') ? (float) $token : (int) $token;
        }

        return $token;
    }

    private function seedSuppliers(array $rows): array
    {
        $map = [];

        foreach ($rows as $row) {
            $code = $row['code'] ?? null;
            if (! $code) {
                continue;
            }

            $supplier = Supplier::firstOrCreate(
                ['code' => $code],
                [
                    'name' => $row['name'] ?? $code,
                    'contact' => $row['contact'] ?? null,
                    'phone' => $row['phone'] ?? null,
                    'email' => $row['email'] ?? null,
                    'address' => $row['address'] ?? null,
                    'status' => $row['status'] ?? 'active',
                ]
            );

            if (isset($row['id'])) {
                $map[(int) $row['id']] = $supplier->id;
            }
        }

        return $map;
    }

    private function seedItems(array $rows, array $supplierIdMap): array
    {
        $map = [];

        $fallbackSupplier = Supplier::firstOrCreate(
            ['code' => 'SUP-UNKNOWN'],
            ['name' => 'Supplier Unknown', 'status' => 'active']
        );

        DB::disableQueryLog();

        foreach ($rows as $row) {
            $code = $row['item_code'] ?? null;
            if (! $code) {
                continue;
            }

            $code = mb_substr((string) $code, 0, 30);
            $name = (string) ($row['name'] ?? $code);
            $name = mb_substr($name, 0, 100);
            $unit = mb_substr((string) ($row['unit'] ?? 'pcs'), 0, 20);

            $supplierId = $supplierIdMap[$row['supplier_id'] ?? -1] ?? $fallbackSupplier->id;
            $rackId = null;
            if (! empty($row['rack_id']) && Rack::whereKey($row['rack_id'])->exists()) {
                $rackId = (int) $row['rack_id'];
            }

            $payload = [
                'item_code' => $code,
                'barcode' => $row['barcode'] ?? null,
                'name' => $name,
                'type' => $this->normalizeType($row['type'] ?? null),
                'supplier_id' => $supplierId,
                'rack_id' => $rackId,
                'stock' => (int) ($row['stock'] ?? 0),
                'minimum_stock' => (int) ($row['minimum_stock'] ?? 0),
                'lead_time_days' => (int) ($row['lead_time_days'] ?? 7),
                'unit' => $unit,
                'price' => (float) ($row['price'] ?? 0),
                'image' => $row['image'] ?: null,
                'description' => $row['description'] ?: null,
                'status' => $row['status'] ?? 'active',
                'created_at' => $row['created_at'] ?? now(),
                'updated_at' => $row['updated_at'] ?? now(),
            ];

            try {
                DB::table('items')->updateOrInsert(['item_code' => $code], $payload);
            } catch (\Throwable $e) {
                $this->command?->warn("Skip item {$code}: {$e->getMessage()}");
                continue;
            }

            $newId = Item::where('item_code', $code)->value('id');
            if ($newId && isset($row['id'])) {
                $map[(int) $row['id']] = (int) $newId;
            }
        }

        return $map;
    }

    private function seedItemMonthlyDemands(array $rows, array $itemIdMap): void
    {
        if (empty($rows) || empty($itemIdMap)) {
            return;
        }

        foreach ($rows as $row) {
            $oldItemId = $row['item_id'] ?? null;
            if (! $oldItemId || ! isset($itemIdMap[$oldItemId])) {
                continue;
            }

            $itemId = $itemIdMap[$oldItemId];
            $year = (int) ($row['year'] ?? 0);
            $month = (int) ($row['month'] ?? 0);
            if ($year === 0 || $month === 0) {
                continue;
            }

            DB::table('item_monthly_demands')->updateOrInsert(
                ['item_id' => $itemId, 'year' => $year, 'month' => $month],
                [
                    'qty_out' => (float) ($row['qty_out'] ?? 0),
                    'qty_in' => isset($row['qty_in']) ? (float) $row['qty_in'] : null,
                    'created_at' => $row['created_at'] ?? now(),
                    'updated_at' => $row['updated_at'] ?? now(),
                ]
            );
        }
    }

    private function seedRacksAndReports(): void
    {
        if (Rack::count() === 0) {
            $this->call(RackSeeder::class);
        }

        if (RackFullReport::count() > 0) {
            return;
        }

        $reporter = User::where('role', 'karyawan')->inRandomOrder()->first() ?? User::first();
        if (! $reporter) {
            return;
        }

        $approver = User::whereIn('role', ['manager', 'admin'])->inRandomOrder()->first();
        $racks = Rack::inRandomOrder()->take(8)->get();

        foreach ($racks as $rack) {
            $status = collect(['approved', 'pending', 'rejected'])->random();
            RackFullReport::create([
                'rack_id' => $rack->id,
                'user_id' => $reporter->id,
                'status' => $status,
                'notes' => 'Laporan kapasitas rack (import dump).',
                'approved_by' => $status === 'approved' && $approver ? $approver->id : null,
                'approved_at' => $status === 'approved' ? now() : null,
                'rejection_reason' => $status === 'rejected' ? 'Data simulasi' : null,
            ]);
        }
    }

    private function normalizeType(?string $type): string
    {
        $type = strtolower(trim((string) $type));
        return match ($type) {
            'raw_material', 'finished_goods', 'spare_parts', 'consumable' => $type,
            default => 'consumable',
        };
    }
}
