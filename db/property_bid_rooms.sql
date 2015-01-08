CREATE TABLE "property_bid_rooms" (
  "id"  INTEGER PRIMARY KEY,
  "bid_id" int(11) NOT NULL,
  "property_id" int(11) NOT NULL,
  "room_id" int(11) NOT NULL, 
   "num_rooms" int(11),
  CONSTRAINT "property_bid_rooms_fk1" FOREIGN KEY ("property_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "property_bid_rooms_fk2" FOREIGN KEY ("bid_id") REFERENCES "bids" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "property_bid_rooms_fk3" FOREIGN KEY ("room_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
