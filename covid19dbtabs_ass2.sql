DROP TABLE IF EXISTS covid_tests;
DROP TABLE IF EXISTS visits_contact;
DROP TABLE IF EXISTS contact;
DROP TABLE IF EXISTS visits;
DROP TABLE IF EXISTS place;
DROP TABLE IF EXISTS test_centre;
DROP TABLE IF EXISTS participant;


CREATE TABLE participant (
  p_id VARCHAR(10) PRIMARY KEY,
  p_fname VARCHAR(50) NOT NULL,
  p_lname VARCHAR(50) NOT NULL,
  p_phone_no VARCHAR(20) NOT NULL,
  p_DOB DATE,
  p_address_line VARCHAR(100),
  p_city_name VARCHAR(50),
  p_county VARCHAR(50),
  p_postal_code VARCHAR(20) NOT NULL,
  p_country VARCHAR(50) NOT NULL
);

CREATE TABLE test_centre (
  tc_centre_id SERIAL PRIMARY KEY,
  tc_centre_name VARCHAR(100) NOT NULL,
  tc_address_line VARCHAR(100),
  tc_city_name VARCHAR(50),
  tc_postal_code VARCHAR(20),
  tc_county VARCHAR(50),
  tc_country VARCHAR(50) NOT NULL
);

CREATE TABLE place (
  place_id VARCHAR PRIMARY KEY,
  place_name VARCHAR(100) NOT NULL,
  place_location_type VARCHAR(50),
  place_address_line VARCHAR(100),
  place_city_name VARCHAR(50),
  place_county VARCHAR(50),
  place_postal_code VARCHAR(20),
  place_country VARCHAR(50) NOT NULL
);

CREATE TABLE visits (
  visit_id SERIAL PRIMARY KEY,
  v_date_of_visit DATE,
  v_time_of_visit TIME,
  v_min_duration_visit INTEGER, 
  place_id VARCHAR(10), 
	CONSTRAINT fk_place_visits FOREIGN KEY (place_id)
	REFERENCES place (place_id),
  p_id VARCHAR(10), 
	CONSTRAINT fk_participant_visits FOREIGN KEY (p_id)
	REFERENCES participant (p_id)
);

CREATE TABLE contact (
  contact_id SERIAL PRIMARY KEY,
  contact_fname VARCHAR(50) NOT NULL,
  contact_lname VARCHAR(50) NOT NULL,
  contact_phone_no VARCHAR(20) NOT NULL
);

CREATE TABLE visits_contact (
  contact_id SERIAL,
  visit_id SERIAL,
  PRIMARY KEY (contact_id, visit_id),
  FOREIGN KEY (contact_id) REFERENCES contact (contact_id),
  FOREIGN KEY (visit_id) REFERENCES visits (visit_id),
  CONSTRAINT fk_unique_contact_visit UNIQUE (contact_id, visit_id) -- Ensuring uniqueness of pairs
);


CREATE TABLE covid_tests (
  t_test_id SERIAL PRIMARY KEY,
  t_test_status VARCHAR(50) NOT NULL,
  t_variant VARCHAR(50),
  t_test_date DATE,
  p_id VARCHAR(10),
  CONSTRAINT fk_participant_covtest FOREIGN KEY (p_id)
  REFERENCES participant (p_id),
  tc_centre_id INTEGER, 
  CONSTRAINT fk_centre_covtest FOREIGN KEY (tc_centre_id)
  REFERENCES test_centre (tc_centre_id)
);



