DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `contact_id` mediumint default NULL,
  `contact_fname` varchar(255) default NULL,
  `contact_lname` varchar(255) default NULL,
  `contact_phone_no` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (420,'Eve','Baird','0800 1111'),
  (447,'Nita','Lyons','055 6078 5677'),
  (489,'Rashad','Mcmahon','055 2238 4405'),
  (492,'Raven','Patel','(016958) 17532'),
  (429,'Reagan','Rosario','(016977) 4160'),
  (463,'Angela','Hinton','07624 492245'),
  (497,'Michelle','Nixon','07624 185177'),
  (495,'Emily','Pitts','0886 676 4252'),
  (402,'Kasper','Carter','0800 270758'),
  (435,'Lacota','Mcclure','0500 638360');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (479,'Gage','Stewart','070 2362 1527'),
  (462,'Deirdre','Le','0842 721 2216'),
  (427,'Yoko','Taylor','(0161) 610 4347'),
  (442,'Faith','Flowers','(01164) 91745'),
  (456,'Jelani','Deleon','07624 063659'),
  (428,'Maite','Wheeler','055 6423 7288'),
  (435,'William','Gould','(0121) 230 6846'),
  (414,'Evan','Saunders','0800 1111'),
  (419,'Liberty','Robles','(016977) 0232'),
  (431,'Kirestin','Phillips','0800 789 5825');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (425,'Samson','White','07624 330088'),
  (460,'Mark','Flowers','07624 778910'),
  (498,'Mariko','Morrow','07624 644761'),
  (482,'Ina','William','(0117) 156 3872'),
  (466,'Macon','Terrell','0925 160 8931'),
  (422,'Lael','Williams','(016977) 4728'),
  (424,'Cassady','Poole','(0113) 334 0171'),
  (455,'Zachery','Holloway','0955 939 8645'),
  (428,'Christen','Turner','0500 674397'),
  (475,'Karyn','Mason','(022) 6054 5378');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (449,'Wallace','Bird','(01281) 96189'),
  (447,'Aileen','Slater','(01140) 122376'),
  (495,'Drake','Bolton','0331 778 6103'),
  (478,'Ocean','Foster','(023) 2684 1081'),
  (405,'Bevis','Osborne','055 4458 3272'),
  (463,'Felix','Meadows','0800 1111'),
  (492,'Upton','Bennett','076 4578 5976'),
  (431,'Yen','Vaughan','(016977) 0523'),
  (481,'Silas','Ramsey','076 4655 1846'),
  (447,'Brenda','Moody','0881 655 5461');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (468,'Gretchen','Forbes','(020) 7297 6314'),
  (437,'Yasir','Hodge','0800 493563'),
  (451,'Fitzgerald','Roberts','0800 840541'),
  (492,'Miranda','Kirk','(01411) 202414'),
  (421,'Kirestin','Vance','055 8061 5468'),
  (401,'Priscilla','Lindsey','0962 336 6261'),
  (446,'Levi','Cain','(01835) 60141'),
  (402,'Aurelia','Sweeney','056 6835 9764'),
  (432,'Walker','Cross','(01652) 338212'),
  (428,'Guy','Perkins','056 8495 2411');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (470,'Macy','Greer','0861 708 7455'),
  (433,'Jonah','Barron','0856 259 4895'),
  (419,'Burton','Fleming','0878 456 7801'),
  (436,'Garrison','Schneider','0500 718885'),
  (415,'Paula','Summers','056 6436 6286'),
  (452,'Cadman','Shaw','07184 937251'),
  (428,'Chandler','Brady','07021 886224'),
  (428,'Risa','Jackson','0800 848917'),
  (468,'Shelley','Wolfe','07037 072322'),
  (466,'Sasha','Ashley','055 8460 6988');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (435,'Indigo','Edwards','0333 888 0678'),
  (474,'Abigail','Guy','(0118) 645 8516'),
  (429,'Karen','Ray','0912 080 2364'),
  (405,'Sarah','Steele','0800 1111'),
  (449,'Tashya','Trevino','0323 641 3645'),
  (407,'Mara','Hobbs','(011834) 64364'),
  (452,'Sawyer','Owen','07624 483644'),
  (470,'Nissim','Blevins','(016977) 3662'),
  (413,'Ulla','Maynard','(013238) 95346'),
  (474,'Chaim','Stein','0845 46 42');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (405,'Ivan','Cooke','07652 814118'),
  (406,'Willow','Mcbride','0919 738 2553'),
  (419,'Peter','Hansen','07624 636855'),
  (404,'Adele','Hampton','(016074) 34848'),
  (445,'Elliott','Sweeney','(028) 5089 1322'),
  (428,'Quinn','Berry','0500 123714'),
  (485,'Derek','Harper','0800 1111'),
  (431,'Ethan','Richardson','0835 140 2108'),
  (461,'George','Ortega','0847 970 5563'),
  (467,'Emi','Gomez','055 2822 4517');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (475,'Rajah','Bates','056 6458 5275'),
  (470,'Molly','Alston','0800 1111'),
  (441,'Silas','Black','(0151) 205 3877'),
  (469,'Jarrod','Hester','055 3144 1232'),
  (448,'Prescott','Vincent','0800 575 7337'),
  (454,'Buffy','Hahn','0800 093 9156'),
  (423,'Neil','Flynn','07624 093272'),
  (489,'Dennis','Fields','07624 936320'),
  (414,'Catherine','Warner','0800 722 3358'),
  (473,'Neville','Emerson','0500 309836');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (412,'Hamish','Beard','(01637) 45900'),
  (427,'Jamal','Elliott','076 4328 1554'),
  (469,'Vernon','Cote','0800 679 0068'),
  (460,'Steven','Sparks','0800 1111'),
  (420,'Hammett','Hampton','(027) 4420 6798'),
  (457,'Wylie','Green','0800 542 7265'),
  (466,'Blake','Lloyd','07430 264176'),
  (475,'Clark','Townsend','0800 769110'),
  (401,'Brielle','Rollins','070 1352 9917');
