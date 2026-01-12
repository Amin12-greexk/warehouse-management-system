INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF028','(K)  ASSORTED BAG PREMIUM 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF030','(K)  MELON BAG PREMIUM 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF068','(K)  Milkita Assrtd JAR 6x175','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF075','(K)  20pc LEMONILO BAWANG 70gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF128','(K)  MAX PASTA VANILA 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF129','(K)  MAX PASTA COKLAT 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF005','(K)  Jagoan Neon Renceng 20x30 Lokal','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF007','(K)  Kiko Hijau  15x10x70ML','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF012','(K)  Milkita Candy Mix Renceng 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF017','(K)  PINO MODERN Assorted 12x6','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF018','(K)  Split Candy Renceng 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF020','(K)  Zuper Mix Bag 12x50 Lokal','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF021','(K)  Zuper Mix Renceng 20x30 Lokal','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF023','(K)  COLA RENCENG 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF029','(K)  CHOCOLATE PREMIUM BAG 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF031','(K)  MILK BAG PREMIUM 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF032','(K)  STRAWBERRY BAG PREMIUM 20x30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF073','(K)  20pc LEMONILO GORENG 80gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF074','(K)  20pc LEMONILO KARI 73gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF085','(K)  NEON LOLY 6*36 NEW','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF087','(K)  SPLIT MANGGA LOLY 6*36 NEW','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF092','(K)  SPLIT LEMON LOLY 6*36 NEW','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF094','(K)  COLA LOLY 6*36 NEW','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF095','(K)  DEFANTY LOLY 6*36 NEW','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF096','(K)  COLA ASTD LOLY 6*36 NEW','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF098','(K)  CHIMI KERIPIK J.BAKAR 24pc*50gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF099','(K)  CHIMI KERIPIK J.BALADO 24pc*50gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF109','(K)  20pc LEMONILO PdsKOREA 85gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF119','(K)  PINO ICE CUP Assorted 18*4','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF120','(K)  PMG PINO 18x4','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF125','(K)  MAX LOLY MILKITA 6*30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF130','(K)  MILKITA REFIL 1000 8*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF131','(K) RTG CHIMI J. BAKAR 6*10pcs 12.5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF132','(K)  RTG CHIMI J.BALADO 6*10pcs 12.5g','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF136','(K) MAX OMG LOLY 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF137','(K) MAX MILKITA 1000 JAR 6*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN103','(K) MOROKO STICK TPLS 6*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A069TLN004','(K) BIG TEH ECO 24*280ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS009','(K)  POPPING CANDY BUAH 18*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A096YHSI002','(K) YEOS Chrysanthemum 24*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC100','(K) TANGO 500 TIRAMISU 12*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC105','(K) TANGO 500 JAVAMOCA 12*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ003','(K) ALP. LOLLIPOP 8*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF008','(K) Kiko Merah 20x10X50ML','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN100','(K) PELUIT CANDY BOX 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD028','(K) ARREDO COOKIES Vanilla 120','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD033','(K) ARREDO COKLAT 120','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A097ASD004','(K) NOM-NOM CORN KEJU 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC039','(K) NEW FUGU 15*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS005S','(S) MINYAK FITRI BOTOL 12*400ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN002','(K)  ZOOMASK CHOCOLATE 12*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A097ASD002','(K) NOM-NOM BBQ BLDO 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI008','(K) B-03 Botol Chewy Blue 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ005','(K) ALP SMOOTH CARAMEL 40*50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH026','(K)  HADIAH GELAS TOOIT','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN087','(K) NINJA UMBRELLA CHO 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS042','(K)  LANDAK 100 PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS099','(K)  RTG JUMBO KRIP-Z 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS069','(K) SOFTIES BURGER 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS108','(K) P. KERAS WALKER STICK 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A097ASD001','# NOM-NOM ORIGINAL 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A097ASD003','# NOM-NOM CORN J.BKR 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI006','(K) B-01 Botol Chewy Strw 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI009','# E-01 Konjac Stick Strw 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI011','(K) E-03 Konjac Stick Blue 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI015','(K) B-05 Botol Chewy Mangga 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP004','(K) MIX KIOKIO JELEGUMMY 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM039','(K) VIP CHIPS JAGUNG MANIS 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD070','NORIGO ROLL ORI 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD072','NORIGO ROLL PEDAS 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A069TLN005','(K) TEH ECO BLCKRNT 24*160ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A069TLN007','(K) TEH ECO GRAPE 24*160ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A069TLN009','(K) TEH ECO APPLE 24*160ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS114','(K) RABBIT FRUIT LOLLIPOP 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI010','# E-02 Konjac Stick Persik 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI012','# E-04 Konjac Stick Lecy 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC152','WAFFLE 1000 Hazelnut 6*15 12gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ008','(K) B.BABOOL TUTTI FRUIT 20*20pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN027','(K)  KARIZATO Marshmellow 20*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN079','(K)  SEREALFIT VANILA RTG 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS043','(K)  CANDY BEAR GUMMY 10*60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI013','# E-05 Konjac Stick Mangga 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI014','# B-04 Botol Chewy Lecy 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC184','2000 WAFFLE COOKIEZ 6*12 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC216','CHIZMILL BALLS TRUFFLE 60*16gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC221','2000 Waffle Avocado Latte 6*12 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA028','OREO SOFTCAKE 12*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR043','Handle Bisk. Black Cherry 6*360gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR045','Handle Bisk. Coffee Caramel 6*360gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR046','Handle Bisk. Lemon Crackers 6*360gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR049','BISKITOP CHOCO CHIPS 6*320gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A102ASA003','(K) KWACI ChaCha Coconut 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA005','NS TOP WAFER STRWB 14x300gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC204','BLASTOZ Crunchy Nuts 6*12pcs 24gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA001','(K)  BRAVO CONE MELLOW ASSTD 20*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA006','@ 3 KG EGG ROLL FAMILI','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA008','(K) FAMILI MINI STICK STRW 3 KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA009','(K) FAMILI MINI STICK SUSU 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA010','(K) FAMILI MINI STICK COKLAT 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA012','(K) FAMILI MINI STICK BLACKVAN 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA013','(K) MINI STICK FAMILI CHO 6*350gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA014','(K) MINI STICK FAMILI STRW 6*350gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA015','(K) MINI STICK FAMILI SUSU 6*350gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA016','(K) MINI STICK FAMILI PDN 6*350gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA017','(K) MINI STICK FAMILI TARO 6*350gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA018','(K) MINI STICK FAMILI BlckVan 6*350gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA019','(K) MINI EGG ROLL FAMILI CHO 6*325gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA020','(K) MINI EGG ROLL FAMILI ORI 6*325gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA021','(K) MINI EGG ROLL FAMILI STW 6*325gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA025','(K) WAFER FAMILI CHO SPESIAL 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR044','(K) Handle Bisk. Butter Caramel 6*360gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR050','(K) BISKITOP Flower Cookies 6*360gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR051','(K) BISKITOP Sesame Coconut 6*320gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST020','(K) PISCOK BOLU BALIHAI 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU008','MERRY MIE AYAM PANG 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU009','MERRY MIE Goreng Ayam 8*10PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC212','STAR OOPS 12*10pcs 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC215','(K) CHIZMILL BALLS CHEESE 60*16gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA033','OREO LUP 2000 COKLAT 12*12','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA011','(K) FAMILI MINI STICK PANDAN 3kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD042','NORIGO ORIGINAL 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD043','NORIGO BBQ 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A069TLN002','GRESTEA CUP 24*180ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF013','Jelly MINO YOGO MELOW 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS046','(K)  PRINCES PASTA GIGI 20*30pcs (NON RETUR)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS059','(K) P. LUNAK BURGER 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS082','# SNAKE GUMMY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS098','(K) MARS. KAKI ANIMAL 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS118','(K) Popping Candy Gasing 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST013','(K) OMEX Makaroni Smbl Hijau 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA025','NISSIN MINI STICK 18x10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA030','45 GOLD SERENA 30gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA053','WALENS BLUEBERRY 120','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA054','(K) NS TOP WAFER VANILA 14x300gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC049','(K) WALUT TANGO Banana 10*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC135','(K) FUGU NEW 12*10pcs 12gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA032','OREO LUP 2000 VANILA 12*12','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ017','2000 Momogi Kimchi 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI022','(K) GT MINYAK RIZKI 12*900ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS006S','(S) BONUS MINYAK FITRI BOTOL 400ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY006','(K) BONUS TISSUE YUKINAWA 250''S','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN015','(K)  KIDDY BAND 12*40','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS080','(K)  SAYUMI TOMAT 10 POUCH','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD045','NORIGO PEDAS 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD056','NORIGO BALADO 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD058','NORIGO AYAM GORENG 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD059','NORIGO Jagung Panggang 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A069TLN001','TEH ECO CUP 24*195ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A074TJS012','# 80 PCS CHOCO CANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS041','# SQUIDE GAME BB.GUM 12*50pcs (NO RETUR)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS071','# MARS. Flower Cotton Canoy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS073','(K) P. KERAS SERULING 16*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS121','# JELLY MIX BALON 15*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI023','# D-03 Konjac Jelly Blue  6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA034','WALENS COKLAT 120','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI012','(K) MT 75ml Woshi G.Tea Refill 72pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN088','# NINJA UMBRELLA CHO 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS030','(K)  TOOIT MANIA BESAR 5 bag','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM035','HAPPY ISLAND PEDAS 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM036','HAPPY ISLAND BALADO 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM037','HAPPY ISLAND BBQ 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM047','WOW SAPI PANGGANG 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD051','NORIGO KEJU 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD061','BOOM NORI ORI 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS027','(K)  MANGGO GUMMY 12*60pcs (NO RETUR)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS051','(K)  P.LUNAK KRIM BUAH/ANEKA BUAH 24bag','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS084','(K) JELLY BEAR GUMMY 24*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS089','# P. LUNAK FRUIT 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS149','(K) FINGER LATIAO 60*150gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS164','(K) BOX FINGER LATIAO 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST010','BIS CLASS COOKIES 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI007','# B-02 Botol Chewy Persik 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC197','(K) POPS OOPS ONION 6*10pcs 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC228','(K) WALUT French Vanila 10*12pcs 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC241','NEW 39gr Tango Coconut Extra Bonus','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ014','2000 Momogi Twist J.Bkr 4*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ016','2000 Momogi Cocopandan 4*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ018','2000 Momogi Balado 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ023','12gr Momogi Stick Cho 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ024','12gr Momogi Stick J.Bakar 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ029','(K) Crispy Yale Vanilla 6*10pcs 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ030','(K) Crispy Yale Coklat 6*10pcs 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ035','(K) Momogi Pop Corn Caramel 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI038S','(K) BONUS MINYAK TROPICAL 2 L','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY007','@ 48pcs TISSUE YUKINAWA 200''S','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ001','(K) MENTOS ANEKA BUAH 40*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ007','(K) B.BABOOL STICK HNGR 20*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ009','(K) CHUPA CUPS BAG 8*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ010','CHUPA CUPS LOLLY 8*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH055','(K) HADIAH TAS BEKAL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN083','(K) TONGKAT PELANGI CANDY 12*45pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN086','(K) BRITOBAR 8*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A059MMM008','(K) YOHOO Drink Assorted 24cup','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS038','(K)  DINO WINNER BB.GUM 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS060','(K) P. LUNAK LIDAH 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS068','(K) LUNAK BUAH GUMMY 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS100','# SOFT CANDY Mix Flavour 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS106','# Jelly Taste Mix Flavour 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS111','(K) P. KERAS JARUM SUNTIK 16*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS162','(K) 50*90gr LATIAO STICK BEAN','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS167','(K) BOX STICKY Bean Latiao 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A096YHSI005','(K) YEOS Grass Jelly Wtmelon 24*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST001','TOP TIME COKLAT 6*24pcs 8gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST012','INDOBIS PANDA BITES 30pack','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI002','# A-02 Chewy Jumbo Persik 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI003','# A-03 Chewy Jumbo Blue 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC111','(K) 24 MINT CHEWY BARLEYMINT','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT007','(K) MIE KRISPI BONCABE Merah LV15 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA006','(K) SILKYS MALLOW CONE 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA008','(K) Silkys Minipao Rainbow 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA012','# Rainbow Bravoo Van-Mango 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA013','# SILKYS MINIPAO STRW 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA014','(K) SILKYS Minipao Mango 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA016','(K) SILKYS Minipao Pandan 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ036','(K) Momogi Pop Corn Butter 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI044','(K) BONUS GT Woshi G.Tea 200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C047ARS001','DONALD SAK 12*10pcs 30gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY005','(K) BONUS TISUE YUKINAWA 200''S','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY011','(K) BONUS 180''S TISSUE YUKINAWA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ002','(K) MENTOS ROLL 18*14pcs 29gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ006','(K) BIG BABOOL ASSTD 16*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN086','# NADYA TABLET CANDY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS093','(K)  TOOIT MANIA SEDANG 7 BAG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM019','YAMI-YAMI Sapi Panggang 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM020','YAMI-YAMI Harum Pedas 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM043','(K) YOUYOU SAPI MERAH 10*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM044','(K) YOUYOU STICK HIJAU 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD041','HOKAIDO CHO 6x24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF016','(K) Jelly MINO YOGO Grape 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST002','TOP TIME STRWBERRY 6*24pcs 8gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST003','TOP TIME PANDAN 6*24pcs 8gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST004','TOP TIME BLUEBERRY 6*24pcs 8gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST005','TOP TIME BLACKFOREST 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST014','BALIHAI Chicken Pop Geprek 4*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST016','MAGNA SOES COKLAT 30bks','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST017','MAGNA SOES BLUEBERRY 30bks','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI022','(K) D-02 Konjac Jelly Persik 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B001AGEL046','MAYASI SPICY 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC150','BLASTOZ CHO 6*12pcs 24gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC164','(K) CANNON BALL 6*40pcs 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC199','POPS OOPS CHEESE 6*10pcs 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC233','35gr 6*10+3 Tango MilkyCho JKT48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC259','ROPPANG Choco Lava 60*65gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ004','Yale Stick Coklat 16*10 6gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ009','Momogi Stick Coklat 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ028','(K) MIGI WFR KEJU 16*10 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM038','HAPPY ISLAND SAPI PANG 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD040','(K) COOKIES TIME 40 PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD065','(K) BOOM NORI AYAM GOR 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS029','(K)  STRAWBERRY GUMMY 12*60pcs (NO RETUR)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS063','(K) LUNAK BINTANG LAUT 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS070','(K) MARS. LOVE WORLD 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS074','# SOFTIES CANDY ANIMAL 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS077','(K) PERMEN KERAS MIC 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS078','(K) STAR GUMMY 24*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS079','(K) KISS GUMMY 24*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS080','(K) MARSMELLOW SATE 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS083','(K) HAPPY GUMMY BEAR 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS139','(K) LATIAO SATE SPICY 80*80gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A096YHSI008','(K) YEOS Grass Jelly Lychee 24*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST006','BOSBOS COKLAT 12*10pcs 11gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST007','BOSBOS PELANGI 12*10pcs 11gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST008','BIS CLASS OAT COKLAT 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST009','BIS CLASS OAT GREENTEA 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST011','INDOBIS COOKIS TIME 40','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST018','DUO ARREDO COKLAT 6*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A099SST019','DUO ARREDO VANILLA 6*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI013','ROTI OISHI PAN Kelapa 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI014','ROTI OISHI PAN SRIKAYA 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI015','ROTI OISHI PAN VANILA 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI016','ROTI OISHI PAN DURIAN 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI017','ROTI OISHI PAN KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI018','ROTI OISHI PAN STRW 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A112SPI011','(K) MINYAKITA POUCH 12*1 Liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC219','IMPERIAL RASBERRY 6*12pcs 27gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC222','IMPERIAL BLUEBERRY 6*12pcs 27gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC223','FRUZZ FRUIT 30*100gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC258','(K) ROPPANG Butter Sugar 60pc*65gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA071','(K) 26.5gr Goodtime Rainbow 8*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA007','(K) Bravo Minipao Rainbow 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B045SKD001','DIAMOND MILK STRW 40*125ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B045SKD002','DIAMOND MILK CHO 40*125ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B045SKD003','(K) DIAMOND Milk Marsmellow 40*125ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B045SKD004','(K) DIAMOND HONEY MILK 40*125ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ003','Yale Stick Jagung Bakar 16*10 6gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ012','2000 Momogi Cheese Love 4*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ013','2000 Momogi J.Bakar 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ021','2000 Momogi Bintang Cho 4*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ027','(K) Criscito Potato R. Laut 4*10pcs 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ031','(K) Momogi Nugget JB. Pedas 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI011','(K) MT TROPICAL Refill 6*2Liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS003','(K) SO NICE AYAM 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('D025MKJ004','(K) ALP ECLAIRS CHOCO 24*40pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH054','(K) HADIAH CINCIN KARAKTER','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN108','(K) RAINBOW LOLYPOP 6*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN085','(K) SOURCITY Chewy Candy 8*25pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN092','BENNO LOLI BLISTER 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM018','YAMI-YAMI Rumput Laut 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM045','(K) YOUYOU SAPI HIJAU 10*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM046','(K) YOUYOU STICK BALADO 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS007','(K)  MARS PINGUIN STRO 30*72pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS081','(K) SEDOTAN GUMMY AYAM 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS091','(K) PERMEN LUNAK SHUSI 20*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS179','(K) LIPS JELLY GUMMY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A096YHSI003','(K)  YEOS GRASS JELLY 24*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A096YHSI004','(K) YEOS BIRDNEST 24*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A096YHSI007','(K)  YEOS SOY BEAN 24*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU005','RING GO STIX BALADO 20PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B001AGEL049','(K) KAOS RELAXA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA073','(K) HADIAH KAOS GOODTIME','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ007','Momogi Stick J.Bakar 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ010','Momogi Stick Fruity 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ025','Criscito Potato Ori 4*10pcs 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI001','@ ILLONA KPL 10W Barcode 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI002','(K) Illova Cotton Buds Hijau 12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI004','(K) RAFIA ILLONA 9 ONS 10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI005','(K) RAFIA ILLONA 5 ONS 10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI020','(K) BONUS KPL 5W Barcode 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA022','(K) WAFER FAMILI STRW 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA023','(K) WAFER FAMILI PANDAN 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA024','(K) WAFER FAMILI COKLAT 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA027','(K) FAMILI MINI STICK TARO 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C044AJA031','(K) WAFER FAMILI Susu Spesial 3KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK023','@ 20X50gr KUSUKA SUPER PEDAS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN081','(K) BOLU LAPIS TIGA 8*15pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN090','# MIMI CHOCO MACAN 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS031','(K)  TOOIT MANIA KECIL Krip-Z 10 Bag','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS135','# TOOIT MANIA LAMPU 6 BAG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM021','YAMI-YAMI Salt Paper 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM050','(K) MIHAYO Merah Pedas 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF037','(K) POCKET BREAD CHO 60*45gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF040','POCKET BREAD YOGURT 60*45gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A095DAI131S','(S) MMSK NORI SAKU ORI 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI004','NORI BOOM BBQ 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A112SPI012','(K) MINYAKITA POUCH 6*2 LITER','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC220','(K) WALUT Belgian Cho 10*12pcs 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC240','(K) WALUT Korean Strw 10*12pc 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC242','FRUZZ TROPICAL FRUIT 30*100gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA034','OREO LUP 2000 BLUBERRY 12*12','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA015','# Rainbow Bravoo Van-Strw 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP008','# TPLS KIOKIO Jelly Straws 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B045SKD005','(K) DIAMOND Milk Full Cream 40*125ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ002','(K) MIGI WFR Cocopdn 16*10 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ008','Momogi Stick Keju 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ011','Momogi Stick Cappucino 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ020','(K) MIGI WFR COKLAT 16*10 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ026','Momogi Strw-Vancok 8*20pcs 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ042','(K) CRISPY YALE CHO 16*10pc 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ043','(K) CRISPY YALE VAN 16*10pcs 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI017','(K) ILLONA KPL 10W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS004','(K) SOSIS OKEY 10*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN106','(K) CRISPY CHOCO HP 6*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM017','LITOS JAGUNG BAKAR 6*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD062','(K) BOOM NORI BBQ 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A074TJS013','(K) JUMBO NAGORI CHOCO 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP015','(K)  MKRL KF SAUS TOMAT 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS006','(K)  MARS MEONG JERUK 30*72pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS066','(K) LOLLIPOP DELICIOUS 12*200pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS067','(K) Permen Lunak Rabbit 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS154','(K) Surprise Gummy Grape 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI005','NORI BOOM ORIGINAL 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI004','# A-04 Chewy Jumbo Lecy 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI005','# A-05 Chewy Jumbo Mangga 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU006','LV. 10 MERRY MIE PEDAS 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A110MLT003','(K) FT-178 Fortis Korek Abu 20*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A110MLT004','(K) FT-188 Fortis Korek Ungu 20*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A110MLT006','(K) FT-942KMB Fortis Korek 20*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC210','(K) 2000 WAFFLE AREN LATTE 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B044PAK001','@ MINYAKITA POUCH 12*1 Liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B044PAK003','(K) MINYAKITA POUCH 6*2 LITER','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ005','(K) Yale Stick Cocopdn 16*10 6gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ019','(K) MIGI WFR Vancok 16*10 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ032','(K) Momogi Choco Chips 6*20pcs 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI017','@ 24mm ISOLASI BENING 24*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN099','(K) MEGA CHO EYEGLASS 20*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD064','(K) BOOM NORI KEJU 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD069','BALI HAI BOLU PISCOK 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF042','(K) 40pcs Pocket Bread Cho 45gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS008','(K)  MARS PANDA ANGGUR 30*72pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A088SMT002','(K) 40pcs KARMELLO COKLAT 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A088SMT003','(K) 40pcs KARMELLO CARAMEL 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A095DAI132S','(K) MMSK NORI SAKU SPICY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A110MLT002','(K) FT-128 Fortis Korek Biru 20*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A110MLT005','(K) FT-311KMB Fortis Korek 20*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A120AFJ001','(K) MOCHI CONLEY MIX 30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC280','(K) 8*12+1 Waffle 2000 Aren L 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC293','(K) 8*12+1 Waffle 2000 Avocado 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ006','(K) MOMOGI Marie Susu 8*20 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ033','(K) 12gr Momogi Stick R. Laut 12*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ034','(K) 12gr Momogi Stick Cocopdn 12*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ037','(K) Twist Stick Wf.Roll Cho 16*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ039','(K) 12gr Momogi Stick Kimchi 12*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI036','(K) GT Rizki Ttp Kuning 12*850ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI023','(K) ILLONA KPL 50W Garansi 45pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI032','(K) ILLONA Bulb EXC 5W 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI013','@ COKLAT LAKBAN 90Y 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY008','(K) 48pcs TISSUE YUKINAWA 250''S','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN005','(K)  GOLD CHOCO 12x50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN102','(K) MIMI MILK CHOCO 12*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK008','(K)  10X180gr KUSUKA AYM BUMBU BALI','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM040','(K) ULALA RUMPUT LAUT 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM042','(K) ULALA SAPI PANGGANG 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR007','Biskitop WFR Stick Handle 6*500gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR009','GLORIA ZEBRA 6*500gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF028','SILKYS Jelly Assorted 5KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'CT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP014','(K)  MKRL KF SAUS TOMAT 155gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS175','(K) MOCHI MARS MANGO 10*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS176','(K) MOCHI MARS STRW 10*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS178','(K) MOCHI MARS CHO 10*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101PSU010','(K) MIKU AYAM PEDAS 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC229','TANGO 6000 STRW 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT017','MAKARONI RTG 120pcs LV.0 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ038','(K) Twist Stick Wf.Roll Strw 16*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B055MAS006','(K) TYL Orange Soft Candy 24*500gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI003','(K) ILLONA KPL 20W Barcode 20*5pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI033','@ ILLONA Bulb EXC 10W 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI034','@ ILLONA Bulb EXC 15W 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI036','(K) KIKEKO Tissue 60pcs 200''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI039','(K) ZOLO POP UP 128pcs 150''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI040','(K) KILLA Tissue 70pcs 150''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG011','(K) Handle Biskitop 370gr*6 ButterCks','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG012','(K) Handle Biskitop 400gr*6 ASRTD','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG013','(K) Handle Biskitop 400gr*6 BlackOreo','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN061','(K) MR-BENNO Eyeglass 20*40','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN065','# KIDDY''S FUN 12*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A051SBD063','BOOM NORI PEDAS 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP012','(K)  TUNA HOT SPICY 170gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI002','NORI BOOM SPICY 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC245','(K) TANGO 6000 MILKYCHOCO 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC260','(K) TANGO 6000 Popcorn 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT020','80pcs BIG PUFF J. BAKAR 13gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT021','80pcs BIG PUFF Balado BBQ 13gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT023','80pcs BIG PUFF ORI LV. 0 13gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP011','(K) 24*10pc KIOKIO STRAWS POUCH','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ040','(K) 12gr Momogi Stick Balado 12*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B0560HGI001','(K) ILLONA KPL 10W Barcode 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI008','(K) ILLONA Bulb 5W Barcode 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI022','@ ILLONA KPL 5W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('BOO3ABC092','(K) TANGO 6000 JAVAMOCCA 24*120gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN059','(K) WOW TWISTER 6*40','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN067','(K)  LOLY TANGAN 12*30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN079','(K) SWITS GUMMY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN084','(K) MINI SWIT CANDY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM041','(K) ULALA JAGUNG MANIS 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR008','(K) BISKITOP X-TRA LONG 6*700gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF043','(K) 40pcs Pocket Bread Yogurt 45gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A074TJS017','# 100PCS CHOCO CANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF014','(K) Jelly MINO YOGO Mango 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF020','(K) QQ JELLY MIX Hadiah Pulpen 6*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF021','(K) QQ JELLY MIX Hadiah Balon 6*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF025','(K) QQ Jelly Hadiah Menarik 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS109','(K) P. KERAS Rainbow Spring 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS125','(K) Puding Jelly Aneka Rasa 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS170','(K) SWEET SET GUMMY 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS177','(K) MOCHI MARS MATCHA 10*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A088SMT004','(K) 40pcs KARMELLO STRW 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI001','NORI BOOM AYAM GOR 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI003','(K) NORI BOOM KEJU 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI036','NORI Norigo Roll J.Pang 6*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI037','NORI NORIGO Roll Udang 6*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI016','(K) C-01 Chewy TPL Strw 4*80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI017','(K) C-02 Chewy TPL Persik 4*80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI018','(K) C-03 Chewy TPL Blue 4*80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI019','(K) C-04 Chewy TPL Lecy 4*80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI020','(K) C-05 Chewy TPL Mangga 4*80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI024','(K) D-04 Konjac Jelly Lecy 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI025','(K) D-05 Konjac Jelly Mangga 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI030','# G-03 ZERIKU J.Stick Mango 10*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL034','(J) Finna Crispy Prawn Chili 12*165gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI009','(K) BOLU OISHI PAN Pandan 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI028','(K) NOMI LAPIS KEJU - CHO 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A117OKF003','(K) Lasana Composite Merah 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ001','(K) MIGI WFR Strw Van 16*10 10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI004','(K) GT Woshi Lemon Refill 72*75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B053DBS001','(K) NORI BOOM AYAM GOR 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI006','(K) ILLONA Bulb 15W Barcode 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI021','(K) Illova Cotton Buds 40''s 12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C047ARS002','(K) DONALD YOGU STICK 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY012','(K) 48pcs TISSUE YUKINAWA 180''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH005','(K) HADIAH KAOS NORIGO','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN095','(K) MELODY CANDY BAG 20*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN101','(K) 7 BINTANG TOPLES 8*100pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN107','(K) KING BUBBLE GUM 12*100pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS087','(K)  JUMBO KRIP-Z MIX 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A074TJS009','(K)  RTG JUMBO NAGORI 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP019','(K)  TUNA ChunkIN BRINE 170gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP020','(K)  TUNA Chunk IN OIL 170gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS107','(K) P. KERAS RADISH KNIFE 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS120','(K) JELLY BEANS CUTTER 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS161','# CRYSTAL CANDY MIX 40*96gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI021','(K) D-01 Konjac Jelly Strw 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI029','(K) NOMI LAPIS KEJU - Pandan 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A123IUF001','BYWAY COKLAT 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A123IUF003','BYWAY STRAWBERRY 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A123IUF004','BYWAY KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A124MSR006','(K) Roti Kering Bertabur Gula 5*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA056','NS TOP WFR COKLAT 14*300gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC237','(K) WFR Tango Ember Van 6*240gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC239','(K) FULLO VAN EMBER 6*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC273','(K) Lolipop BLASTER Lime Soda 4*36','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC296','8*10+1pcs Imperial Blueberry 27gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC304','(K) Walut Ember Belgian Cho 6*136gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC309','(K) MIO EGG ROLL EMBER 6*150gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC313','(K) SANDWICH MIO EMBER 6*162gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC314','(K) OOPS Ember S.Corn Chikn 6*140gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC315','(K) OOPS Ember Daebak Chkn 6*140gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI002','(K) GT Woshi G.tea Reffil 72*75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B051SSN001','Sunpride Banana Choco 60*12gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B051SSN002','Sunpride Banana SaltGarlic 60*12gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B053DBS004','(K) NORI BOOM ORIGINAL 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI035','(K) CROCO illona Tissue 250''s 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI010','(K) 60Y LAKBAN BENING 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI014','(K) COKLAT LAKBAN 60Y 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN093','# POP CHOCO CLASSIC 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN089','(K) PAMERLO MATA 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS008','(K)  JUMBO SAYUMI 40 BAG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS021','(K) HADIAH KAOS LIANGGUI','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A074TJS015','# RTG JUMBO NAGORI CHOCO 40','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF002','(K) Jelly MINO YOGO Coco 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS113','(K) JELLY MIX TOY 12*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS174','(K) TOFFEE BALL 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS186','(K) Fish Crisp Vine Pepper 24jar','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS187','(K) Fish Crips Garlic Flavour 24jar','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A087DPR011','(K) DAYA SIPUT BBQ 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI024','(K) YAY NORI BBQ 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI025','YAY NORI ORIGINAL 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI026','(K) YAY NORI PEDAS 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A100MSI001','(K) A-01 Chewy Jumbo Strw 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL036','(K) 500gr Pouch S.Uleg Terasi 10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL037','(K) POUCH S.ULEG TRASI 1KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A123IUF006','(K) BYWAY DURIAN 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA055','NS TOP WFR PANDAN 14x300gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC018','TANGO 500 COKLAT 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC051','TANGO 500 VANILA 12*20 5gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC068','(K) TANGO 500 STROBERI 12*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC136','2000 WAFFLE HUZELNUT 6*12 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC201','(K) 2000 WAFFLE Mocha Latte 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC234','(K) 35gr 6*10+2 Tango Strw JKT48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC255','1000 TPLS T. CHO 16gr 6*20pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA035','(K) OREO LUP 2000 STRAWBERRY 12*12','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT003','GT BONCABE LV.15 2.5gr 20*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI032','(K) BONUS GT Woshi Lemon Refill 75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI040S','(K) BONUS MINYAK FITRI 850ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B048PSH001','(K) Palasari Saus Tomat Cabe 12*425gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI004','(K) ILLONA KPL 5W Barcode 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI005','(K) ILLONA Bulb 10W Barcode 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI041','(K) NAPKIN TISSUE 60pack','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI006','(K) RAFIA ILLONA KECIL 10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C015PRN007','SO NICE 6*24 AYAM','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH013','(K)  HADIAH KIPAS PORTABLE','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH038','(K)  HADIAH KAOS TOOIT New','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH052','(K) KIPAS KARAKTER','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS115','(K) P. KERAS WINDMILL 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI023','(K) Double Nori Roll Spicy 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU007','LV. 100 MERRY MIE PEDAS 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU011','MIKU JAGUNG BKR 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL036','(J) 500gr Pouch S.Uleg Terasi 10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A106BMK001','(K) MAAM MARS CONE VAN 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI030','(K) NOMI LAPIS KEJU - KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI046','(K) NOMI LAPIS SELAI KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI013','(K) Fiesta TP Roti Putih 24*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF006','(K) 38CM MISSY GF U.NIGHT 48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC297','8*10+1pcs Imperial Rasberry 27gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI001','(K) GT Margarine Forvita 60*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B048PSH002','(K) Palasari Saus Tomat Cabe 24*155gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B064SZJ001','(K) MIMO KEPANG R.LAUT 5*20cs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B064SZJ002','(K) MIMO STICK BAWANG 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C015PRN005','SO NICE 6*24 SAPI','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN062','(K)  FRUTZ GUMMY 12*20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN110','(K) FRUTZ GUMMY EMOJI 12*60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN104','# NW MR. BENNO 2x(10*40pcs)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS095','# 120pcs SAYUMI MIX','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP024','(K) THREE STAR S.Tomat 155gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS065','(K) LIANGGUI SODA JELLY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS075','(K) P. LUNAK GANGSING 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS173','(K) BITE MIE MIE 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A087DPR010','(K) DAYA CRISPY BALADO 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A087DPR012','(K) DAYA CRISPY R.LAUT 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A102ASA001','(K) KWACI CHACHA ORI 10*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A102ASA002','(K) KWACI ChaCha Caramel 20*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL020','(K) LV.10 Finna Rawit Tabur 20*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL025','(K) SAMBAL TERASI JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL033','(K) SAMBAL PEDAS JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL035','(K) SAMBAL KEMIRI JAR 12*180ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL026','(J) SAMBAL IJO JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL028','(J) Finna S.Uleg Kecombrang 10*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A106BMK003','(K) MAAM MARS CONE STRW 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI011','(K) BOLU OISHI PAN Custard 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI012','ROTI OISHI PAN COKLAT 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI043','(K) NOMI LAPIS SELAI CHO 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI044','(K) NOMI LAPIS SELAI STRW 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI045','(K) NOMI LAPIS SELAI Pandan 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A114CFI001','(K) Cha-Cha Kuaci Kelapa 5*40 8gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A114CFI002','(K) Cha-Cha Kuaci Merah 5*40 8gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM006','(K) CALISTA JUS GUAVA 24*200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA002','(K) ROTI PAPA BEAR SUSU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC033','TANGO 1000 COKLAT 16gr 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC175','(K) KIDO STRW 36*115ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC176','(K) KIDO COKLAT 36*115ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC288','(K) 8*12+1 Waffle 2000 Mocha 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC329','(K) ANGGUR Fruzz Gummy 12*120gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT015','(K) MI KRISPI BONCABE LV. 0 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT027','(K) MI KRISPI Boncabe LV.15 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP005','(K) KIOKIO JELLY STRAWS 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI003','(K) GT 200ml Woshi G.tea Refill 24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B055MAS007','# TYL PERMEN LUNAK 20*240gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI002','(K) ILLONA KPL 15W Barcode 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI007','(K) ILLONA Bulb 20W Barcode 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI009','(K) ILLONA Bulb 12W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI010','(K) ILLONA Bulb 15W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI011','(K) ILLONA Bulb 18W Garansi 20*5','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI012','(K) ILLONA Bulb 24W Garansi 100pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI013','(K) ILLONA Bulb 3W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI014','(K) ILLONA Bulb 5W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI015','(K) ILLONA Bulb 7W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI016','(K) ILLONA Bulb 9W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI018','(K) ILLONA KPL 15W Garansi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI019','(K) ILLONA KPL 20W Garansi 20*5','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI020','(K) ILLONA KPL 30W Garansi 60','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI021','(K) ILLONA KPL 40W Garansi 60','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI024','(K) ILLONA KPL 60W Garansi 36pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI025','(K) ILLONA PREM KPL 5W 20*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI026','(K) ILLONA PREM KPL 10W 20*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI027','(K) ILLONA PREM KPL 15W 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI028','(K) ILLONA PREM KPL 20W 20*5','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI029','(K) ILLONA PREM KPL 30W 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI030','(K) ILLONA PREM KPL 40W 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI031','(K) ILLONA Bulb EXC 20W 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI037','(K) ZIELLA Tissue 30Bended 180''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI016','(K) 12mm ISOLASI BENING 24*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN104','# ICE MELLOW ASSTD 20*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS0937','# NAGORI MIX 120pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM052','321 CRISPY R. LAUT 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR010','BISKITOP CHERRY COOKIES 40*60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A082PPL005','(K) 24*330ml HEVIITRO BTL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A082PPL006','@ 24*600ml HEVIITRO BTL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS158','(K) Fruity Mars. Cotton Loly 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS165','(K) BOX SKIN LATIAO 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS171','(K) NEW SOFT CANDY MIX 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS172','(K) CANDY LAMP LIPSTICK 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS228','(K) HAPPY MINT BB.GUM 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI033','(K) TEMPURA NORI BBQ 24*50gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL017','(K) 10*500gr KRUFIN UDANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL021','(K) LV.30 Finna Rawit Tabur 20*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL002','(J) Finna S.Uleg Pedas 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL003','(J) Finna S.Uleg Rawit 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL004','(J) Finna S.Uleg Udang 10*10pc 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL005','(J) CHILI SAUS FINNA 12*1kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL006','(J) Finna S.Uleg Kemiri 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL007','(J) Finna S.Uleg Bawang 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL008','(J) Finna S.Uleg Rendang 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL010','(J) Finna S.Uleg Geprek 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL011','(J) Finna S.Uleg Teri 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL012','(J) Finna S.Uleg IJO 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL014','(J) RTG Chili Saus Finna 24*22pcs 9gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL022','(J) Finna S.Uleg Bajak 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL023','(J) Finna Krupuk Bawang 120*10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL024','(J) Finna Krupuk Udang 120*10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL025','(J) SAMBAL TERASI JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL030','(J) SAMBAL UDANG JAR 12*175gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI002','(K) Champ Sosis Otak-Otak 6*24+2','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI006','(K) Fiesta TP Ayam Kremes 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI011','(K) Fiesta Racik A. Goreng 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM001','(K) KidsFun Squeeze Grape 60*75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM002','(K) KidsFun Squeeze Yogurt 60*75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM003','(K) TrueLove Squeeze Peach 60*75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM004','(K) TrueLove Squese Mix Fruit 60*75ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA001','(K) ROTI PAPA BEAR KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A133SMS003','ICE STICK SRIWIJAYA 15*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI005','(K) 60pcs SNOW CAKE CHO','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI009','(K) MOCHI STICK CHO 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI010','(K) MOCHI STICK STRW 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI011','(K) MOCHI STICK Mangga 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC231','(K) 35gr 6*10+1 Tango Van JKT48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC257','8*12+1pcs Waffle 2000 Cookiez 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT018','Makaroni BIG PUFF Jagung 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B046SMJ022','Mars Kepang Doraemon 36*20pc 7gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI055','(K) GT Rizki Tutup HIJAU 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B056HGI038','(K) ILLONA Pop up 8*6pcs130''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI011','(K) 90Y LAKBAN BENING 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY002','(K) TISUE YUKINAWA 250''s 50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN096','# YURO COIN 6*125pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN098','# LOLLIPOP MILENA 6*80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF038','SOFT AOKA PANDA Pandan 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF041','SOFT AOKA PANDA Coklat 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF007','Jelly Mr NATTA Blueberry 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF015','Jelly Mr NATTA Markisa 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP009','(K)  SKF SAMBAL BANGKOK 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A082PPL001','(K)  HEVIITRO BTL 24*400ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS117','# LUNAK Beruang Crab Jelly 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS135','# NEW Lunak Krim Buah 30*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS157','(K) Watch Popping Candy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS163','(K) PEELED FUDGE LECY 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS168','(K) PASTA PEN COKLAT 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS180','(K) Jelly Candy Rocket 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS181','(K) Rice Crackers Ori 15pack 298gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS194','(K) Black Rice Crackers 15pack 298gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS223','(K) SWEET MIX LOLLIPOP 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS234','(K) SAFARI HARD CANDY 8*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI027','(K) POP NORIGO ORI 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI028','(K) POP NORIGO BBQ 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI029','POP NORIGO PEDAS 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL010','(K) Finna S.Uleg Ijo 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL001','(J) Finna S.Uleg Trasi 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL009','(J) FINNA KRUFIN UDANG 5KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A106BMK002','# MAAM MARS CONE CHO 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI007','# BOLU OISHI PAN CHO 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI008','# BOLU OISHI PAN Srikaya 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI010','# BOLU OISHI PAN STRAW 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI022','ROTI MANIS SRIKAYA 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI023','(K) NOMI CUP CAKE STRW 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI025','(K) NOMI CUP CAKE Custard 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI026','(K) NOMI CUP CAKE CHO 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI027','(K) NOMI CUP CAKE Kelapa 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI005','(K) TP Roti CRUMBS MIX 24*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A120AFJ002','(K) KUE SALJU BLUEBERRY 60*35gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A120AFJ003','KUE SALJU MANGGA 60*35gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A120AFJ005','KUE SALJU STRWBERRY 60*35gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A124MSR002','# BEGELAN DURIAN 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A124MSR005','(K) 20*10pcs BEGELAN BUTTER 100gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM012','(K) BRM Laundry Elegance 12*1liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM013','(K) BRM Laundry Blooming 12*1 liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM014','(K) BRM Laundry Embrace 12*1liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM019','(K) BRM Laundry Happines 12*1liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM030','(K) BRM Laundry S.Garden 12*1liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF016','(K) SF MISSY S.LONG 36CM 48pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A133SMS004','SRIWIJAYA PERMEN RTG 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI022','(K) RONDE NUXITO CHO 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B001AGEL009','(K) NEW KAPAL API 24*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC002','BLASTER SAK 24x50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC058','24 MINT CHEWY CHERRY','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC067','(K) 24 MINT CHEWY GRAPE','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC232','BLASTER CHOCOMINT 24*125gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC262','(K) FULLO COKLAT 6*25pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC274','8*12+1pcs Waffle 2000 Huzel 25gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA074','10.6gr GOOD TIME CHO 10*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT025','(K) Makaroni Gurih Rnyh Lv.0 4x(6*10)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT026','(K) Makaroni PdsRnyh Lv.10 4x(6*10)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA022','# BRAVOO HONEY BEAR 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP006','(K) KIOKIO Jelegummy GUAVA 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP007','(K) KIOKIO Jelle Green Apple 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP016','(K) Jumbo Kiokio Jellegummy 6*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI005','(K) GT 200ml Woshi Lemon 24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI007','(K) MT TROPICAL BTL 6*2Liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI034','(K) GT 850ml MINYAK FITRI 12btl','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B053DBS007','(K) Rainbow B. Van-Strw 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B055MAS002','(K) TYL 300gr GUMMY CANDY 20tpl','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI009','(K) 100Y LAKBAN BENING 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI015','(K) ISI STAPLES Illona 100*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B060ABC2003','(K) CRYSTALIN BTL 24*330ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B062CGM008','(K) MARIE VADCO Biskuit 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B065BCP005','(K) GIFT B-TAS BACKPACK KUN','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS002','(K) SO NICE SAPI 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS009','# LEMONIA Cookies Lemon 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY010','(K) 180''s Tissue Yukinawa Popup 100pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C080JBB003','(K) Barista Blend Oatside Milk 24*200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH058','(K) KAOS KUSUKA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A001UFF070','(K)  20*40 ASSORTED BAG MILKITA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN001','(K)  COKLAT DOLAR 6x200','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN004','(K)  EAGLE 6x125','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN023','(K) HOP HOP 6*60','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN060','# MIMI CHOCO IKAN 12*45','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN068','(K)  12x100pcs COKLAT DOLLAR','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN069','# BARICHO COKLAT 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A002PSN097','(K) MILENA LOLLY HANGER 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK001','@ 60*20gr KUSUKA AYAM MADU','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK004','@ 10X180gr KUSUKA BARBEQUE','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK005','@ 10X180gr KUSUKA ORIGINAL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK006','@ 10X180gr KUSUKA AYAM L. HITAM','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK007','@ 10X180gr KUSUKA JAGUNG AMERIKA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK010','@ 10X180gr KUSUKA CHEESE BURGER','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK013','(K)  10X180gr KUSUKA KEJU BAKAR','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK016','@ 10X180gr KUSUKA BALADO','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK028','@ 30x60gr KUSUKA AYAM LADA HITAM','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK029','@ 30X60gr KUSUKA BARBEQUE','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK031','@ 30X60gr KUSUKA RUMPUT LAUT','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK032','@ 30X60gr KUSUKA KEJU BAKAR','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK044','@ 60*20gr KUSUKA J. AMERIKA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK052','@ 60*20gr KUSUKA KARI AYAM','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK053','@ KUSUKA UBI MIX HONEY 20*40gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK054','@ KUSUKA UBI MIX ORI 20*40gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A006KSK059','@ 60*20gr KUSUKA SAPI PANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A011PSN105','(K) NW Mega Cho Eyeglass 2x(10*40)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS044','(K)  100pcs KRIP-Z','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS094','(K)  1000 SAYUMI MIX 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A020TJS096','(K)  RTG JUMBO SAYUMI 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM001','WANG CHIPS 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM002','HAHA MIE Harum Pds/S.pang 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM007','LITOS SAPI PANGGANG 6*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM008','LITOS RUMPUT LAUT 6*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM027','VIP CHIP RUMPUT LAUT 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM028','VIP CHIPS SAPI PANGGANG 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM048','HAHA MIE R. Laut 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM049','HAHA MIE Pedas 10*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM053','(K) 321 CRISPY HOT SPICY 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM054','S-VIP KIMCHI 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A030PLM055','S-VIP HOT SPICY 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A059MMM009','YOHOO ICE CUP 12x6','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A065GFI002','BUMBURI RASA AYAM 120pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A065GFI003','BUMBURI RASA SAPI 120pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A065GFI004','BUMBURI RASA PIZZA 120pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A065GFI007','BUMBURI AYAM PEDAS 120pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR005','BISKITOP KUDANIL 30PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR006','BISKITOP MUSANG 30 PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR020','BISKITOP STIK Sapi Cheese 30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR021','BISKITOP STIK SAPI VAN 30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR022','BISKITOP STIK SAPI STRO 30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR023','BISKITOP STIK SAPI CHO 30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A066GLR056','Biskitop Cherry Cream Van 12*5pc 55gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF004','AOKA COKLAT 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF005','AOKA STRAWBERRY 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF006','AOKA KEJU 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF007','AOKA BLUEBERRY 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF010','AOKA VANILLA 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF012','AOKA DURIAN 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF013','AOKA  NANAS 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF017','GULUNG AOKA KEJU 2000 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF018','MOMOTARO ORI 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF019','GULUNG AOKA CKLT 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF020','MOMOTARO COKLAT 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF030','AOKA PANDAN 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF032','MOMOTARO KELAPA 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF034','GULUNG AOKA KELAPA 2000 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF035','AOKA MANGGA 60pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF036','GULUNG AOKA PANDAN 2000 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF039','SOFT AOKA PANDA Keju 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF044','(K) SOFT AOKA PANDA SUSU 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF045','(K) SOFT AOKA PANDA Mangga 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF046','(K) SOFT AOKA PANDA Vanilla 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072IBF058','(K) Soft Aoka Panda Kc.Merah 60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A072TJS019','(K) 1000 CHOCO CANG 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF003','(K) Jelly O''JOY Blueberry 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF004','Jelly O''JOY Mangga 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF005','Jelly O''JOY Persik Madu 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF006','Jelly Mr NATTA LECI 50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF008','Long Jelly Mangga 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF009','Long Jelly Stroberi 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF010','Long Jelly Grape 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF011','Long Jelly Melon 10*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF012','Jelly Mr NATTA Honey Peach50pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF029','BLUEBERI SILKYS DUO 15*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF030','MANGGA SILKYS DUO 15*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A077AKF031','STRW SILKYS DUO 15*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP001','@ SKF SAOS TOMAT 155gr*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP002','@ SKF SAUS SAMBAL 155gr*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP003','(K)  SKF SAUS KECAP 155gr*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP004','(K)  SKF SAMBAL BANGKOK 155GR','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP006','@ SKF SAOS TOMAT 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP007','@ SKF BALADO 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP008','@ SKF SAUS KECAP 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP010','@ SKF SAMBAL HIJAU 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP016','@ SKF BALADO 155gr*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP017','@ SKF SAUS SAMBAL 425gr*24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP018','@ SKF SAMBAL HIJAU 155gr*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'KLG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP022','(K) THREE STAR S.Sambal 155gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A079BMP026','(K) Terasi Udang KingFisher 16*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A082PPL004','@ 48 CUP HEVIITRO 200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'GL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A082PPL007','@ HEVIITRO CUP MINI 45*120ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A082PPL008','@ HEVIITRO BTL MINI 24*220ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS003','(K)  MIX FRUIT LOLY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS021','(K)  COKLAT SUSU MONISA 20*30pcs (NON RETUR)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS047','# JELLY ANIMAL MIX FLAVOUR 16*30pcs (NON RETUR)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS050','(K)  BISKUIT COLEK ANIME 6*60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS055','# CHOCOLATE BALL 12*120pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS064','(K) LIANGGUI FISH EGG 6*60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS076','(K) HEY JELLY MIX FRUIT 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS130','# FRUIT SHAPING JELLY 12*120pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS131','(K) LUNAK MINI BIKE BOY 12*120pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS132','# PEELED FUDGE JERUK 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS133','# PEELED FUDGE MANGGA 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS134S','(G) PEELED FUDGE STRW 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS155','# Surprise Gummy Mango 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS156','# Surprise Gummy STRW 40*108gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS160','(K) 12*50pcs Balls Bike Boy Gummy','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS191','(K) HARD CANDY PONY 8*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS193','(K) MILITARY Hard Candy 8*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS199','(K) Butterflies Flower Loly 20*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS200','(K) ANIMAL LOLLIPOP 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS201','# AIR BALLON GUMMY 12*50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS203','# STICKI SPICY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS206','(K) Windmill Choco Biskuit 16*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS222','(K) KONJAC TRIPE 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS225','(K) Mango Duck Gummy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS229','(K) Mango Yoghurt Chewy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS230','(K) Strw Yoghurt Chewy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS231','(K) MECHA SWAT Candy 8*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS232','(K) GARDEN LOLLIPOP 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS236','(K) 12*50pcs Choco Crisp Strw','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS239','(K) BEAN STRIP LIANGGUI 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS240','(K) FISH BALL SPICY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS241','(K) FISH BALL CURRY 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS242','(K) DRIED KONJAC SPICY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS243','(K) SPRINKLE STIKI SPICY 12*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS244','(K) MIE LIDI SPICY 12*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS245','(K) OMG SOSIS PEDAS 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS246','(K) GUMI-GUMI BALLS 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS247','(K) OMG FINGER STRIP 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS248','(K) OMG TOFU SPICY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS249','(K) SPICY BAR Latio Omg 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS250','(K) LUMPIA SKIN SPICY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS252','(K) OMG JUICY STRIPS 12*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS260','(K) 20*30pcs OMG JUICY STRIP','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS261','(K) MUSIC CANDY APPLE 8*9pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS263','(K) MUSIC CANDY GRAPE 8*9pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS265','(K) CRAB STICK BBQ 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS266','(K) CRAB STICK SPICY 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS269','(K) New Mango Gummy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A085SNS270','(K) P. Lunak Cubes Gummy 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A095DAI074S','(S) MMSK Bb K. BKSO 8gr 6pk(10*12)','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI006','(K) RTG Norigo Tabur ORI 8*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI007','(K) RTG Norigo Tabur BBQ 8*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI009','(K) RTG Norigo Tabur Pedas 8*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI010','NORI NORIGO ROLL ORI 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI011','NORI NORIGO ROLL Pedas 6*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI012','NORI NORIGO ROLL BBQ 6*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI013','NORI NORIGO ROLL Pisang 6*12pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI014','NORIGO ORIGINAL 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI015','NORIGO PEDAS 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI016','NORIGO BBQ 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI017','NORIGO KEJU 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI018','NORIGO AYAM GORENG 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI019','NORIGO BALADO 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI020','NORIGO JG. PANGGANG 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI038','144pcs Norigo Tabur  BBQ','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI039','144pcs Norigo Tabur ORIGINAL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A098KKI040','144pcs Norigo Tabur PEDAS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU001','FESTIVAL STIK BALADO 10*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU002','(K) FESTIVAL SEREAL CHO 10*250gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU012','MOO CHOCO SEREAL 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU013','MIE JAGO SOTO AYAM 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU014','MIE JAGO KALDU AYAM 40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU015','(K) Extra 25% Merry Mie Ayam Pang 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU016','(K) Extra 25% Merry Mie Gor Ayam 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU020','RING GO BIRU BBQ 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU021','RING GO HIJAU R. LAUT 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU022','RING GO KUNING KARI 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU024','RING MANIA MANIS PEDAS 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU025','NEW RING GO STIX 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU026','Extra 25% Merry Mie Balado 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU028','(K) FESTIVAL STIK Pandan 10*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU029','MIE JAGO BAKSO 40PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU031','RING MANIA BBQ 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU032','NEW Ring Go Stix J.Bakar 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU033','(K) RING GO MERAH PDS 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU034','Max Mie Singkong Balado 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A101SPU035','MAX MIE BALADO 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL001','(K) Finna S.Uleg Trasi 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL002','(K) Finna S.Uleg Pedas 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL003','(K) Finna S.Uleg Rawit 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL004','(K) Finna S.Uleg Kemiri 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL005','(K) Finna S.Uleg Bawang 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL006','(K) Finna S.Uleg Udang 10*10pc 15gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL007','(K) Finna S.Uleg Rendang 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL008','(K) CHILI SAUS FINNA 12*1kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL009','(K) Finna S.Uleg Geprek 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL011','(K) Finna S.Uleg Teri 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL012','(K) RTG Chili Saus Finna 24*22pcs 9gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL013','(K) Finna Rawit Tabur Lv.15 20*12pc 6gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL014','(K) FINNA KRUFIN BAWANG 5kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL015','(K) KRUFIN BAWANG 20*250gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL016','(K) 10*500gr KRUFIN BAWANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL018','(K) KRUFIN UDANG 20*250gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL019','(K) FINNA KRUFIN UDANG 5KG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL022','(K) Finna S.Uleg Bajak 10*10pc 18gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL023','(K) Finna Krupuk Udang 120*10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL024','(K) Finna Krupuk Bawang 120*10gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL026','(K) SAMBAL IJO JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL027','(K) SAMBAL TERI JAR 12*175gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL028','(K) Finna S.Uleg Kecombrang 10*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL029','(K) SAMBAL GEPREK JAR 12*180ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL030','(K) SAMBAL UDANG JAR 12*175gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL031','(K) SAMBAL BAWANG JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL032','(K) SAMBAL RAWIT JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL038','(K) JRG S. SAMBAL FINNA 3*5.5kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'JRG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL039','(K) Finna Rawit Tabur Lv.50 20*12pc 6gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A103SKL040','(K) Finna TP. Crispy Ori 12*11pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL013','(J) Finna Rawit Tabur Lv.15 20*12pc 6gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL015','(J) FINNA KRUFIN BAWANG 5kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL016','(J) KRUFIN BAWANG 20*250gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL017','(J) 10*500gr KRUFIN BAWANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL018','(J) KRUFIN UDANG 20*250gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL019','(J) 10*500gr KRUFIN UDANG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL020','(J) LV.10 Finna Rawit Tabur 20*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL021','(J) LV.30 Finna Rawit Tabur 20*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL027','(J) SAMBAL TERI JAR 12*175gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL029','(J) SAMBAL GEPREK JAR 12*180ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL031','(J) SAMBAL BAWANG JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL032','(J) SAMBAL RAWIT JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL033','(J) SAMBAL PEDAS JAR 12*190ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL035','(J) SAMBAL KEMIRI JAR 12*180ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A104SKL038','(J) JRG S. SAMBAL FINNA 3*5.5kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'JRG',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A106BMK004','# CUP MAAM Marsmellow Van 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A106BMK005','# CUP MAAM Marsmellow Cho 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A106BMK006','# CUP MAAM Marsmellow Strw 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI001','(K) OISHI PAN GULUNG CHO 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI002','(K) OISHI PAN GULUNG VAN 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI003','(K) OISHI PAN Gulung Pandan 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI004','(K) OISHI PAN GULUNG KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI005','(K) OISHI PAN Gulung Strw 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI006','(K) OISHI PAN Gulung Srikaya 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI020','(K) ROTI MANIS CHO 60pcs 55gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A111NBI021','(K) ROTI MANIS PANDAN 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A117OKF004','(K) Lasana Composite Biru 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A117OKF005','(K) Lasana Composite Kuning 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A118INF023','Hitamanis Vanila Cream 3*12pcs 94gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI001','(K) Champ Sosis Chiken 6*24+2 21gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI003','(K) Champ Sosis Sapi Pang 6*24+2','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI004','OKEY SOSIS AYAM 10*32pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI007','(K) Fiesta TP Ayam Goreng 4*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI008','(K) Fiesta TP Bakwan 4*10pcs 80gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI009','(K) Fiesta TP. Tempe Renyah 4*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI010','(K) Fiesta TP. Serbaguna 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A119CPI012','(K) Fiesta Racik Nasi Goreng 8*10','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A120AFJ004','(K) KUE SALJU COKLAT 60*35gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM005','CALISTA TEH MELATI 24*200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM007','(K) Frozen Lollipop Ice 4*20pcs 82ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A122CSM008','# Mini Puri-Puri Jelly 60*5pcs 75gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A124MSR001','(K) BEGELAN BUTTER 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A124MSR003','(K) BEGELAN KEJU 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A124MSR004','# BEGELAN COKLAT 6*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM001','(K) ROSITA STRONGER 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM002','(K) ROSITA FRESH DAY 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM003','(K) ROSITA SWEETY 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM004','(K) ROSITA EMBRACE 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM005','(K) ROSITA Morning Fresh 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM006','(K) ROSITA HAPPINESS 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM007','(K) ROSITA Secret Garden 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM008','(K) 24*200ml ROSITA STRONGER','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM009','(K) 24*200ml ROSITA FRESH DAY','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM010','(K) 24*200ml ROSITA EMBRACE','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM011','(K) 24*200ml ROSITA HAPPINESS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM020','(K) BRM 12*1liter P.Pelicin Sweety','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM021','(K) BRM 12*1liter P.Pelicin Mor Fresh','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM022','(K) BRM 12*1liter P.Pelicin Happines','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM023','(K) BRM 12*1liter P.Pelicin S.Garden','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM027','(K) BRM 12*1liter P.Pelicin F.day','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM028','(K) BRM 12*1liter P.Pelicin Stronger','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM029','(K) BRM 12*1liter P.Pelicin Embrace','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM032','(K) Rosita Spray Stronger 12*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM033','(K) Rosita Spray F.Day 12*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM034','(K) Rosita Spray Embrace 12*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A125BRM035','(K) Rosita Spray Happines 12*300ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A126KAF001','(K) MILPOP MILKY 4*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A126KAF002','(K) MILPOP COKLAT 4*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A126KAF003','(K) MILPOP STRW 4*30pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A126KAF004','(K) MILPOP BANANA 4*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A126KAF005','(K) MILPOP MANGO 4*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A128IFW001','WILLONG ORI SALTY 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A128IFW002','WILLONG UDANG PEDAS 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A128IFW003','WILLONG KEJU 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF001','(K) 15.5CM MISSY GF PANTY 48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF002','(K) 18CM MISSY GF MINI 48pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF003','(K) 24.5CM MISSY GF DAY 48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF004','(K) 29CM MISSY GF NIGHT 48pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF012','(K) SF MISSY PANTY 15.5CM 48','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF013','(K) SF MISSY MINI 19CM 48pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF014','(K) SF MISSY DAY 24.5CM 48pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF015','(K) SF MISSY NIGHT 29CM 48pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF022','(K) Pantiliner Missy PC 48*25pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF023','(K) DAY MISSY PC 48*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF024','(K) Extra Day Missy PC 48*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF025','(K) Super Night Missy PC 48*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF026','(K) Ultra Night Missy PC 48*4pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF027','(K) BEBIGOO MEALTIME 48*20''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF028','(K) 36x(8*8''s) BEBIGOO MEALTIME','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF029','(K) BEBIGOO ACTIVITY 48*20''s','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A129MSF030','(K) 36x(8*8''s) BEBIGOO ACTIVITY','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA003','(K) 120pc PAPA BEAR KEJU','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA004','(K) 120pc PAPA BEAR SUSU','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA005','(K) 120pc PAPA BEAR ORIGINAL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA006','(K) MIKAKO SUSU STRW 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA007','(K) MIKAKO VAN-CKLT 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA008','(K) MIKAKO KC. MERAH 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA009','(K) MIKAKO YOUGRT 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA010','(K) MIKAKO KEJU MANIS 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA011','(K) MIKAKO VANILLA 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A130CFA012','(K) MIKAKO SUSU-Kc.Merah 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A133SMS002','SRIWIJAYA BISKUIT CHO 8*25pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A133SMS005','(K) Telur Colek Sriwijaya 6*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI023','(K) RONDE NUXITO STRW 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('A134CFI024','(K) RONDE Nuxito Mangga 80pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B001AGEL001','RELAXA SAK BARLEY 24*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA003','NISSIN CRISPY 30','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA009','NS KELAPA IJO 24x280gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B002LA017','NISSIN KUE KERING 20','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC015','24 MINT CHEWY PPRMINT','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC016','(K) TOPLES MINTZ COMBO MIX 6','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC027','Lolipop BLASTER ASSTD 4*36','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC037','Tango 1000 Vanilla 15gr 12*10pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC047','TANGO 6000 COKLAT 24*100gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC053','(K) FULLO VANILLA 6x24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC054','(K) FULLO COKLAT 6x24','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC057','24 MINT CHEWY DUOMINT','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC066','TANGO 6000 VANILA 24*110gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC102','CANNON BALL 6*24pcs 5.4gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC183','WFR TANGO CHO Ember 6*240gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC230','(K) 37gr 6*10 Tango Cho 2000','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC236','(K) Waffle Ember Cho Huzel 6*180gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC238','(K) FULLO CHO EMBER 6*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC263','FULLO VANILLA 6*25pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC275','(K) 24 MINT K-SERIES ASSORTED','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC302','NEW BLASTER SAK 24*40pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC306','(K) IMPERIAL Asstd Ember 6*216gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC310','(K) TPLS BLASTER Neapolitan 6','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC312','(K) Mio Butter Ring Ember 6*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC317','(K) TOPLES FRUZZ FRUIT 6*500gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC324','Tango Cho Brownies Crispy 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC326','WAHH WAFFLE CHO 6*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC327','APEL FRUZZ GUMMY 12*120gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC328','MELON FRUZZ GUMMY 12*120gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC330','(K) Markisa Fruzz Gummy 12*120gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC331','(K) Mangga Fruzz Gummy 12*120gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC333','(K) KIDO FULL CREAM 36*115ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC334','Lolipop Blaster Susu Cho 4*36','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC335','CANNON BALL SUSU 6*24pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BOX',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC336','Susu STRW Lolipop Blaster 4*36','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC337','Susu MELON Lolipop Blaster 4*36','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC338','(K) Brownies Tango Ember 6*102gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B003ABC341','Tango Susu Brownies Crispy 4*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF006','LAZERY 30PAK','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF007','LAZERY FOLDWRAP 6 tpl','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF008','(K) BABALON 6 TPL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF009','CHIKORY 30PAK','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF010','JUMBO LAZERY 6 BAG','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PAK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF013','UNION MINI DROP 6 TPLS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF019','TOPLES LAZERY STICK 6*50','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF024','LAZERY STICK ASSTD 8*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B004UNF027','(K) NEW BABALON 18 PLES','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA048','11gr NYAM NYAM 2000 8*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B011GA069','26.5gr Goodtime Cho 8*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT001','MAKARONI RTG 60pc LV 15 30gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT002','MAKARONI RTG 60pc LV 10 30gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT004','GT BONCABE LV.15 5.5gr 240PC','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT005','GT BONCABE LV.30 4,5gr 240PCS','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT006','MAKARONI RTG KEJU LV2 60*30gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT014','MAKARONI RTG 60pcs LV. 50 20gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT016','BONCABE Kulit Pangsit  LV10 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT019','GT BONCABE LV.50 2.5gr 240pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT029','(K) Cakarnaga Balado LV15 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT030','(K) BONCRISPY UBI ORI 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B026ADT031','(K) Bonus Big Puff Ori LV. 0 13gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA002','(K) New Bravo Cone Mellow 12*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA009','# DUCKY MARS SILKYS 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA010','# LOVELY MARS SILKYS 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA011','# Watermelon Mars Silkys 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA023','(K) Bravoo Banana Sweety 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA024','(K) BRAVOO Mini Burger 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA025','(K) Super Twist Rainbow-Ori 6*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA026','(K) Super Twist Rainbow-Apel 6*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA027','(K) Super Twist Rainbow-Stro 6*20pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA030','(K) Bravoo Mars Milk-Choco 60*5pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA031','(K) Bravoo Mars Strw-Choco 60*5pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA032','(K) MARS FLUFFY QUACKS 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B037KSA033','(K) Love Mallow Yogurt Mix 60pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B039CBB001','(K)  RAKKI NORI A. Bakar 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B039CBB002','(K)  RAKKI NORI ORI 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B039CBB003','(K)  RAKKI NORI PEDAS 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B039CBB004','(K)  RAKKI NORI S.PANG 5*12pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP001','# KIOKIO Jelegummy Strw 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP002','# KIOKIO Jelegummy LECY 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP003','(K) KIOKIO Jelegummy GRAPE 6*24pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP009','# KIOKIO Jelle Watermelon 6*24+1pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP010','(K) Jelegummy Red Asstd 6*24+1pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP014','(K) Jelly Drink STRW-KIWI 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP015','(K) Jelly Drink LECY Passion 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP017','(K) Jelly Drink Mango-Peach 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP018','(K) Jelly Drink Rass-Wt.melon 8*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP020','(K) JELEBIT Aneka Rasa 10kg','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'CT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP021','Teh Hijau Seduh Ori 24*210ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP027','(K) KONNYAKU JELEBIT 48*5+1pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP028','(K) Konnyaku Pudding Pink 48*5+1pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP029','(K) Jelebit Puding Pink 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B041SJP030','(K) Konnyaku Jelebit 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI006','(K) MT TROPICAL BTL 12*1liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI008','(K) MT Margarine Forvita 60*200gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI033','@ GT 12*400ml FITRI BOCIL','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI039S','(K) BONUS MINYAK FITRI 400ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI050S','(K) GT FITRI BOTOL 6*1800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI052','GT FITRI BONI 24*200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI053','@ GT 800ml FITRI BOTOL 12btl','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B047FRI073','(K) MT Rizki Tutup Hijau 12*800ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B053DBS006','(K) Rainbow B. Van-Mango 12*20pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B053DBS008','(K) GT TROPICAL BTL 12*1 Liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B053DBS009','(K) GT TROPICAL BTL 6*2 Liter','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'BTL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B055MAS001','# TYL GUMMY BALLS 12*400gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'TPLS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI003','(K) ILLONA TUSUK SATE 50gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI007','(K) TUSUK SATE 60*500gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI008','(K) 150gr TUSUK SATE 200pack','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B059JGI012','(K) COKLAT LAKBAN 100Y 12*6pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'ROL',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B061YMG001','(K) POPUKON COKLAT 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B061YMG002','(K) POPUKON STRW 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B061YMG003','(K) POPUKON CARAMEL 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'RT',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B061YMP006','(K) MILANO SOYA ORI 24*320ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B064SZJ004','(K) Suwir Spicy 1000 12*20pcs 9gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B065BCP001','(K) KUN CHOCOMALT 40*110ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B065BCP002','(K) KUN MILK STRW 40*110ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B065BCP003','(K) KUN MILK BLUEBERRY 40*110ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('B065BCP004','(K) GIFT LUCKY PEN','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG001','ONION BISKITOP 24*50gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG002','BISKITOP ROSE CREAM 30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG003','DURIAN BISKITOP 30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG004','BISKITOP VEGETABLE 40*60gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG007','ZYLUC STICK 60*33gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C004CDG008','(K) BEARDY CHOCOLATE 6*12','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS011','(K) SUPERCO RTG 12*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C022BJS016','(K) KLIK CRAKERS 12*10pcs 24gr','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C050HLY001','(K) TISUE YUKINAWA 200''s 50pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C076BDR009','(K) Mars Kepang Doraemon 36*20pc','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C080JBB001','NOBO CREAMY CLASSIC 24*200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C080JBB002','Oatside Chocomalt Milk Strw 24*200ml','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PC',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C083JTI001','(K) Marshmellow Kartun 20*30pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C086BLF001','(K) KALIO COKLAT 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C086BLF002','(K) KALIO SUSU 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C086BLF003','(K) MIE KREZZ SEAWEED 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C086BLF004','(K) MIE KREZZ S. SPICY 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('C086BLF005','(K) MIE KREZZ S.PANG 6*10pcs','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PK',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);
INSERT INTO items (item_code, name, type, supplier_id, rack_id, stock, minimum_stock, unit, price, description, status, created_at, updated_at)
VALUES ('H001HH014','(K) HADIAH KAOS AOKA','finished_goods',(SELECT id FROM suppliers WHERE code='SUP-IMPORT'),NULL,0,0,'PCS',0,'Imported History','active',NOW(),NOW())
ON DUPLICATE KEY UPDATE name=VALUES(name), unit=VALUES(unit), updated_at=VALUES(updated_at);