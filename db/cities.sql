PRAGMA synchronous = OFF;
PRAGMA journal_mode = MEMORY;
BEGIN TRANSACTION;
CREATE TABLE "business_cities" (
  "id"  INTEGER PRIMARY KEY,
  "business_id"  INTEGER ,
  "city" varchar(128) NOT NULL,
  "city_order"  INTEGER NOT NULL,
  CONSTRAINT "business_cities_fk" FOREIGN KEY ("business_id") REFERENCES "businesses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Aromas',100);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Aptos',200);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Aptos Hills',300);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Boulder Creek',400);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Brook Dale',500);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Carmel',600);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Carmel Valley',700);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Capitola',800);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Corralitos',900);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Castroville',1000);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Davenport',1100);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Felton',1200);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Freedom',1300);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'La Selva Beach',1400);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Los Lomas',1500);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Live Oak',1600);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Marina',1700);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Monterey',1800);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Moss Landing',1900);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Pacific Grove',2000);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Pajaro',2100);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Prunedale',2200);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Rio Del Mar',2300);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Santa Cruz',2400);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Scotts Valley',2500);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Seaside',2600);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Soquel',2700);
INSERT INTO "business_cities" (business_id, city, city_order) VALUES (1,'Watsonville',2800);
END TRANSACTION;
