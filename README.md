# Warehouse Management System (WMS)

Aplikasi manajemen gudang berbasis Laravel 11 + Livewire 3 yang memisahkan peran admin, manager, dan karyawan. Fitur utamanya: manajemen rak, item, supplier, transaksi dengan alur persetujuan, perhitungan kapasitas rak, analitik frekuensi pergerakan barang, serta rekomendasi slotting rak.

## Arsitektur & Modul

-   **Stack**: PHP 8.2+, Laravel 11, Livewire 3, Vite, Tailwind, ApexCharts, Reverb (websocket), Intervention Image untuk unggah foto.
-   **Peran & akses**: middleware `AdminMiddleware`, `ManagerMiddleware`, `EmployeeMiddleware` memetakan dashboard dan menu yang berbeda.
-   **Model inti**: `Item`, `Rack`, `Transaction`, `ItemFrequency`, `Supplier`, `User` (+ profil karyawan), `Notification`, `Activity`.
-   **Observasi transaksi** (`app/Observers/TransactionObserver.php`): ketika status berubah ke approved, stok barang disesuaikan, kapasitas rak diperbarui, frekuensi pergerakan dihitung, dan notifikasi dikirim.
-   **Analitik** (`app/Livewire/Admin/Dashboard.php`): grafik transaksi bulanan, status stok, top barang keluar 7 hari, Days of Supply/ROP, deteksi lonjakan (>50%), quick slotting 3 besar, dan rekomendasi relokasi rak untuk 30 hari terakhir.

## Algoritma Penempatan Rak & Slotting

Sumber utama: `Rack`, `ItemFrequency`, dan `Admin\Dashboard`.

1. **Data rak**: setiap rak memiliki `distance_score` (semakin kecil semakin dekat pintu), `capacity`, `used_capacity`, dan `status`. Seeder (`RackSeeder`) memberi skor berdasarkan zona/posisi/level; rak Zone A lebih dekat.
2. **Kapasitas dinamis**: `Rack::updateCapacity()` menjumlah stok semua item di rak menjadi `used_capacity`, lalu menandai status `full` bila kapasitas terlampaui, atau `available` bila masih ada ruang.
3. **Jejak pergerakan**: `ItemFrequency::calculateForItem()` dihitung saat transaksi approved. Menyimpan `in_count`, `out_count`, rata-rata kuantitas, dan periode harian/mingguan/bulanan, lalu `getRecommendedRackPlacement()` dapat mengambil barang dengan keluar tertinggi 3 bulan terakhir.
4. **Quick slotting (dashboard admin)**: ambil 3 barang keluar terbanyak 7 hari terakhir, pilih 3 rak terdekat (`distance_score` terendah, tidak maintenance). Untuk tiap barang: hitung `improvement = current.distance_score - recommended.distance_score`; rekomendasi hanya muncul bila improvement > 0.
5. **Rekomendasi relokasi (dashboard admin)**: pilih 10 barang dengan transaksi keluar terbanyak 30 hari. Jika rak sekarang memiliki `distance_score > 30`, cari rak terdekat yang:
    - tidak sama dengan rak sekarang,
    - `used_capacity < capacity`,
    - status bukan maintenance.
      Hasil yang layak ditampilkan (maks 5 item) dengan info frekuensi keluar dan selisih jarak.
6. **Implikasi operasional**: barang berfrekuensi tinggi diarahkan ke rak dekat pintu, tapi tetap memperhitungkan ketersediaan kapasitas dan kondisi rak. Status penuh dihindari melalui `used_capacity` dan `capacity`.

## Data Model Singkat

-   **Rack** (`app/Models/Rack.php`): aksesori `rack_code` (alias `code`), `availableCapacity`, `usagePercentage`, `isFull`, scope `available` & `nearDoor`.
-   **Item**: relasi supplier/rack/transactions, status stok (`stock_status`), event restock alert ketika stok ≤ minimum.
-   **Transaction**: tipe `in|out`, approval, foto bukti, kode otomatis, relasi rack asal/tujuan. Observer mengelola stok, kapasitas, frekuensi, dan notifikasi.
-   **ItemFrequency**: agregasi harian per item, kalkulasi skor pergerakan, rekomendasi slotting berbasis 3 bulan.

## Persiapan Lingkungan

-   PHP 8.2+, Composer
-   Node 18+ & npm
-   Database: default **SQLite** (file `database/database.sqlite`). Bisa diganti MySQL/PostgreSQL lewat `.env`.
-   Ekstensi PHP: fileinfo, pdo, pdo_sqlite (atau driver lain), gd (untuk `intervention/image`).

## Langkah Instalasi

1. Clone dan masuk ke folder proyek.
2. Salin env: `cp .env.example .env` lalu set `APP_NAME`, `APP_URL`, dan konfigurasi DB (untuk SQLite biarkan `DB_CONNECTION=sqlite` dan buat file kosong `database/database.sqlite`).
3. Install backend: `composer install`
4. Install frontend: `npm install`
5. Generate key: `php artisan key:generate`
6. Migrasi + seed: `php artisan migrate --seed`
    - Seeder menyiapkan akun demo:
        - Admin `admin@wms.com` / password `password`
        - Manager `manager@wms.com` / password `password`
        - Karyawan `kemu@wms.com`, `siti01@wms.com`, `ahmad01@wms.com` / password `password`