INSERT INTO participant (p_id, p_fname, p_lname, p_phone_no, p_DOB, p_address_line, p_city_name, p_county, p_postal_code, p_country)
VALUES
  ('PID001', 'Robin', 'Battle', '(0111) 775 5180', '1979-11-11', 'P.O. Box 340, 6521 Lectus, Av.', 'Hertford', 'Hertfordshire', 'NL49 2KS', 'England'),
  ('PID002', 'Stuart', 'Lamb', '0875 274 5277', '1946-08-08', 'Ap #209-6508 Sapien, Rd.', 'Holyhead', 'Anglesey', 'VI8 1XN', 'Wales'),
  ('PID003', 'Barclay', 'Langley', '0839 232 5323', '2013-04-11', 'P.O. Box 351, 8682 A, Road', 'Pitlochry', 'Perthshire', 'E7K 7BZ', 'Scotland'),
  ('PID004', 'Fay', 'Hood', '0323 784 5886', '2003-12-18', '759-4920 Pede. Ave', 'Lincoln', 'Lincolnshire', 'B18 0EI', 'Northern Ireland'),
  ('PID005', 'Portia', 'Gomez', '0999 498 4886', '2000-07-12', 'P.O. Box 449, 5680 In Av.', 'Flint', 'Flintshire', 'N3J 6DM', 'Wales'),
  ('PID006', 'Leonard', 'Webb', '(012561) 53851', '2020-05-25', '3885 Lacus. Av.', 'Rothesay', 'Buteshire', 'K87 4XL', 'Scotland'),
  ('PID007', 'Lionel', 'Michael', '(0191) 479 6858', '1999-12-20', '957-8417 Metus. St.', 'Birmingham', 'Warwickshire', 'N4 2OS', 'England'),
  ('PID008', 'Josiah', 'Solomon', '(0181) 126 7732', '1964-01-02', 'Ap #800-2707 Pede. Rd.', 'Skegness', 'Lincolnshire', 'LT3 2YE', 'Northern Ireland'),
  ('PID009', 'Sylvester', 'ONeill', '07624 074753', '1967-07-20', '7172 Quam. Av.', 'Kingston-on-Thames', 'Surrey', 'PK3M 1FE', 'England'),
  ('PID010', 'Eleanor', 'Gordon', '(016977) 7285', '1980-05-13', '225-6974 Dolor. Rd.', 'Bloxham', 'Oxfordshire', 'V5D 7TK', 'Northern Ireland'),
  ('PID011', 'Dane', 'Nieves', '0800 744516', '1952-12-18', 'Ap #580-6675 Aliquet. Street', 'Keswick', 'Cumberland', 'KB7 5TF', 'England'),
  ('PID012', 'Thane', 'Petty', '(0113) 038 4061', '1987-07-18', 'Ap #216-7276 Tempor Av.', 'Eyemouth', 'Berwickshire', 'MK3 6NI', 'Scotland'),
  ('PID013', 'Rinah', 'Cote', '0357 162 1812', '1955-07-24', 'Ap #481-5343 Metus. Rd.', 'Cirencester', 'Gloucestershire', 'TR8 5NH', 'England'),
  ('PID014', 'Tobias', 'Lindsey', '0861 541 0352', '1988-01-03', 'P.O. Box 262, 3038 Nisi Street', 'Wrexham', 'Denbighshire', 'XU3 4SY', 'Wales'),
  ('PID015', 'Gabriel', 'Dorsey', '0918 542 0275', '2000-09-05', 'Ap #531-5364 Orci. Ave', 'Scalloway', 'Shetland', 'OE7K 8EV', 'Northern Ireland'),
  ('PID016', 'Buckminster', 'Price', '070 3364 3877', '1936-12-08', '6403 Duis Rd.', 'Birkenhead', 'Cheshire', 'N05 4GX', 'Wales'),
  ('PID017', 'Austin', 'Petersen', '(0116) 532 7182', '2017-05-10', '503 Arcu. St.', 'Warrington', 'Lancashire', 'JJ6 3MO', 'Northern Ireland'),
  ('PID018', 'Samuel', 'Conley', '0800 871026', '1983-06-01', '736-2312 Lectus Avenue', 'Llandrindod Wells', 'Radnorshire', 'C2 8TA', 'Wales'),
  ('PID019', 'Patience', 'Walton', '(01345) 32744', '1960-03-30', '7616 Egestas Av.', 'Kircudbright', 'Kirkcudbrightshire', 'O3S 4QK', 'Scotland'),
  ('PID020', 'Gray', 'Rivas', '055 1933 5824', '2008-04-02', 'Ap #433-5352 Eget Avenue', 'Wigtown', 'Wigtownshire', 'QS26 2QG', 'Scotland');


