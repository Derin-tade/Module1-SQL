DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `tc_centre_id` mediumint default NULL,
  `tc_centre_name` varchar(255) default NULL,
  `tc_address_line` varchar(255) default NULL,
  `tc_city_name` varchar(255),
  `tc_postal_code` varchar(10) default NULL,
  `tc_county` varchar(50) default NULL,
  `tc_country` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`tc_centre_id`,`tc_centre_name`,`tc_address_line`,`tc_city_name`,`tc_postal_code`,`tc_county`,`tc_country`)
VALUES
  (4,"Themyscira","Ap #650-3607 Nulla. Av.","Wrexham","Q2 5KC","Denbighshire","Wales"),
  (2,"Hall of Justice","885-4679 Praesent Road","Greenock","XR9 6VY","Renfrewshire","England"),
  (7,"Hall of Justice","P.O. Box 197, 9532 Consequat Ave","Solihull","WC86 4TF","Warwickshire","Scotland"),
  (8,"Themyscira","1100 Est St.","Biggleswade","YZ62 9ZD","Bedfordshire","Scotland"),
  (10,"Arrowcave","Ap #832-1168 Nulla St.","Uppingham. Cottesmore","N6 2PS","Rutland","Nothern Ireland"),
  (4,"Arkham Assylum","P.O. Box 817, 4048 In Street","Alnwick","DF4 1SW","Northumberland","Scotland"),
  (4,"Arkham Assylum","7133 Elementum, St.","Hereford","QG1R 7VV","Herefordshire","Wales"),
  (4,"Arkham Assylum","P.O. Box 805, 6600 Hendrerit. St.","Alloa","QR4 5OV","Clackmannanshire","Nothern Ireland"),
  (3,"Fortress of Solitude","5246 Dapibus Ave","Tewkesbury","GH4C 2ND","Gloucestershire","Scotland"),
  (4,"Themyscira","P.O. Box 996, 3352 Dictum Av.","Chepstow","KT6J 8RP","Monmouthshire","Wales");