## Menjalankan (Development)

-   **API & UI**: `php artisan serve --host=0.0.0.0 --port=8000`
-   **Vite HMR**: `npm run dev -- --host 0.0.0.0 --port 5173`
-   Jalankan keduanya; akses dari jaringan lain via `http://<IP-LAN>:8000`. Pastikan firewall membuka port 8000 dan 5173.
-   Opsi sekali jalan: `composer run dev` (server PHP, queue listener, pail logs, Vite) – butuh Node & PHP berjalan paralel.

## Menjalankan (Produksi / tanpa HMR)

1. Build aset: `npm run build`
2. Jalankan: `php artisan serve --host=0.0.0.0 --port=8000` (atau lewat Nginx/Apache + PHP-FPM)
3. Anjurkan jalankan queue bila ada fitur async: `php artisan queue:work`

## Reverb (WebSocket) & Akses Jaringan

1. `.env` minimal untuk Reverb/pengaksesan LAN:

```
BROADCAST_CONNECTION=reverb
REVERB_APP_ID=local
REVERB_APP_KEY=local
REVERB_APP_SECRET=local
REVERB_HOST=<IP-LAN-ANDAS>
REVERB_PORT=8080
REVERB_SCHEME=http
REVERB_SERVER_HOST=0.0.0.0
REVERB_SERVER_PORT=8080
```

2. Jalankan server websocket: `php artisan reverb:start --host=0.0.0.0 --port=8080`
3. Pastikan port 8080 terbuka di firewall/router. Jika menggunakan HTTPS di reverse proxy, ubah `REVERB_SCHEME=https` dan port sesuai terminasi TLS.
4. Jika Vite HMR dipakai dari klien lain, jalankan dengan `--host 0.0.0.0` dan set `APP_URL` ke `http://<IP-LAN>:8000` agar asset URL benar.

## Pengujian & Kualitas

-   Tes otomatis: `php artisan test`
-   Lint/format (opsional): `./vendor/bin/pint`

## Catatan Operasional

-   Status kapasitas rak dihitung ulang saat transaksi disetujui; bila melakukan import bulk, jalankan ulang `Rack::updateCapacity()` per rak atau melalui job kustom.
-   Notifikasi & logging aktivitas ditulis saat transaksi dibuat/diapprove/reject; pastikan queue/database siap jika skala diperbesar.
-   Data demo dapat dihapus dengan `php artisan migrate:fresh --seed` setelah menyesuaikan konfigurasi DB.

Stack: Laravel 11, Livewire 3, Vite/Tailwind, Reverb websocket, Intervention Image; role-based via middleware Admin/Manager/Employee dan rute terpisah di routes/web.php.
Model inti: Item, Rack, Transaction, ItemFrequency, Supplier, Notification, Activity. Seeder menyiapkan rak zonasi/kapasitas (RackSeeder), barang stok variatif (ItemSeeder), transaksi historis 12 bulan (TransactionSeeder), akun admin/manager/karyawan (UserSeeder).
Alur transaksi: karyawan membuat transaksi (foto upload/base64) di app/Livewire/Employee/Transactions/Create.php; admin/manager menyetujui. Observer app/Observers/TransactionObserver.php saat status approved memperbarui stok item, kapasitas rak, frekuensi pergerakan, dan notifikasi.
Analitik dashboard admin (app/Livewire/Admin/Dashboard.php): grafik transaksi bulanan, status stok, top out 7 hari, DOS/ROP, deteksi lonjakan >50%, quick slotting 3 besar, rekomendasi relokasi rak 30 hari.
Kapasitas rak: Rack::updateCapacity() hitung used_capacity dari stok item; status otomatis full/available. Scope available dan nearDoor membantu filter rak aktif.
Logika penempatan rak & slotting

Parameter jarak: distance_score (lebih kecil = lebih dekat pintu) diisi oleh RackSeeder berdasar zona/posisi/level.
Kapasitas: setiap approval transaksi memicu Rack::updateCapacity(); hanya rak dengan used_capacity < capacity dianggap tersedia.
Tracking frekuensi: ItemFrequency::calculateForItem() simpan in/out harian, rata-rata kuantitas; getRecommendedRackPlacement() dapatkan barang keluar tertinggi 3 bulan terakhir.
Quick slotting (dashboard): ambil 3 barang dengan qty keluar terbanyak 7 hari, pilih 3 rak terdekat (status ≠ maintenance). Rekomendasi tampil bila improvement = current.distance_score - recommended.distance_score > 0.
Rekomendasi relokasi (dashboard): 10 barang teratas out 30 hari, hanya disarankan bila rak sekarang distance_score > 30; pilih rak terdekat yang tidak sama, tidak maintenance, dan belum penuh. Hasil dibatasi 5 rekomendasi dengan informasi frekuensi dan selisih jarak.
Implikasi: barang berfrekuensi tinggi diarahkan mendekati pintu tanpa melanggar kapasitas atau status rak.
Manual jalan cepat

