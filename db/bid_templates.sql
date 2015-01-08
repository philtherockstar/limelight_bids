PRAGMA synchronous = OFF;
PRAGMA journal_mode = MEMORY;
BEGIN TRANSACTION;
CREATE TABLE "template_room_items" (
  "id"  INTEGER PRIMARY KEY,
  "business_id"  INTEGER ,
  "room_id" int(11) DEFAULT NULL,
  "item_id" int(11) DEFAULT NULL,
  "quantity" INTEGER DEFAULT 1,
  CONSTRAINT "template_room_items_fk1" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "template_room_items_fk2" FOREIGN KEY ("business_id") REFERENCES "businesses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "template_room_items_fk3" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,14 ,28 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,14 ,33 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,14 ,22 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,1 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,7 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,11 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,10 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,37 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,23 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,38 ,5);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,39 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,6 ,25 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7,1 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,7 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,11 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,10 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,37 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,23 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,38 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,7 ,28 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,8 ,36 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,8 ,22 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,8 ,24 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,9 ,36 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,9 ,22 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,9 ,24 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,10 ,42 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,10 ,31 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,10 ,35 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,10 ,5 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,10 ,43 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,11 , 12,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,11 , 13,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,12 , 12,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,12 , 13,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,13 , 14,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,19 ,41 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,19 ,26 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,19 ,27 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,19 ,28 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,19 ,23 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,20 ,41 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,20 ,26 ,4);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,20 ,27 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,20 ,28 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,20 ,23 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,5 ,21 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,2 ,15 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,2 ,32 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,2 ,22 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,2 ,31 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,2 ,28 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,2 ,5 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,1 ,15 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,1 ,32 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,1 ,22 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,1 ,31 ,2);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,1 ,28 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,1 ,5 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,4 ,30 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,4 ,29 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,4 ,10 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,3 ,30 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,3 ,29 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,3 ,10 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,3 ,20 ,1);
INSERT INTO "template_room_items" (business_id,room_id,item_id,quantity) VALUES (1,15 ,33 ,1);
CREATE INDEX "template_room_items_idx1" ON "template_room_items" ("room_id");
END TRANSACTION;
