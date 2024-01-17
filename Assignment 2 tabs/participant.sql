DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `p_id` mediumint,
  `name` varchar(255) default NULL,
  `p_phone_no` varchar(100) default NULL,
  `p_DOB` varchar(255),
  `p_address_line` varchar(255) default NULL,
  `p_city_name` varchar(255),
  `p_county` varchar(50) default NULL,
  `p_postal_code` varchar(10) default NULL,
  `Country` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`p_id`,`name`,`p_phone_no`,`p_DOB`,`p_address_line`,`p_city_name`,`p_county`,`p_postal_code`,`Country`)
VALUES
  ("PID{INCR}}","Robin Battle","(0111) 775 5180","11/11/1979","P.O. Box 340, 6521 Lectus, Av.","Hertford","Hertfordshire","NL49 2KS","United Kingdom"),
  ("PID{INCR}}","Stuart Lamb","0875 274 5277","08/08/1946","Ap #209-6508 Sapien, Rd.","Holyhead","Anglesey","VI8 1XN","United Kingdom"),
  ("PID{INCR}}","Barclay Langley","0839 232 5323","04/11/2013","P.O. Box 351, 8682 A, Road","Pitlochry","Perthshire","E7K 7BZ","United Kingdom"),
  ("PID{INCR}}","Fay Hood","0323 784 5886","18/12/2003","759-4920 Pede. Ave","Lincoln","Lincolnshire","B18 0EI","United Kingdom"),
  ("PID{INCR}}","Portia Gomez","0999 498 4886","12/07/2000","P.O. Box 449, 5680 In Av.","Flint","Flintshire","N3J 6DM","United Kingdom"),
  ("PID{INCR}}","Leonard Webb","(012561) 53851","25/05/2020","3885 Lacus. Av.","Rothesay","Buteshire","K87 4XL","United Kingdom"),
  ("PID{INCR}}","Lionel Michael","(0191) 479 6858","20/12/1999","957-8417 Metus. St.","Birmingham","Warwickshire","N4 2OS","United Kingdom"),
  ("PID{INCR}}","Josiah Solomon","(0181) 126 7732","01/02/1964","Ap #800-2707 Pede. Rd.","Skegness","Lincolnshire","LT3 2YE","United Kingdom"),
  ("PID{INCR}}","Sylvester O'Neill","07624 074753","20/07/1967","7172 Quam. Av.","Kingston-on-Thames","Surrey","PK3M 1FE","United Kingdom"),
  ("PID{INCR}}","Eleanor Gordon","(016977) 7285","13/05/1980","225-6974 Dolor. Rd.","Bloxham","Oxfordshire","V5D 7TK","United Kingdom");
INSERT INTO `myTable` (`p_id`,`name`,`p_phone_no`,`p_DOB`,`p_address_line`,`p_city_name`,`p_county`,`p_postal_code`,`Country`)
VALUES
  ("PID{INCR}}","Dane Nieves","0800 744516","18/12/1952","Ap #580-6675 Aliquet. Street","Keswick","Cumberland","KB7 5TF","United Kingdom"),
  ("PID{INCR}}","Thane Petty","(0113) 038 4061","18/07/1987","Ap #216-7276 Tempor Av.","Eyemouth","Berwickshire","MK3 6NI","United Kingdom"),
  ("PID{INCR}}","Rinah Cote","0357 162 1812","24/07/1955","Ap #481-5343 Metus. Rd.","Cirencester","Gloucestershire","TR8 5NH","United Kingdom"),
  ("PID{INCR}}","Tobias Lindsey","0861 541 0352","01/03/1988","P.O. Box 262, 3038 Nisi Street","Wrexham","Denbighshire","XU3 4SY","United Kingdom"),
  ("PID{INCR}}","Gabriel Dorsey","0918 542 0275","05/09/2000","Ap #531-5364 Orci. Ave","Scalloway","Shetland","OE7K 8EV","United Kingdom"),
  ("PID{INCR}}","Buckminster Price","070 3364 3877","08/12/1936","6403 Duis Rd.","Birkenhead","Cheshire","N05 4GX","United Kingdom"),
  ("PID{INCR}}","Austin Petersen","(0116) 532 7182","10/05/2017","503 Arcu. St.","Warrington","Lancashire","JJ6 3MO","United Kingdom"),
  ("PID{INCR}}","Samuel Conley","0800 871026","01/06/1983","736-2312 Lectus Avenue","Llandrindod Wells","Radnorshire","C2 8TA","United Kingdom"),
  ("PID{INCR}}","Patience Walton","(01345) 32744","30/03/1960","7616 Egestas Av.","Kircudbright","Kirkcudbrightshire","O3S 4QK","United Kingdom"),
  ("PID{INCR}}","Gray Rivas","055 1933 5824","02/04/2008","Ap #433-5352 Eget Avenue","Wigtown","Wigtownshire","QS26 2QG","United Kingdom");