Persiapan: cp .env.example .env, set APP*URL & DB (default SQLite database/database.sqlite), composer install, npm install, php artisan key:generate, php artisan migrate --seed.
Dev server LAN: php artisan serve --host=0.0.0.0 --port=8000 + npm run dev -- --host 0.0.0.0 --port 5173.
Produksi/tanpa HMR: npm run build lalu php artisan serve --host=0.0.0.0 --port=8000 (atau Nginx/Apache).
Reverb websocket: set .env (BROADCAST_CONNECTION=reverb, REVERB*\* host/port/ip), jalankan php artisan reverb:start --host=0.0.0.0 --port=8080, pastikan port terbuka.
Akun seed: admin admin@wms.com / manager manager@wms.com / karyawan kemu@wms.com, siti01@wms.com, ahmad01@wms.com (semua password password).

Arsitektur: Laravel 11 + Livewire 3 (komponen server-driven) + Vite/Tailwind untuk aset; Reverb sebagai WebSocket broadcaster (lihat config/reverb.php, config/broadcasting.php); Intervention Image untuk upload foto. Autoload PSR-4 standar (composer.json), HMR via vite.config.js.
Otorisasi & routing: Middleware AdminMiddleware, ManagerMiddleware, EmployeeMiddleware membatasi rute di routes/web.php dengan prefix admin/, manager/, employee/. Logout mencatat activity lalu destroy session.
Model & relasi utama:
Rack (app/Models/Rack.php): distance*score, capacity/used_capacity, scope available, nearDoor; accessor usagePercentage, isFull; updateCapacity() hitung stok item -> update status full/available.
Item (app/Models/Item.php): relasi supplier, rack, transactions, frequencies; status stok (stock_status, badge); updateStock() memicu event StockAlert jika <= minimum.
Transaction (app/Models/Transaction.php): type in/out, rack asal/tujuan, approval (approve/reject), kode otomatis; foto via photo_url accessor.
ItemFrequency (app/Models/ItemFrequency.php): agregasi harian in/out, AVG qty, periodisasi week/month/year; calculateForItem() dipanggil saat transaksi approved; getMovementScore() dan getRecommendedRackPlacement() untuk slotting.
Observer: app/Observers/TransactionObserver.php menangani create/update. Saat approved: item->updateStock(), rack->updateCapacity(), ItemFrequency::calculateForItem(), log Activity, kirim Notification ke pelaku dan admin. Aktivitas/rejeksi tercatat dengan reason.
Dashboard Admin: app/Livewire/Admin/Dashboard.php memuat statistik, grafik transaksi bulanan, status stok, top out 7 hari, DOS/ROP, deteksi lonjakan >50%, quick slotting 3 item teratas ke rak terdekat (berdasar distance_score & kapasitas), rekomendasi relokasi 30 hari (hanya jika rak sekarang distance_score > 30 dan rak baru ada kapasitas).
Transaksi Karyawan: app/Livewire/Employee/Transactions/Create.php form in/out, unggah foto atau kamera (base64), pilih rack (status ≠ maintenance), lalu status pending untuk disetujui. Kode TRX bertambah.
Seeder & data demo: RackSeeder bangun rak zona/posisi/level dengan skor jarak; ItemSeeder stok variatif dan rak acak; TransactionSeeder histori 12 bulan (event observer dinonaktifkan saat seeding); UserSeeder buat admin/manager/karyawan.
Broadcast & Reverb: Default broadcaster null; set BROADCAST_CONNECTION=reverb + REVERB*\* untuk mengaktifkan. Server: php artisan reverb:start --host=0.0.0.0 --port=8080; host/port dikendalikan env REVERB_SERVER_HOST/PORT.
Queue & session: Queue driver database (env default), session driver database; pastikan php artisan queue:work jika notifikasi/event ingin async.
Storage: Upload foto ke disk public (storage:link diperlukan jika belum). Gambar barang dan transaksi disajikan via URL storage.
DB default: SQLite (.env.example), file database/database.sqlite. Bisa ganti ke MySQL/Postgres dengan mengubah .env.
Alur utama

Karyawan membuat transaksi (form Livewire) → status pending.
Admin/manager menyetujui → observer: stok item berubah, kapasitas rak dihitung ulang, frekuensi pergerakan dicatat, notifikasi terkirim.
Dashboard menampilkan analitik, rekomendasi slotting/relokasi berbasis frekuensi keluar dan jarak pintu serta kapasitas.
Catatan operasional cepat

Jalankan php artisan serve --host=0.0.0.0 --port=8000 + npm run dev -- --host 0.0.0.0 --port=5173; untuk Reverb tambahkan php artisan reverb:start --host=0.0.0.0 --port=8080.
Buka port 8000/5173/8080 di firewall jika diakses via IP LAN.
Tes: php artisan test; format: ./vendor/bin/pint.