INSERT INTO test_centre (tc_centre_id,tc_centre_name,tc_address_line,tc_city_name,tc_postal_code,tc_county,tc_country)
VALUES
  (1,'Themyscira','Ap #650-3607 Nulla. Av.','Wrexham','Q2 5KC','Denbighshire','Wales'),
  (2,'Daily Planet','885-4679 Praesent Road','Greenock','XR9 6VY','Renfrewshire','England'),
  (3,'Hall of Justice','P.O. Box 197, 9532 Consequat Ave','Solihull','WC86 4TF','Warwickshire','Scotland'),
  (4,'Batcave','1100 Est St.','Biggleswade','YZ62 9ZD','Bedfordshire','Scotland'),
  (5,'Arrowcave','Ap #832-1168 Nulla St.','Uppingham. Cottesmore','N6 2PS','Rutland','Nothern Ireland'),
  (6,'Star Labs','P.O. Box 817, 4048 In Street','Alnwick','DF4 1SW','Northumberland','Scotland'),
  (7,'Arkham Assylum','7133 Elementum, St.','Hereford','QG1R 7VV','Herefordshire','Wales'),
  (8,'Watch Tower','P.O. Box 805, 6600 Hendrerit. St.','Alloa','QR4 5OV','Clackmannanshire','Nothern Ireland'),
  (9,'Fortress of Solitude','5246 Dapibus Ave','Tewkesbury','GH4C 2ND','Gloucestershire','Scotland'),
  (10,'Teens Tower','P.O. Box 996, 3352 Dictum Av.','Chepstow','KT6J 8RP','Monmouthshire','Wales');
  

INSERT INTO place (place_id,place_name,place_location_type,place_address_line,place_city_name,place_postal_code,place_county,place_country)
VALUES
  ('PPyj43','Eyespot Range','outdoor','917-9374 Conubia St.','Dover','IG6T 4DT','Kent','Nothern Ireland'),
  ('PPni32','Vicks Hall','events_gathering','P.O. Box 738, 7102 Leo. St.','Kidderminster','R5I 4HX','Worcestershire','Nothern Ireland'),
  ('PPrj68','JJ Dhoul Conference Hall','events_gathering','703-2426 Tortor. Road','Knighton','N48 5UD','Radnorshire','England'),
  ('PPge67','Lighthouse Museum','cultural','P.O. Box 666, 2003 Tellus Ave','Buckley','RB2 0SL','Flintshire','Nothern Ireland'),
  ('PPry64','Good Gym','health_wellness','P.O. Box 131, 4579 Luctus Street','Dornoch','X1Q 7IC','Sutherland','Scotland'),
  ('PPjv88','Palace and Chiefs','cultural','491-8126 Felis St.','Kirkcaldy','B84 7LL','Fife','Wales'),
  ('PPiv21','Goode Resident','anothers_home','605-7364 Enim Rd.','Broxburn','V52 5EN','West Lothian','Nothern Ireland'),
  ('PPem82','iMax Cinema','entertainment','247-5761 Nec Av.','Warminster','OO62 2CU','Wiltshire','Wales'),
  ('PPwg48','Rotary Hospital','health_wellness','Ap #546-626 Ut, Street','Beaumaris','G2I 4KU','Anglesey','England'),
  ('PPur14','the neighbours','anothers_home','P.O. Box 769, 5967 Consectetuer Ave','Oban','F3P 2WY','Argyllshire','Scotland'),
  ('PPuv05','Ladies bar','events_gathering','746-4370 Erat Ave','Chester','V2 8PC','Cheshire','England'),
  ('PPhh11','KFC','dining','Ap #546-8536 Semper. Avenue','Lampeter','VK14 6UL','Cardiganshire','Scotland'),
  ('PPca42','Nike Store','shopping','Ap #146-1996 Sed St.','Leighton Buzzard','TN37 7RV','Bedfordshire','Nothern Ireland'),
  ('PPuj44','Public Primary School','education','136-6457 Dui, Rd.','Abergele','X89 2DF','Denbighshire','Nothern Ireland'),
  ('PPdn98','University of Derby','education','497-1504 Dis St.','Dunoon','Q09 9UY','Argyllshire','Wales'),
  ('PPnl13','Microsoft','office','P.O. Box 984, 3700 Blandit St.','St. Ives','YI7W 8DM','Huntingdonshire','Nothern Ireland'),
  ('PPrm01','Google','office','P.O. Box 596, 5995 Vestibulum, Road','Llanidloes','S72 6WU','Montgomeryshire','Wales'),
  ('PPvb74','Datamart','shopping','P.O. Box 608, 8406 Magnis Road','Livingston','F4 9VW','West Lothian','England'),
  ('PPyx27','Cavemens Arcade','outdoor','220-6322 Tristique Rd.','Coalville','I7 1SD','Leicestershire','Nothern Ireland'),
  ('PPjw18','Ladies Lair','entertainment','P.O. Box 110, 2750 Lorem, St.','Fochabers','FF6 8KB','Morayshire','Nothern Ireland');

