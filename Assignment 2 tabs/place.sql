DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `place_id` varchar(255),
  `place_name` varchar(255) default NULL,
  `place_location_type` varchar(255) default NULL,
  `tc_address_line` varchar(255) default NULL,
  `tc_city_name` varchar(255),
  `tc_postal_code` varchar(10) default NULL,
  `tc_county` varchar(50) default NULL,
  `tc_country` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`place_id`,`place_name`,`place_location_type`,`tc_address_line`,`tc_city_name`,`tc_postal_code`,`tc_county`,`tc_country`)
VALUES
  ("PPyj43","Ladies bar","outdoor","917-9374 Conubia St.","Dover","IG6T 4DT","Kent","Nothern Ireland"),
  ("PPni32","Datamart","events_gathering","P.O. Box 738, 7102 Leo. St.","Kidderminster","R5I 4HX","Worcestershire","Nothern Ireland"),
  ("PPrj68","Datamart","events_gathering","703-2426 Tortor. Road","Knighton","N48 5UD","Radnorshire","England"),
  ("PPge67","Ladies bar","cultural","P.O. Box 666, 2003 Tellus Ave","Buckley","RB2 0SL","Flintshire","Nothern Ireland"),
  ("PPry64","Datamart","health_wellness","P.O. Box 131, 4579 Luctus Street","Dornoch","X1Q 7IC","Sutherland","Scotland"),
  ("PPjv88","Ladies bar","cultural","491-8126 Felis St.","Kirkcaldy","B84 7LL","Fife","Wales"),
  ("PPiv21","Datamart","anothers_home","605-7364 Enim Rd.","Broxburn","V52 5EN","West Lothian","Nothern Ireland"),
  ("PPem82","Datamart","entertainment","247-5761 Nec Av.","Warminster","OO62 2CU","Wiltshire","Wales"),
  ("PPwg48","Ladies bar","health_wellness","Ap #546-626 Ut, Street","Beaumaris","G2I 4KU","Anglesey","England"),
  ("PPur14","Ladies bar","anothers_home","P.O. Box 769, 5967 Consectetuer Ave","Oban","F3P 2WY","Argyllshire","Scotland");
INSERT INTO `myTable` (`place_id`,`place_name`,`place_location_type`,`tc_address_line`,`tc_city_name`,`tc_postal_code`,`tc_county`,`tc_country`)
VALUES
  ("PPuv05","Ladies bar","events_gathering","746-4370 Erat Ave","Chester","V2 8PC","Cheshire","England"),
  ("PPhh11","Ladies bar","dining","Ap #546-8536 Semper. Avenue","Lampeter","VK14 6UL","Cardiganshire","Scotland"),
  ("PPca42","Ladies bar","shopping","Ap #146-1996 Sed St.","Leighton Buzzard","TN37 7RV","Bedfordshire","Nothern Ireland"),
  ("PPuj44","Ladies bar","education","136-6457 Dui, Rd.","Abergele","X89 2DF","Denbighshire","Nothern Ireland"),
  ("PPdn98","Datamart","education","497-1504 Dis St.","Dunoon","Q09 9UY","Argyllshire","Wales"),
  ("PPnl13","Ladies bar","anothers_home","P.O. Box 984, 3700 Blandit St.","St. Ives","YI7W 8DM","Huntingdonshire","Nothern Ireland"),
  ("PPrm01","Datamart","cultural","P.O. Box 596, 5995 Vestibulum, Road","Llanidloes","S72 6WU","Montgomeryshire","Wales"),
  ("PPvb74","Datamart","health_wellness","P.O. Box 608, 8406 Magnis Road","Livingston","F4 9VW","West Lothian","England"),
  ("PPyx27","Datamart","education","220-6322 Tristique Rd.","Coalville","I7 1SD","Leicestershire","Nothern Ireland"),
  ("PPjw18","Datamart","anothers_home","P.O. Box 110, 2750 Lorem, St.","Fochabers","FF6 8KB","Morayshire","Nothern Ireland");
