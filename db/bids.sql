CREATE TABLE "bids" (
  "id"  INTEGER PRIMARY KEY,
  "property_id" int(11) NOT NULL,
  "bid_date" datetime DEFAULT NULL,
  "staging_fee" decimal(5,2) DEFAULT NULL,
  "distribution_fee" decimal(5,2) DEFAULT NULL,
  "rental_weekly" decimal(5,2) DEFAULT NULL,
  "rental_monthly" decimal(5,2) DEFAULT NULL,
  "rental" decimal(5,2) DEFAULT NULL,
  "weeks_included" tinyint(4) DEFAULT NULL,
  "complimentary_weeks" tinyint(4) DEFAULT NULL,
  "discount_percent" tinyint(4) DEFAULT '0',
  "discount_amount" decimal(5,2) DEFAULT '0.00',
  CONSTRAINT "bids_fk1" FOREIGN KEY ("property_id") REFERENCES "properties" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE INDEX "bids_bids_idx1" ON "bids" ("property_id");
CREATE INDEX "bids_bids_uidx1" ON "bids" ("property_id","bid_date");