INSERT INTO visits (visit_id,v_date_of_visit,v_time_of_visit,v_min_duration_visit,place_id,p_id)
VALUES
  (100,'2019-09-27','14:06',298,'PPca42','PID013'),
  (101, '2020-08-23', '16:02', 123, 'PPjv88', 'PID005'),
  (102, '2019-12-07', '20:36', 193, 'PPyx27', 'PID020'),
  (103, '2019-05-18', '07:14', 36, 'PPhh11', 'PID013'),
  (104, '2020-09-30', '13:56', 48, 'PPrm01', 'PID020'),
  (105, '2019-04-04', '09:42', 202, 'PPuj44', 'PID014'),
  (106, '2019-03-17', '10:45', 390, 'PPur14', 'PID015'),
  (107, '2020-10-25', '11:06', 120, 'PPrj68', 'PID015'),
  (108, '2019-12-30', '00:02', 229, 'PPdn98', 'PID007'),
  (109, '2020-11-14', '05:08', 53, 'PPhh11', 'PID001');
INSERT INTO visits (visit_id,v_date_of_visit,v_time_of_visit,v_min_duration_visit,place_id,p_id)
VALUES
  (110, '2019-04-02', '20:43', 345, 'PPjw18', 'PID002'),
  (111, '2020-10-06', '14:37', 241, 'PPuj44', 'PID018'),
  (112, '2020-08-11', '07:41', 25, 'PPyj43', 'PID010'),
  (113, '2019-12-20', '16:27', 82, 'PPrm01', 'PID007'),
  (114, '2019-02-14', '20:44', 390, 'PPhh11', 'PID001'),
  (115, '2020-03-18', '13:48', 217, 'PPvb74', 'PID003'),
  (116, '2020-10-28', '12:32', 87, 'PPdn98', 'PID006'),
  (117, '2019-10-01', '19:14', 322, 'PPuj44', 'PID007'),
  (118, '2020-03-19', '18:44', 373, 'PPiv21', 'PID006'),
  (119, '2020-06-08', '09:37', 236, 'PPem82', 'PID011');
INSERT INTO visits (visit_id, v_date_of_visit, v_time_of_visit, v_min_duration_visit, place_id, p_id)
VALUES
  (120, '2019-04-26', '19:07', 27, 'PPem82', 'PID019'),
  (121, '2019-10-13', '04:33', 151, 'PPyj43', 'PID020'),
  (122, '2019-01-20', '12:51', 362, 'PPdn98', 'PID011'),
  (123, '2020-12-06', '19:45', 120, 'PPdn98', 'PID007'),
  (124, '2019-08-04', '03:11', 325, 'PPnl13', 'PID007'),
  (125, '2020-10-09', '17:20', 34, 'PPur14', 'PID010'),
  (126, '2019-01-30', '08:20', 164, 'PPur14', 'PID018'),
  (127, '2019-05-06', '18:24', 286, 'PPuj44', 'PID017'),
  (128, '2019-07-31', '11:49', 276, 'PPry64', 'PID018'),
  (129, '2020-06-25', '22:03', 77, 'PPuv05', 'PID011');

INSERT INTO visits (visit_id, v_date_of_visit, v_time_of_visit, v_min_duration_visit, place_id, p_id)
VALUES
  (130, '2019-12-25', '9:20', 376, 'PPjw18', 'PID004'),
  (131, '2020-06-01', '23:16', 362, 'PPnl13', 'PID013'),
  (132, '2019-04-07', '14:55', 319, 'PPjw18', 'PID014'),
  (133, '2020-06-04', '4:10', 299, 'PPuv05', 'PID018'),
  (134, '2019-02-28', '14:52', 52, 'PPnl13', 'PID008'),
  (135, '2019-11-28', '20:30', 69, 'PPge67', 'PID012'),
  (136, '2020-02-26', '7:58', 204, 'PPvb74', 'PID001'),
  (137, '2019-11-21', '8:14', 276, 'PPrj68', 'PID018'),
  (138, '2020-06-03', '13:39', 368, 'PPjw18', 'PID010'),
  (139, '2019-03-24', '15:34', 9, 'PPca42', 'PID017');

