PRAGMA synchronous = OFF;
PRAGMA journal_mode = MEMORY;
BEGIN TRANSACTION;
CREATE TABLE "bid_details" (
  "id"  INTEGER PRIMARY KEY,
  "bid_id" int(11) DEFAULT NULL,
  "room_id" int(11) DEFAULT NULL,
  "room_name" varchar(64) DEFAULT NULL,
  "item_id" int(11) DEFAULT NULL,
  "item_name" varchar(64) DEFAULT NULL,
  "rental_price" decimal(5,2) DEFAULT NULL,
  CONSTRAINT "bid_details_fk1" FOREIGN KEY ("bid_id") REFERENCES "bids" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_details_fk2" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "bid_details_fk3" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE "bids" (
  "id"  INTEGER PRIMARY KEY,
  "property_id" int(11) DEFAULT NULL,
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
CREATE TABLE "businesses" (
  "id"  INTEGER PRIMARY KEY,
  "name" varchar(128) NOT NULL
);
INSERT INTO "businesses" VALUES (1,'Limelight Home Staging');
CREATE TABLE "countries" (
  "id"  INTEGER PRIMARY KEY,
  "iso" char(2) NOT NULL DEFAULT '',
  "name" varchar(80) NOT NULL DEFAULT '',
  "printable_name" varchar(80) NOT NULL DEFAULT '',
  "iso3" char(3) DEFAULT NULL,
  "numcode" smallint(6) DEFAULT NULL
);
INSERT INTO "countries" VALUES (1,'AF','AFGHANISTAN','Afghanistan','AFG',4);
INSERT INTO "countries" VALUES (2,'AL','ALBANIA','Albania','ALB',8);
INSERT INTO "countries" VALUES (3,'DZ','ALGERIA','Algeria','DZA',12);
INSERT INTO "countries" VALUES (4,'AS','AMERICAN SAMOA','American Samoa','ASM',16);
INSERT INTO "countries" VALUES (5,'AD','ANDORRA','Andorra','AND',20);
INSERT INTO "countries" VALUES (6,'AO','ANGOLA','Angola','AGO',24);
INSERT INTO "countries" VALUES (7,'AI','ANGUILLA','Anguilla','AIA',660);
INSERT INTO "countries" VALUES (8,'AQ','ANTARCTICA','Antarctica',NULL,NULL);
INSERT INTO "countries" VALUES (9,'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG',28);
INSERT INTO "countries" VALUES (10,'AR','ARGENTINA','Argentina','ARG',32);
INSERT INTO "countries" VALUES (11,'AM','ARMENIA','Armenia','ARM',51);
INSERT INTO "countries" VALUES (12,'AW','ARUBA','Aruba','ABW',533);
INSERT INTO "countries" VALUES (13,'AU','AUSTRALIA','Australia','AUS',36);
INSERT INTO "countries" VALUES (14,'AT','AUSTRIA','Austria','AUT',40);
INSERT INTO "countries" VALUES (15,'AZ','AZERBAIJAN','Azerbaijan','AZE',31);
INSERT INTO "countries" VALUES (16,'BS','BAHAMAS','Bahamas','BHS',44);
INSERT INTO "countries" VALUES (17,'BH','BAHRAIN','Bahrain','BHR',48);
INSERT INTO "countries" VALUES (18,'BD','BANGLADESH','Bangladesh','BGD',50);
INSERT INTO "countries" VALUES (19,'BB','BARBADOS','Barbados','BRB',52);
INSERT INTO "countries" VALUES (20,'BY','BELARUS','Belarus','BLR',112);
INSERT INTO "countries" VALUES (21,'BE','BELGIUM','Belgium','BEL',56);
INSERT INTO "countries" VALUES (22,'BZ','BELIZE','Belize','BLZ',84);
INSERT INTO "countries" VALUES (23,'BJ','BENIN','Benin','BEN',204);
INSERT INTO "countries" VALUES (24,'BM','BERMUDA','Bermuda','BMU',60);
INSERT INTO "countries" VALUES (25,'BT','BHUTAN','Bhutan','BTN',64);
INSERT INTO "countries" VALUES (26,'BO','BOLIVIA','Bolivia','BOL',68);
INSERT INTO "countries" VALUES (27,'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH',70);
INSERT INTO "countries" VALUES (28,'BW','BOTSWANA','Botswana','BWA',72);
INSERT INTO "countries" VALUES (29,'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL);
INSERT INTO "countries" VALUES (30,'BR','BRAZIL','Brazil','BRA',76);
INSERT INTO "countries" VALUES (31,'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL);
INSERT INTO "countries" VALUES (32,'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN',96);
INSERT INTO "countries" VALUES (33,'BG','BULGARIA','Bulgaria','BGR',100);
INSERT INTO "countries" VALUES (34,'BF','BURKINA FASO','Burkina Faso','BFA',854);
INSERT INTO "countries" VALUES (35,'BI','BURUNDI','Burundi','BDI',108);
INSERT INTO "countries" VALUES (36,'KH','CAMBODIA','Cambodia','KHM',116);
INSERT INTO "countries" VALUES (37,'CM','CAMEROON','Cameroon','CMR',120);
INSERT INTO "countries" VALUES (38,'CA','CANADA','Canada','CAN',124);
INSERT INTO "countries" VALUES (39,'CV','CAPE VERDE','Cape Verde','CPV',132);
INSERT INTO "countries" VALUES (40,'KY','CAYMAN ISLANDS','Cayman Islands','CYM',136);
INSERT INTO "countries" VALUES (41,'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF',140);
INSERT INTO "countries" VALUES (42,'TD','CHAD','Chad','TCD',148);
INSERT INTO "countries" VALUES (43,'CL','CHILE','Chile','CHL',152);
INSERT INTO "countries" VALUES (44,'CN','CHINA','China','CHN',156);
INSERT INTO "countries" VALUES (45,'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL);
INSERT INTO "countries" VALUES (46,'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL);
INSERT INTO "countries" VALUES (47,'CO','COLOMBIA','Colombia','COL',170);
INSERT INTO "countries" VALUES (48,'KM','COMOROS','Comoros','COM',174);
INSERT INTO "countries" VALUES (49,'CG','CONGO','Congo','COG',178);
INSERT INTO "countries" VALUES (50,'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD',180);
INSERT INTO "countries" VALUES (51,'CK','COOK ISLANDS','Cook Islands','COK',184);
INSERT INTO "countries" VALUES (52,'CR','COSTA RICA','Costa Rica','CRI',188);
INSERT INTO "countries" VALUES (53,'CI','COTE D''IVOIRE','Cote D''Ivoire','CIV',384);
INSERT INTO "countries" VALUES (54,'HR','CROATIA','Croatia','HRV',191);
INSERT INTO "countries" VALUES (55,'CU','CUBA','Cuba','CUB',192);
INSERT INTO "countries" VALUES (56,'CY','CYPRUS','Cyprus','CYP',196);
INSERT INTO "countries" VALUES (57,'CZ','CZECH REPUBLIC','Czech Republic','CZE',203);
INSERT INTO "countries" VALUES (58,'DK','DENMARK','Denmark','DNK',208);
INSERT INTO "countries" VALUES (59,'DJ','DJIBOUTI','Djibouti','DJI',262);
INSERT INTO "countries" VALUES (60,'DM','DOMINICA','Dominica','DMA',212);
INSERT INTO "countries" VALUES (61,'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM',214);
INSERT INTO "countries" VALUES (62,'EC','ECUADOR','Ecuador','ECU',218);
INSERT INTO "countries" VALUES (63,'EG','EGYPT','Egypt','EGY',818);
INSERT INTO "countries" VALUES (64,'SV','EL SALVADOR','El Salvador','SLV',222);
INSERT INTO "countries" VALUES (65,'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ',226);
INSERT INTO "countries" VALUES (66,'ER','ERITREA','Eritrea','ERI',232);
INSERT INTO "countries" VALUES (67,'EE','ESTONIA','Estonia','EST',233);
INSERT INTO "countries" VALUES (68,'ET','ETHIOPIA','Ethiopia','ETH',231);
INSERT INTO "countries" VALUES (69,'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK',238);
INSERT INTO "countries" VALUES (70,'FO','FAROE ISLANDS','Faroe Islands','FRO',234);
INSERT INTO "countries" VALUES (71,'FJ','FIJI','Fiji','FJI',242);
INSERT INTO "countries" VALUES (72,'FI','FINLAND','Finland','FIN',246);
INSERT INTO "countries" VALUES (73,'FR','FRANCE','France','FRA',250);
INSERT INTO "countries" VALUES (74,'GF','FRENCH GUIANA','French Guiana','GUF',254);
INSERT INTO "countries" VALUES (75,'PF','FRENCH POLYNESIA','French Polynesia','PYF',258);
INSERT INTO "countries" VALUES (76,'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL);
INSERT INTO "countries" VALUES (77,'GA','GABON','Gabon','GAB',266);
INSERT INTO "countries" VALUES (78,'GM','GAMBIA','Gambia','GMB',270);
INSERT INTO "countries" VALUES (79,'GE','GEORGIA','Georgia','GEO',268);
INSERT INTO "countries" VALUES (80,'DE','GERMANY','Germany','DEU',276);
INSERT INTO "countries" VALUES (81,'GH','GHANA','Ghana','GHA',288);
INSERT INTO "countries" VALUES (82,'GI','GIBRALTAR','Gibraltar','GIB',292);
INSERT INTO "countries" VALUES (83,'GR','GREECE','Greece','GRC',300);
INSERT INTO "countries" VALUES (84,'GL','GREENLAND','Greenland','GRL',304);
INSERT INTO "countries" VALUES (85,'GD','GRENADA','Grenada','GRD',308);
INSERT INTO "countries" VALUES (86,'GP','GUADELOUPE','Guadeloupe','GLP',312);
INSERT INTO "countries" VALUES (87,'GU','GUAM','Guam','GUM',316);
INSERT INTO "countries" VALUES (88,'GT','GUATEMALA','Guatemala','GTM',320);
INSERT INTO "countries" VALUES (89,'GN','GUINEA','Guinea','GIN',324);
INSERT INTO "countries" VALUES (90,'GW','GUINEA-BISSAU','Guinea-Bissau','GNB',624);
INSERT INTO "countries" VALUES (91,'GY','GUYANA','Guyana','GUY',328);
INSERT INTO "countries" VALUES (92,'HT','HAITI','Haiti','HTI',332);
INSERT INTO "countries" VALUES (93,'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL);
INSERT INTO "countries" VALUES (94,'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT',336);
INSERT INTO "countries" VALUES (95,'HN','HONDURAS','Honduras','HND',340);
INSERT INTO "countries" VALUES (96,'HK','HONG KONG','Hong Kong','HKG',344);
INSERT INTO "countries" VALUES (97,'HU','HUNGARY','Hungary','HUN',348);
INSERT INTO "countries" VALUES (98,'IS','ICELAND','Iceland','ISL',352);
INSERT INTO "countries" VALUES (99,'IN','INDIA','India','IND',356);
INSERT INTO "countries" VALUES (100,'ID','INDONESIA','Indonesia','IDN',360);
INSERT INTO "countries" VALUES (101,'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN',364);
INSERT INTO "countries" VALUES (102,'IQ','IRAQ','Iraq','IRQ',368);
INSERT INTO "countries" VALUES (103,'IE','IRELAND','Ireland','IRL',372);
INSERT INTO "countries" VALUES (104,'IL','ISRAEL','Israel','ISR',376);
INSERT INTO "countries" VALUES (105,'IT','ITALY','Italy','ITA',380);
INSERT INTO "countries" VALUES (106,'JM','JAMAICA','Jamaica','JAM',388);
INSERT INTO "countries" VALUES (107,'JP','JAPAN','Japan','JPN',392);
INSERT INTO "countries" VALUES (108,'JO','JORDAN','Jordan','JOR',400);
INSERT INTO "countries" VALUES (109,'KZ','KAZAKHSTAN','Kazakhstan','KAZ',398);
INSERT INTO "countries" VALUES (110,'KE','KENYA','Kenya','KEN',404);
INSERT INTO "countries" VALUES (111,'KI','KIRIBATI','Kiribati','KIR',296);
INSERT INTO "countries" VALUES (112,'KP','KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF','Korea, Democratic People''s Republic of','PRK',408);
INSERT INTO "countries" VALUES (113,'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR',410);
INSERT INTO "countries" VALUES (114,'KW','KUWAIT','Kuwait','KWT',414);
INSERT INTO "countries" VALUES (115,'KG','KYRGYZSTAN','Kyrgyzstan','KGZ',417);
INSERT INTO "countries" VALUES (116,'LA','LAO PEOPLE''S DEMOCRATIC REPUBLIC','Lao People''s Democratic Republic','LAO',418);
INSERT INTO "countries" VALUES (117,'LV','LATVIA','Latvia','LVA',428);
INSERT INTO "countries" VALUES (118,'LB','LEBANON','Lebanon','LBN',422);
INSERT INTO "countries" VALUES (119,'LS','LESOTHO','Lesotho','LSO',426);
INSERT INTO "countries" VALUES (120,'LR','LIBERIA','Liberia','LBR',430);
INSERT INTO "countries" VALUES (121,'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY',434);
INSERT INTO "countries" VALUES (122,'LI','LIECHTENSTEIN','Liechtenstein','LIE',438);
INSERT INTO "countries" VALUES (123,'LT','LITHUANIA','Lithuania','LTU',440);
INSERT INTO "countries" VALUES (124,'LU','LUXEMBOURG','Luxembourg','LUX',442);
INSERT INTO "countries" VALUES (125,'MO','MACAO','Macao','MAC',446);
INSERT INTO "countries" VALUES (126,'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD',807);
INSERT INTO "countries" VALUES (127,'MG','MADAGASCAR','Madagascar','MDG',450);
INSERT INTO "countries" VALUES (128,'MW','MALAWI','Malawi','MWI',454);
INSERT INTO "countries" VALUES (129,'MY','MALAYSIA','Malaysia','MYS',458);
INSERT INTO "countries" VALUES (130,'MV','MALDIVES','Maldives','MDV',462);
INSERT INTO "countries" VALUES (131,'ML','MALI','Mali','MLI',466);
INSERT INTO "countries" VALUES (132,'MT','MALTA','Malta','MLT',470);
INSERT INTO "countries" VALUES (133,'MH','MARSHALL ISLANDS','Marshall Islands','MHL',584);
INSERT INTO "countries" VALUES (134,'MQ','MARTINIQUE','Martinique','MTQ',474);
INSERT INTO "countries" VALUES (135,'MR','MAURITANIA','Mauritania','MRT',478);
INSERT INTO "countries" VALUES (136,'MU','MAURITIUS','Mauritius','MUS',480);
INSERT INTO "countries" VALUES (137,'YT','MAYOTTE','Mayotte',NULL,NULL);
INSERT INTO "countries" VALUES (138,'MX','MEXICO','Mexico','MEX',484);
INSERT INTO "countries" VALUES (139,'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM',583);
INSERT INTO "countries" VALUES (140,'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA',498);
INSERT INTO "countries" VALUES (141,'MC','MONACO','Monaco','MCO',492);
INSERT INTO "countries" VALUES (142,'MN','MONGOLIA','Mongolia','MNG',496);
INSERT INTO "countries" VALUES (143,'MS','MONTSERRAT','Montserrat','MSR',500);
INSERT INTO "countries" VALUES (144,'MA','MOROCCO','Morocco','MAR',504);
INSERT INTO "countries" VALUES (145,'MZ','MOZAMBIQUE','Mozambique','MOZ',508);
INSERT INTO "countries" VALUES (146,'MM','MYANMAR','Myanmar','MMR',104);
INSERT INTO "countries" VALUES (147,'NA','NAMIBIA','Namibia','NAM',516);
INSERT INTO "countries" VALUES (148,'NR','NAURU','Nauru','NRU',520);
INSERT INTO "countries" VALUES (149,'NP','NEPAL','Nepal','NPL',524);
INSERT INTO "countries" VALUES (150,'NL','NETHERLANDS','Netherlands','NLD',528);
INSERT INTO "countries" VALUES (151,'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT',530);
INSERT INTO "countries" VALUES (152,'NC','NEW CALEDONIA','New Caledonia','NCL',540);
INSERT INTO "countries" VALUES (153,'NZ','NEW ZEALAND','New Zealand','NZL',554);
INSERT INTO "countries" VALUES (154,'NI','NICARAGUA','Nicaragua','NIC',558);
INSERT INTO "countries" VALUES (155,'NE','NIGER','Niger','NER',562);
INSERT INTO "countries" VALUES (156,'NG','NIGERIA','Nigeria','NGA',566);
INSERT INTO "countries" VALUES (157,'NU','NIUE','Niue','NIU',570);
INSERT INTO "countries" VALUES (158,'NF','NORFOLK ISLAND','Norfolk Island','NFK',574);
INSERT INTO "countries" VALUES (159,'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP',580);
INSERT INTO "countries" VALUES (160,'NO','NORWAY','Norway','NOR',578);
INSERT INTO "countries" VALUES (161,'OM','OMAN','Oman','OMN',512);
INSERT INTO "countries" VALUES (162,'PK','PAKISTAN','Pakistan','PAK',586);
INSERT INTO "countries" VALUES (163,'PW','PALAU','Palau','PLW',585);
INSERT INTO "countries" VALUES (164,'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL);
INSERT INTO "countries" VALUES (165,'PA','PANAMA','Panama','PAN',591);
INSERT INTO "countries" VALUES (166,'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG',598);
INSERT INTO "countries" VALUES (167,'PY','PARAGUAY','Paraguay','PRY',600);
INSERT INTO "countries" VALUES (168,'PE','PERU','Peru','PER',604);
INSERT INTO "countries" VALUES (169,'PH','PHILIPPINES','Philippines','PHL',608);
INSERT INTO "countries" VALUES (170,'PN','PITCAIRN','Pitcairn','PCN',612);
INSERT INTO "countries" VALUES (171,'PL','POLAND','Poland','POL',616);
INSERT INTO "countries" VALUES (172,'PT','PORTUGAL','Portugal','PRT',620);
INSERT INTO "countries" VALUES (173,'PR','PUERTO RICO','Puerto Rico','PRI',630);
INSERT INTO "countries" VALUES (174,'QA','QATAR','Qatar','QAT',634);
INSERT INTO "countries" VALUES (175,'RE','REUNION','Reunion','REU',638);
INSERT INTO "countries" VALUES (176,'RO','ROMANIA','Romania','ROM',642);
INSERT INTO "countries" VALUES (177,'RU','RUSSIAN FEDERATION','Russian Federation','RUS',643);
INSERT INTO "countries" VALUES (178,'RW','RWANDA','Rwanda','RWA',646);
INSERT INTO "countries" VALUES (179,'SH','SAINT HELENA','Saint Helena','SHN',654);
INSERT INTO "countries" VALUES (180,'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA',659);
INSERT INTO "countries" VALUES (181,'LC','SAINT LUCIA','Saint Lucia','LCA',662);
INSERT INTO "countries" VALUES (182,'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM',666);
INSERT INTO "countries" VALUES (183,'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT',670);
INSERT INTO "countries" VALUES (184,'WS','SAMOA','Samoa','WSM',882);
INSERT INTO "countries" VALUES (185,'SM','SAN MARINO','San Marino','SMR',674);
INSERT INTO "countries" VALUES (186,'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP',678);
INSERT INTO "countries" VALUES (187,'SA','SAUDI ARABIA','Saudi Arabia','SAU',682);
INSERT INTO "countries" VALUES (188,'SN','SENEGAL','Senegal','SEN',686);
INSERT INTO "countries" VALUES (189,'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL);
INSERT INTO "countries" VALUES (190,'SC','SEYCHELLES','Seychelles','SYC',690);
INSERT INTO "countries" VALUES (191,'SL','SIERRA LEONE','Sierra Leone','SLE',694);
INSERT INTO "countries" VALUES (192,'SG','SINGAPORE','Singapore','SGP',702);
INSERT INTO "countries" VALUES (193,'SK','SLOVAKIA','Slovakia','SVK',703);
INSERT INTO "countries" VALUES (194,'SI','SLOVENIA','Slovenia','SVN',705);
INSERT INTO "countries" VALUES (195,'SB','SOLOMON ISLANDS','Solomon Islands','SLB',90);
INSERT INTO "countries" VALUES (196,'SO','SOMALIA','Somalia','SOM',706);
INSERT INTO "countries" VALUES (197,'ZA','SOUTH AFRICA','South Africa','ZAF',710);
INSERT INTO "countries" VALUES (198,'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL);
INSERT INTO "countries" VALUES (199,'ES','SPAIN','Spain','ESP',724);
INSERT INTO "countries" VALUES (200,'LK','SRI LANKA','Sri Lanka','LKA',144);
INSERT INTO "countries" VALUES (201,'SD','SUDAN','Sudan','SDN',736);
INSERT INTO "countries" VALUES (202,'SR','SURINAME','Suriname','SUR',740);
INSERT INTO "countries" VALUES (203,'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM',744);
INSERT INTO "countries" VALUES (204,'SZ','SWAZILAND','Swaziland','SWZ',748);
INSERT INTO "countries" VALUES (205,'SE','SWEDEN','Sweden','SWE',752);
INSERT INTO "countries" VALUES (206,'CH','SWITZERLAND','Switzerland','CHE',756);
INSERT INTO "countries" VALUES (207,'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR',760);
INSERT INTO "countries" VALUES (208,'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN',158);
INSERT INTO "countries" VALUES (209,'TJ','TAJIKISTAN','Tajikistan','TJK',762);
INSERT INTO "countries" VALUES (210,'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA',834);
INSERT INTO "countries" VALUES (211,'TH','THAILAND','Thailand','THA',764);
INSERT INTO "countries" VALUES (212,'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL);
INSERT INTO "countries" VALUES (213,'TG','TOGO','Togo','TGO',768);
INSERT INTO "countries" VALUES (214,'TK','TOKELAU','Tokelau','TKL',772);
INSERT INTO "countries" VALUES (215,'TO','TONGA','Tonga','TON',776);
INSERT INTO "countries" VALUES (216,'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO',780);
INSERT INTO "countries" VALUES (217,'TN','TUNISIA','Tunisia','TUN',788);
INSERT INTO "countries" VALUES (218,'TR','TURKEY','Turkey','TUR',792);
INSERT INTO "countries" VALUES (219,'TM','TURKMENISTAN','Turkmenistan','TKM',795);
INSERT INTO "countries" VALUES (220,'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA',796);
INSERT INTO "countries" VALUES (221,'TV','TUVALU','Tuvalu','TUV',798);
INSERT INTO "countries" VALUES (222,'UG','UGANDA','Uganda','UGA',800);
INSERT INTO "countries" VALUES (223,'UA','UKRAINE','Ukraine','UKR',804);
INSERT INTO "countries" VALUES (224,'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE',784);
INSERT INTO "countries" VALUES (225,'GB','UNITED KINGDOM','United Kingdom','GBR',826);
INSERT INTO "countries" VALUES (226,'US','UNITED STATES','United States','USA',840);
INSERT INTO "countries" VALUES (227,'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL);
INSERT INTO "countries" VALUES (228,'UY','URUGUAY','Uruguay','URY',858);
INSERT INTO "countries" VALUES (229,'UZ','UZBEKISTAN','Uzbekistan','UZB',860);
INSERT INTO "countries" VALUES (230,'VU','VANUATU','Vanuatu','VUT',548);
INSERT INTO "countries" VALUES (231,'VE','VENEZUELA','Venezuela','VEN',862);
INSERT INTO "countries" VALUES (232,'VN','VIET NAM','Viet Nam','VNM',704);
INSERT INTO "countries" VALUES (233,'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB',92);
INSERT INTO "countries" VALUES (234,'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR',850);
INSERT INTO "countries" VALUES (235,'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF',876);
INSERT INTO "countries" VALUES (236,'EH','WESTERN SAHARA','Western Sahara','ESH',732);
INSERT INTO "countries" VALUES (237,'YE','YEMEN','Yemen','YEM',887);
INSERT INTO "countries" VALUES (238,'ZM','ZAMBIA','Zambia','ZMB',894);
INSERT INTO "countries" VALUES (239,'ZW','ZIMBABWE','Zimbabwe','ZWE',716);
CREATE TABLE "items" (
  "id"  INTEGER PRIMARY KEY,
  "name" varchar(128) NOT NULL,
  "rental_price" decimal(5,2) NOT NULL
);
INSERT INTO "items" VALUES (5,'Accent Chair','25.00');
INSERT INTO "items" VALUES (33,'Accessories','10.00');
INSERT INTO "items" VALUES (34,'Accessories','15.00');
INSERT INTO "items" VALUES (35,'Accessories','20.00');
INSERT INTO "items" VALUES (36,'Accessories','25.00');
INSERT INTO "items" VALUES (37,'Accessories','30.00');
INSERT INTO "items" VALUES (21,'Artwork','10.00');
INSERT INTO "items" VALUES (22,'Artwork','15.00');
INSERT INTO "items" VALUES (23,'Artwork','18.00');
INSERT INTO "items" VALUES (24,'Barstool','10.00');
INSERT INTO "items" VALUES (29,'Bathroom Countertop Accessories','7.00');
INSERT INTO "items" VALUES (30,'Bathroom Towel Set','10.00');
INSERT INTO "items" VALUES (8,'Chair','30.00');
INSERT INTO "items" VALUES (7,'Chair','35.00');
INSERT INTO "items" VALUES (9,'Chair','40.00');
INSERT INTO "items" VALUES (11,'Coffee Table','20.00');
INSERT INTO "items" VALUES (18,'Comforter Set','35.00');
INSERT INTO "items" VALUES (28,'Console Table','15.00');
INSERT INTO "items" VALUES (27,'Dining Centerpiece','15.00');
INSERT INTO "items" VALUES (26,'Dining Chairs','8.00');
INSERT INTO "items" VALUES (10,'End Table','15.00');
INSERT INTO "items" VALUES (4,'Floor Lamp','0.00');
INSERT INTO "items" VALUES (19,'Hallway Accessories','10.00');
INSERT INTO "items" VALUES (16,'King Airbed and Comforter Set','45.00');
INSERT INTO "items" VALUES (25,'Kitchen Countertop Accessories','25.00');
INSERT INTO "items" VALUES (31,'Lamp','11.00');
INSERT INTO "items" VALUES (3,'Loveseat','50.00');
INSERT INTO "items" VALUES (32,'Night Stand','20.00');
INSERT INTO "items" VALUES (13,'Outdoor Chair','8.00');
INSERT INTO "items" VALUES (12,'Outdoor Table','15.00');
INSERT INTO "items" VALUES (38,'Pillows','5.00');
INSERT INTO "items" VALUES (15,'Queen Airbed and Comforter Set','40.00');
INSERT INTO "items" VALUES (6,'Rug','25.00');
INSERT INTO "items" VALUES (20,'Shower Curtain','10.00');
INSERT INTO "items" VALUES (14,'Small Outdoor Table Set','10.00');
INSERT INTO "items" VALUES (1,'Sofa','50.00');
INSERT INTO "items" VALUES (2,'Sofa','55.00');
INSERT INTO "items" VALUES (17,'Twin Airbed and Comforter Set','35.00');
CREATE TABLE "properties" (
  "id"  INTEGER PRIMARY KEY,
  "address" varchar(128) NOT NULL,
  "city" varchar(128) NOT NULL,
  "state_id" int(11) DEFAULT NULL,
  "province_id" int(11) DEFAULT NULL,
  "country_id" int(11) NOT NULL,
  "sqft" int(11) DEFAULT NULL,
  "listing_price" int(11) DEFAULT NULL,
  "selling_price" int(11) DEFAULT NULL,
  "est_closing_date" date DEFAULT NULL,
  "status" text  DEFAULT NULL,
  "business_id" int(11) NOT NULL,
  CONSTRAINT "properties_fk1" FOREIGN KEY ("business_id") REFERENCES "businesses" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "properties_fk2" FOREIGN KEY ("state_id") REFERENCES "states" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "properties_fk3" FOREIGN KEY ("country_id") REFERENCES "countries" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE "property_rooms" (
  "id"  INTEGER PRIMARY KEY,
  "property_id" int(11) NOT NULL,
  "room_id" int(11) NOT NULL,
  CONSTRAINT "property_rooms_fk1" FOREIGN KEY ("property_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "property_rooms_fk2" FOREIGN KEY ("room_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE "room_items" (
  "id"  INTEGER PRIMARY KEY,
  "room_id" int(11) NOT NULL,
  "item_id" int(11) NOT NULL,
  CONSTRAINT "room_items_fk1" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT "room_items_fk2" FOREIGN KEY ("item_id") REFERENCES "items" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION
);
CREATE TABLE "rooms" (
  "id"  INTEGER PRIMARY KEY,
  "name" varchar(128) NOT NULL,
  "abbr" varchar(8) DEFAULT NULL
);
INSERT INTO "rooms" VALUES (1,'Bedroom','');
INSERT INTO "rooms" VALUES (2,'Master Bedroom','');
INSERT INTO "rooms" VALUES (3,'Bathroom','');
INSERT INTO "rooms" VALUES (4,'Master Bathroom','');
INSERT INTO "rooms" VALUES (5,'Half Bathroom','');
INSERT INTO "rooms" VALUES (6,'Living Room','');
INSERT INTO "rooms" VALUES (7,'Family Room','');
INSERT INTO "rooms" VALUES (8,'Kitchen','');
INSERT INTO "rooms" VALUES (9,'Kitchen Nook','');
INSERT INTO "rooms" VALUES (10,'Office','');
INSERT INTO "rooms" VALUES (11,'Patio','');
INSERT INTO "rooms" VALUES (12,'Main Deck','');
INSERT INTO "rooms" VALUES (13,'Side Deck','');
INSERT INTO "rooms" VALUES (14,'Entryway','');
INSERT INTO "rooms" VALUES (15,'Hallway','');
INSERT INTO "rooms" VALUES (16,'Media Room','');
INSERT INTO "rooms" VALUES (17,'Den','');
INSERT INTO "rooms" VALUES (18,'Laundry Room','');
CREATE TABLE "states" (
  "id"  INTEGER PRIMARY KEY,
  "name" char(40) NOT NULL DEFAULT '',
  "abbrev" char(2) NOT NULL DEFAULT ''
);
INSERT INTO "states" VALUES (1,'Alaska','AK');
INSERT INTO "states" VALUES (2,'Alabama','AL');
INSERT INTO "states" VALUES (3,'American Samoa','AS');
INSERT INTO "states" VALUES (4,'Arizona','AZ');
INSERT INTO "states" VALUES (5,'Arkansas','AR');
INSERT INTO "states" VALUES (6,'California','CA');
INSERT INTO "states" VALUES (7,'Colorado','CO');
INSERT INTO "states" VALUES (8,'Connecticut','CT');
INSERT INTO "states" VALUES (9,'Delaware','DE');
INSERT INTO "states" VALUES (10,'District of Columbia','DC');
INSERT INTO "states" VALUES (11,'Federated States of Micronesia','FM');
INSERT INTO "states" VALUES (12,'Florida','FL');
INSERT INTO "states" VALUES (13,'Georgia','GA');
INSERT INTO "states" VALUES (14,'Guam','GU');
INSERT INTO "states" VALUES (15,'Hawaii','HI');
INSERT INTO "states" VALUES (16,'Idaho','ID');
INSERT INTO "states" VALUES (17,'Illinois','IL');
INSERT INTO "states" VALUES (18,'Indiana','IN');
INSERT INTO "states" VALUES (19,'Iowa','IA');
INSERT INTO "states" VALUES (20,'Kansas','KS');
INSERT INTO "states" VALUES (21,'Kentucky','KY');
INSERT INTO "states" VALUES (22,'Louisiana','LA');
INSERT INTO "states" VALUES (23,'Maine','ME');
INSERT INTO "states" VALUES (24,'Marshall Islands','MH');
INSERT INTO "states" VALUES (25,'Maryland','MD');
INSERT INTO "states" VALUES (26,'Massachusetts','MA');
INSERT INTO "states" VALUES (27,'Michigan','MI');
INSERT INTO "states" VALUES (28,'Minnesota','MN');
INSERT INTO "states" VALUES (29,'Mississippi','MS');
INSERT INTO "states" VALUES (30,'Missouri','MO');
INSERT INTO "states" VALUES (31,'Montana','MT');
INSERT INTO "states" VALUES (32,'Nebraska','NE');
INSERT INTO "states" VALUES (33,'Nevada','NV');
INSERT INTO "states" VALUES (34,'New Hampshire','NH');
INSERT INTO "states" VALUES (35,'New Jersey','NJ');
INSERT INTO "states" VALUES (36,'New Mexico','NM');
INSERT INTO "states" VALUES (37,'New York','NY');
INSERT INTO "states" VALUES (38,'North Carolina','NC');
INSERT INTO "states" VALUES (39,'North Dakota','ND');
INSERT INTO "states" VALUES (40,'Northern Mariana Islands','MP');
INSERT INTO "states" VALUES (41,'Ohio','OH');
INSERT INTO "states" VALUES (42,'Oklahoma','OK');
INSERT INTO "states" VALUES (43,'Oregon','OR');
INSERT INTO "states" VALUES (44,'Palau','PW');
INSERT INTO "states" VALUES (45,'Pennsylvania','PA');
INSERT INTO "states" VALUES (46,'Puerto Rico','PR');
INSERT INTO "states" VALUES (47,'Rhode Island','RI');
INSERT INTO "states" VALUES (48,'South Carolina','SC');
INSERT INTO "states" VALUES (49,'South Dakota','SD');
INSERT INTO "states" VALUES (50,'Tennessee','TN');
INSERT INTO "states" VALUES (51,'Texas','TX');
INSERT INTO "states" VALUES (52,'Utah','UT');
INSERT INTO "states" VALUES (53,'Vermont','VT');
INSERT INTO "states" VALUES (54,'Virgin Islands','VI');
INSERT INTO "states" VALUES (55,'Virginia','VA');
INSERT INTO "states" VALUES (56,'Washington','WA');
INSERT INTO "states" VALUES (57,'West Virginia','WV');
INSERT INTO "states" VALUES (58,'Wisconsin','WI');
INSERT INTO "states" VALUES (59,'Wyoming','WY');
INSERT INTO "states" VALUES (60,'Armed Forces Africa','AE');
INSERT INTO "states" VALUES (61,'Armed Forces Americas (except Canada)','AA');
INSERT INTO "states" VALUES (62,'Armed Forces Canada','AE');
INSERT INTO "states" VALUES (63,'Armed Forces Europe','AE');
INSERT INTO "states" VALUES (64,'Armed Forces Middle East','AE');
INSERT INTO "states" VALUES (65,'Armed Forces Pacific','AP');
CREATE INDEX "property_rooms_property_rooms_fk1" ON "property_rooms" ("property_id");
CREATE INDEX "property_rooms_property_rooms_fk2" ON "property_rooms" ("room_id");
CREATE INDEX "rooms_name_UNIQUE" ON "rooms" ("name");
CREATE INDEX "items_item_name_rental_price_ui1" ON "items" ("name","rental_price");
CREATE INDEX "room_items_room_items_fk1" ON "room_items" ("room_id");
CREATE INDEX "room_items_room_items_fk2" ON "room_items" ("item_id");
CREATE INDEX "properties_properties_idx1" ON "properties" ("business_id","address");
CREATE INDEX "properties_properties_fk1_idx" ON "properties" ("business_id");
CREATE INDEX "properties_properties_fk2_idx" ON "properties" ("state_id");
CREATE INDEX "properties_properties_fk3_idx" ON "properties" ("country_id");
CREATE INDEX "businesses_name_UNIQUE" ON "businesses" ("name");
CREATE INDEX "bids_bids_uidx1" ON "bids" ("property_id","bid_date");
CREATE INDEX "bids_bids_idx1" ON "bids" ("property_id");
CREATE INDEX "bids_bids_fk1_idx" ON "bids" ("property_id");
CREATE INDEX "bid_details_bid_details_fk1_idx" ON "bid_details" ("bid_id");
CREATE INDEX "bid_details_bid_details_fk2_idx" ON "bid_details" ("room_id");
CREATE INDEX "bid_details_bid_details_fk3_idx" ON "bid_details" ("item_id");
END TRANSACTION;
