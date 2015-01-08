CREATE TABLE "bid_room_items" (
  "id"  INTEGER PRIMARY KEY,
  "bid_id" int(11) NOT NULL,
  "bid_room_id" int(11) NOT NULL,
  "room_id" int(11) DEFAULT NULL,
  "room_instance" int(11) NOT NULL,
  "room_name" varchar(64) DEFAULT NULL,
  "item_id" int(11) DEFAULT NULL,
  "item_name" varchar(64) DEFAULT NULL,
  "item_qty" int(11) NOT NULL,
  "rental_price" decimal(5,2) NOT NULL,
  CONSTRAINT "bid_room_items_fk1" FOREIGN KEY ("bid_id") REFERENCES "bids" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_room_items_fk2" FOREIGN KEY ("bid_room_id") REFERENCES "bid_rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_room_items_fk3" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_room_items_fk4" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE INDEX "bid_room_items_fk1_idx" ON "bid_room_items" ("bid_id");
CREATE INDEX "bid_room_items_fk2_idx" ON "bid_room_items" ("bid_room_id");
CREATE INDEX "bid_room_items_fk3_idx" ON "bid_room_items" ("room_id");
CREATE INDEX "bid_room_items_fk4_idx" ON "bid_room_items" ("item_id");