INSERT INTO visits (visit_id, v_date_of_visit, v_time_of_visit, v_min_duration_visit, place_id, p_id)
VALUES
  (140, '2019-03-10', '9:35', 185, 'PPdn98', 'PID002'),
  (141, '2019-04-09', '22:10', 209, 'PPdn98', 'PID011'),
  (142, '2019-02-16', '17:47', 300, 'PPur14', 'PID009');



--contact table

INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4001,'Scott','Hammond','(016977) 6492'),
  (4002,'Bo','Bradford','055 8687 6963'),
  (4003,'Bevis','Bernard','0386 786 9814'),
  (4004,'Kyla','Avery','07624 501274'),
  (4005,'Rhiannon','Silva','0845 46 46'),
  (4006,'Aquila','Bird','(01853) 89489'),
  (4007,'Avye','Mitchell','07361 323606'),
  (4008,'Demetria','Miranda','0500 444547'),
  (4009,'Zena','Kim','076 3944 7217'),
  (4010,'Stacey','Duncan','0800 647432');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4011,'Seth','Hampton','0800 343437'),
  (4012,'Burke','Myers','(01708) 658649'),
  (4013,'Tobias','Mckay','0916 274 1970'),
  (4014,'Ivory','Carson','(021) 0974 8027'),
  (4015,'Tasha','Parks','(027) 6681 1599'),
  (4016,'Dane','Dalton','0312 529 2326'),
  (4017,'Bree','Guerrero','(01442) 971645'),
  (4018,'Savannah','Moreno','056 9619 7277'),
  (4019,'Adara','Harper','070 8317 1687'),
  (4020,'Ifeoma','Patton','(01881) 56373');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4021,'Phoebe','Weber','0322 062 2388'),
  (4022,'Ferris','Sandoval','0800 1111'),
  (4023,'Zachery','Edwards','0800 397726'),
  (4024,'Drake','Ellis','0879 136 3789'),
  (4025,'Chelsea','Vincent','(024) 2552 5149'),
  (4026,'Todd','Manning','(014485) 53671'),
  (4027,'Branden','Keller','070 3612 7053'),
  (4028,'Zephr','Bryan','0977 695 1327'),
  (4029,'Clark','Greer','0915 794 2377'),
  (4030,'Aimee','Buck','0800 1111');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4031,'Roth','Norton','055 1388 8465'),
  (4032,'Laith','Collins','(01588) 006174'),
  (4033,'Ava','Higgins','(01153) 47177'),
  (4034,'Kelsey','Horne','0383 430 8316'),
  (4035,'Derek','Lopez','076 5963 7653'),
  (4036,'Samson','Mcfarland','070 5255 5292'),
  (4037,'Nehru','Kim','0845 46 47'),
  (4038,'Ian','Harmon','(0116) 178 6515'),
  (4039,'Petra','Gonzalez','(018931) 34571'),
  (4040,'Alyssa','Leach','076 5384 1472');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4041,'Phillip','Maddox','0800 273 8784'),
  (4042,'Martha','Hunt','0800 1111'),
  (4043,'Leila','Rollins','0980 928 3151'),
  (4044,'Robert','Porter','(0112) 554 0821'),
  (4045,'Montana','Schultz','0307 817 8077'),
  (4046,'Dieter','Lucas','0361 496 8712'),
  (4047,'Baxter','Diaz','055 1949 1885'),
  (4048,'Erasmus','Gould','055 9746 5862'),
  (4049,'Camille','Christensen','(01733) 26146'),
  (4050,'Clinton','Cabrera','(01151) 68178');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4051,'Uta','Stone','07662 242895'),
  (4052,'Kasper','Knight','(01146) 30308'),
  (4053,'Jacqueline','Guy','0800 173 7914'),
  (4054,'Melyssa','Calhoun','(0131) 469 9076'),
  (4055,'Joy','Mcneil','(022) 3352 3426'),
  (4056,'Sopoline','Hampton','055 2383 0858'),
  (4057,'Lara','Parrish','(0181) 788 1413'),
  (4058,'Echo','Herring','055 6702 5161'),
  (4059,'Christian','Stephens','055 4284 1822'),
  (4060,'Savannah','Kinney','07514 354521');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4061,'Jackson','Eaton','0951 335 2356'),
  (4062,'Kasimir','Strickland','(01164) 381797'),
  (4063,'Matthew','Noel','0500 445960'),
  (4064,'Bert','Tate','(014378) 67961'),
  (4065,'Giselle','Heath','0800 763 1697'),
  (4066,'Noah','Brady','07340 723322'),
  (4067,'Lillith','Colon','070 8196 4333'),
  (4068,'Cailin','Rodriquez','(016977) 2894'),
  (4069,'Wylie','Waller','(027) 1360 1274'),
  (4070,'Chester','Britt','0800 564 9354');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4071,'Ronan','Gaines','(01888) 856247'),
  (4072,'Kiara','Emerson','0800 712 1929'),
  (4073,'Dane','Odonnell','055 7661 9466'),
  (4074,'Quamar','Golden','(01767) 241915'),
  (4075,'Brielle','Spears','056 2309 8772'),
  (4076,'May','Rosa','076 8874 8237'),
  (4077,'Dale','Ross','(01624) 583258'),
  (4078,'Alec','Moran','0845 46 42'),
  (4079,'Samson','Gilbert','0929 172 0882'),
  (4080,'Zachary','Greene','056 0705 3408');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4081,'Camille','Fuller','0800 1111'),
  (4082,'Cole','Henry','07214 699539'),
  (4083,'Althea','Barr','0800 1111'),
  (4084,'Kato','Boyer','07442 653951'),
  (4085,'Justin','Gilliam','(0141) 749 4833'),
  (4086,'Karina','Ellis','0845 46 45'),
  (4087,'Hilel','Bernard','056 5189 5126'),
  (4088,'Lester','Mccarthy','0972 446 7367'),
  (4089,'Eaton','Morin','0845 46 47'),
  (4090,'Amos','Horne','0964 381 1675');
