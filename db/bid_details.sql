CREATE TABLE "bid_details" (
  "id"  INTEGER PRIMARY KEY,
  "bid_id" int(11) DEFAULT NULL,
  "room_id" int(11) DEFAULT NULL,
  "room_instance" int(11) DEFAULT NULL,
  "room_name" varchar(64) DEFAULT NULL,
  "item_id" int(11) DEFAULT NULL,
  "item_name" varchar(64) DEFAULT NULL,
  "rental_price" decimal(5,2) DEFAULT NULL,
  CONSTRAINT "bid_details_fk1" FOREIGN KEY ("bid_id") REFERENCES "bids" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_details_fk2" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_details_fk3" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE INDEX "bid_details_bid_details_fk1_idx" ON "bid_details" ("bid_id");
CREATE INDEX "bid_details_bid_details_fk2_idx" ON "bid_details" ("room_id");
CREATE INDEX "bid_details_bid_details_fk3_idx" ON "bid_details" ("item_id");
