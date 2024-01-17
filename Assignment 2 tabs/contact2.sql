DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `contact_id` mediumint,
  `contact_fname` varchar(255) default NULL,
  `contact_lname` varchar(255) default NULL,
  `contact_phone_no` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4001,"Scott","Hammond","(016977) 6492"),
  (4002,"Bo","Bradford","055 8687 6963"),
  (4003,"Bevis","Bernard","0386 786 9814"),
  (4004,"Kyla","Avery","07624 501274"),
  (4005,"Rhiannon","Silva","0845 46 46"),
  (4006,"Aquila","Bird","(01853) 89489"),
  (4007,"Avye","Mitchell","07361 323606"),
  (4008,"Demetria","Miranda","0500 444547"),
  (4009,"Zena","Kim","076 3944 7217"),
  (4010,"Stacey","Duncan","0800 647432");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4011,"Seth","Hampton","0800 343437"),
  (4012,"Burke","Myers","(01708) 658649"),
  (4013,"Tobias","Mckay","0916 274 1970"),
  (4014,"Ivory","Carson","(021) 0974 8027"),
  (4015,"Tasha","Parks","(027) 6681 1599"),
  (4016,"Dane","Dalton","0312 529 2326"),
  (4017,"Bree","Guerrero","(01442) 971645"),
  (4018,"Savannah","Moreno","056 9619 7277"),
  (4019,"Adara","Harper","070 8317 1687"),
  (4020,"Ifeoma","Patton","(01881) 56373");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4021,"Phoebe","Weber","0322 062 2388"),
  (4022,"Ferris","Sandoval","0800 1111"),
  (4023,"Zachery","Edwards","0800 397726"),
  (4024,"Drake","Ellis","0879 136 3789"),
  (4025,"Chelsea","Vincent","(024) 2552 5149"),
  (4026,"Todd","Manning","(014485) 53671"),
  (4027,"Branden","Keller","070 3612 7053"),
  (4028,"Zephr","Bryan","0977 695 1327"),
  (4029,"Clark","Greer","0915 794 2377"),
  (4030,"Aimee","Buck","0800 1111");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4031,"Roth","Norton","055 1388 8465"),
  (4032,"Laith","Collins","(01588) 006174"),
  (4033,"Ava","Higgins","(01153) 47177"),
  (4034,"Kelsey","Horne","0383 430 8316"),
  (4035,"Derek","Lopez","076 5963 7653"),
  (4036,"Samson","Mcfarland","070 5255 5292"),
  (4037,"Nehru","Kim","0845 46 47"),
  (4038,"Ian","Harmon","(0116) 178 6515"),
  (4039,"Petra","Gonzalez","(018931) 34571"),
  (4040,"Alyssa","Leach","076 5384 1472");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4041,"Phillip","Maddox","0800 273 8784"),
  (4042,"Martha","Hunt","0800 1111"),
  (4043,"Leila","Rollins","0980 928 3151"),
  (4044,"Robert","Porter","(0112) 554 0821"),
  (4045,"Montana","Schultz","0307 817 8077"),
  (4046,"Dieter","Lucas","0361 496 8712"),
  (4047,"Baxter","Diaz","055 1949 1885"),
  (4048,"Erasmus","Gould","055 9746 5862"),
  (4049,"Camille","Christensen","(01733) 26146"),
  (4050,"Clinton","Cabrera","(01151) 68178");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4051,"Uta","Stone","07662 242895"),
  (4052,"Kasper","Knight","(01146) 30308"),
  (4053,"Jacqueline","Guy","0800 173 7914"),
  (4054,"Melyssa","Calhoun","(0131) 469 9076"),
  (4055,"Joy","Mcneil","(022) 3352 3426"),
  (4056,"Sopoline","Hampton","055 2383 0858"),
  (4057,"Lara","Parrish","(0181) 788 1413"),
  (4058,"Echo","Herring","055 6702 5161"),
  (4059,"Christian","Stephens","055 4284 1822"),
  (4060,"Savannah","Kinney","07514 354521");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4061,"Jackson","Eaton","0951 335 2356"),
  (4062,"Kasimir","Strickland","(01164) 381797"),
  (4063,"Matthew","Noel","0500 445960"),
  (4064,"Bert","Tate","(014378) 67961"),
  (4065,"Giselle","Heath","0800 763 1697"),
  (4066,"Noah","Brady","07340 723322"),
  (4067,"Lillith","Colon","070 8196 4333"),
  (4068,"Cailin","Rodriquez","(016977) 2894"),
  (4069,"Wylie","Waller","(027) 1360 1274"),
  (4070,"Chester","Britt","0800 564 9354");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4071,"Ronan","Gaines","(01888) 856247"),
  (4072,"Kiara","Emerson","0800 712 1929"),
  (4073,"Dane","O'donnell","055 7661 9466"),
  (4074,"Quamar","Golden","(01767) 241915"),
  (4075,"Brielle","Spears","056 2309 8772"),
  (4076,"May","Rosa","076 8874 8237"),
  (4077,"Dale","Ross","(01624) 583258"),
  (4078,"Alec","Moran","0845 46 42"),
  (4079,"Samson","Gilbert","0929 172 0882"),
  (4080,"Zachary","Greene","056 0705 3408");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4081,"Camille","Fuller","0800 1111"),
  (4082,"Cole","Henry","07214 699539"),
  (4083,"Althea","Barr","0800 1111"),
  (4084,"Kato","Boyer","07442 653951"),
  (4085,"Justin","Gilliam","(0141) 749 4833"),
  (4086,"Karina","Ellis","0845 46 45"),
  (4087,"Hilel","Bernard","056 5189 5126"),
  (4088,"Lester","Mccarthy","0972 446 7367"),
  (4089,"Eaton","Morin","0845 46 47"),
  (4090,"Amos","Horne","0964 381 1675");
INSERT INTO `myTable` (`contact_id`,`contact_fname`,`contact_lname`,`contact_phone_no`)
VALUES
  (4091,"Fiona","Shepard","0800 232 7315"),
  (4092,"Aidan","Gonzales","0800 198730"),
  (4093,"Nathaniel","Whitley","(012617) 89153"),
  (4094,"Cole","Acosta","0841 205 1881"),
  (4095,"Wesley","Mccarty","(026) 8551 7348"),
  (4096,"Laura","Molina","0845 46 41"),
  (4097,"Nola","Mcclain","0800 333352"),
  (4098,"Peter","Terry","056 7707 6330"),
  (4099,"Boris","Bradford","07835 053431");