INSERT INTO contact (contact_id,contact_fname,contact_lname,contact_phone_no)
VALUES
  (4091,'Fiona','Shepard','0800 232 7315'),
  (4092,'Aidan','Gonzales','0800 198730'),
  (4093,'Nathaniel','Whitley','(012617) 89153'),
  (4094,'Cole','Acosta','0841 205 1881'),
  (4095,'Wesley','Mccarty','(026) 8551 7348'),
  (4096,'Laura','Molina','0845 46 41'),
  (4097,'Nola','Mcclain','0800 333352'),
  (4098,'Peter','Terry','056 7707 6330'),
  (4099,'Boris','Bradford','07835 053431');



-- covid_tests
INSERT INTO covid_tests (t_test_id, t_test_status, t_variant, t_test_date, p_id, tc_centre_id)
VALUES
  (550001, 'Positive', 'Omicron', '2019-05-30', 'PID020', 2),
  (550002, 'Negative', 'NA', '2020-02-08', 'PID001', 2),
  (550003, 'Positive', 'Omicron', '2020-01-29', 'PID012', 4),
  (550004, 'Positive', 'Omicron', '2019-03-24', 'PID009', 6),
  (550005, 'Negative', 'NA', '2020-03-31', 'PID002', 2),
  (550006, 'Negative', 'NA', '2020-12-10', 'PID007', 5),
  (550007, 'Positive', 'Omicron', '2019-07-13', 'PID001', 6),
  (550008, 'Negative', 'NA', '2020-09-25', 'PID020', 4),
  (550009, 'Positive', 'Omicron', '2020-08-29', 'PID015', 7),
  (550010, 'Positive', 'Omicron', '2020-06-20', 'PID014', 7);

INSERT INTO covid_tests (t_test_id, t_test_status, t_variant, t_test_date, p_id, tc_centre_id)
VALUES
  (550011, 'Positive', 'Delta', '2019-10-01', 'PID019', 2),
  (550012, 'Positive', 'Omicron', '2020-03-02', 'PID016', 4),
  (550013, 'Negative', 'NA', '2019-03-20', 'PID019', 7),
  (550014, 'Positive', 'Delta', '2020-04-25', 'PID002', 5),
  (550015, 'Positive', 'Beta', '2019-04-14', 'PID017', 7),
  (550016, 'Positive', 'Omicron', '2020-06-22', 'PID003', 1),
  (550017, 'Negative', 'NA', '2020-03-25', 'PID002', 5),
  (550018, 'Negative', 'NA', '2020-05-04', 'PID009', 5),
  (550019, 'Positive', 'Omicron', '2020-05-13', 'PID003', 4),
  (550020, 'Positive', 'Delta', '2020-05-16', 'PID003', 7);

INSERT INTO covid_tests (t_test_id, t_test_status, t_variant, t_test_date, p_id, tc_centre_id)
VALUES
  (550021, 'Positive', 'Alpha', '2020-10-19', 'PID007', 2),
  (550022, 'Negative', 'NA', '2019-08-10', 'PID013', 3),
  (550023, 'Positive', 'Alpha', '2019-12-31', 'PID006', 1),
  (550024, 'Negative', 'NA', '2020-12-16', 'PID019', 3),
  (550025, 'Negative', 'NA', '2020-10-31', 'PID014', 2),
  (550026, 'Positive', 'Omicron', '2020-06-28', 'PID007', 4),
  (550027, 'Negative', 'NA', '2019-05-11', 'PID020', 2),
  (550028, 'Positive', 'Alpha', '2020-10-16', 'PID018', 4),
  (550029, 'Negative', 'NA', '2020-11-28', 'PID004', 7),
  (550030, 'Positive', 'Beta', '2019-08-11', 'PID010', 9);

INSERT INTO covid_tests (t_test_id, t_test_status, t_variant, t_test_date, p_id, tc_centre_id)
VALUES
  (550031, 'Negative', 'NA', '2020-08-10', 'PID018', 9);

  
 -- visits_contact
 INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4086,136),
  (4085,111),
  (4032,116),
  (4056,108),
  (4093,138),
  (4014,109),
  (4017,126),
  (4009,102),
  (4054,113),
  (4070,121);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4077,110),
  (4060,122),
  (4014,113),
  (4069,139),
  (4095,101),
  (4089,118),
  (4041,136),
  (4034,126),
  (4053,134),
  (4090,131);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4023,132),
  (4050,103),
  (4075,103),
  (4020,109),
  (4070,105),
  (4036,142),
  (4025,136),
  (4009,127),
  (4031,118),
  (4083,121);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4025,112),
  (4022,111),
  (4031,119),
  (4086,105),
  (4063,116),
  (4097,132),
  (4041,130),
  (4033,141),
  (4051,117),
  (4080,141);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4001,110),
  (4016,141),
  (4068,135),
  (4011,123),
  (4007,107),
  (4070,128),
  (4059,113),
  (4004,141),
  (4072,110),
  (4021,132);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4068,134),
  (4089,139),
  (4089,107),
  (4046,121),
  (4017,131),
  (4037,102),
  (4041,140),
  (4081,124),
  (4028,126),
  (4020,117);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4006,105),
  (4062,109),
  (4030,119),
  (4086,114),
  (4025,102),
  (4005,129),
  (4092,112),
  (4022,115),
  (4012,107),
  (4002,122);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4069,106),
  (4061,138),
  (4055,127),
  (4057,115),
  (4052,140),
  (4081,123),
  (4041,132),
  (4090,103),
  (4092,119),
  (4052,129);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4085,138),
  (4091,131),
  (4070,103),
  (4063,112),
  (4061,141),
  (4066,105),
  (4088,111),
  (4050,116),
  (4030,109),
  (4064,120);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4012,119),
  (4062,111),
  (4098,105),
  (4017,124),
  (4003,112),
  (4062,102),
  (4022,124),
  (4035,129),
  (4010,136),
  (4021,129);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4022,110),
  (4075,136),
  (4095,106),
  (4037,106),
  (4022,121),
  (4017,105),
  (4086,101),
  (4034,108),
  (4097,109),
  (4043,125);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4058,115),
  (4026,139),
  (4085,119),
  (4068,142),
  (4087,126),
  (4097,138),
  (4001,134),
  (4052,109),
  (4048,120),
  (4028,125);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4054,116),
  (4038,135),
  (4070,127),
  (4008,104),
  (4011,103),
  (4009,137),
  (4054,103),
  (4088,109),
  (4063,103),
  (4044,104);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4009,123),
  (4031,121),
  (4052,125),
  (4043,128),
  (4018,106),
  (4017,122),
  (4087,141),
  (4059,106),
  (4052,117),
  (4020,129);
INSERT INTO visits_contact (contact_id,visit_id)
VALUES
  (4038,120),
  (4020,131),
  (4007,113),
  (4063,133),
  (4063,136),
  (4063,128),
  (4063,108),
  (4044,121),
  (4010,138),
  (4013,125);


