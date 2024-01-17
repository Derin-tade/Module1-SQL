DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `visit_id` mediumint,
  `v_date_of_visit` varchar(255),
  `v_time_of_visit` varchar(255),
  `v_min_duration_visit` mediumint default NULL,
  `place_id` varchar(255) default NULL,
  `p_id` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`visit_id`,`v_date_of_visit`,`v_time_of_visit`,`v_min_duration_visit`,`place_id`,`p_id`)
VALUES
  (100,"27/09/2019","14:06",298,"PPca42","PID013"),
  (101,"23/08/2020","16:02",123,"PPjv88","PID005"),
  (102,"07/12/2019","20:36",193,"PPyx27","PID020"),
  (103,"18/05/2019","7:14",36,"PPhh11","PID013"),
  (104,"30/09/2020","13:56",48,"PPrm01","PID020"),
  (105,"04/04/2019","9:42",202,"PPuj44","PID014"),
  (106,"17/03/2019","10:45",390,"PPur14","PID015"),
  (107,"25/10/2020","11:06",120,"PPrj68","PID015"),
  (108,"30/12/2019","0:02",229,"PPdn98","PID007"),
  (109,"14/11/2020","5:08",53,"PPhh11","PID001");
INSERT INTO `myTable` (`visit_id`,`v_date_of_visit`,`v_time_of_visit`,`v_min_duration_visit`,`place_id`,`p_id`)
VALUES
  (110,"02/04/2019","20:43",345,"PPjw18","PID002"),
  (111,"06/10/2020","14:37",241,"PPuj44","PID018"),
  (112,"11/08/2020","7:41",25,"PPyj43","PID010"),
  (113,"20/12/2019","16:27",82,"PPrm01","PID007"),
  (114,"14/02/2019","20:44",390,"PPhh11","PID001"),
  (115,"18/03/2020","13:48",217,"PPvb74","PID003"),
  (116,"28/10/2020","12:32",87,"PPdn98","PID006"),
  (117,"01/10/2019","19:14",322,"PPuj44","PID007"),
  (118,"19/03/2020","18:44",373,"PPiv21","PID006"),
  (119,"08/06/2020","9:37",236,"PPem82","PID011");
INSERT INTO `myTable` (`visit_id`,`v_date_of_visit`,`v_time_of_visit`,`v_min_duration_visit`,`place_id`,`p_id`)
VALUES
  (120,"26/04/2019","19:07",27,"PPem82","PID019"),
  (121,"13/10/2019","4:33",151,"PPyj43","PID020"),
  (122,"20/01/2019","12:51",362,"PPdn98","PID011"),
  (123,"06/12/2020","19:45",120,"PPdn98","PID007"),
  (124,"04/08/2019","3:11",325,"PPnl13","PID007"),
  (125,"09/10/2020","17:20",34,"PPur14","PID010"),
  (126,"30/01/2019","8:20",164,"PPur14","PID018"),
  (127,"06/05/2019","18:24",286,"PPuj44","PID017"),
  (128,"31/07/2019","11:49",276,"PPry64","PID018"),
  (129,"25/06/2020","22:03",77,"PPuv05","PID011");
INSERT INTO `myTable` (`visit_id`,`v_date_of_visit`,`v_time_of_visit`,`v_min_duration_visit`,`place_id`,`p_id`)
VALUES
  (130,"25/12/2019","9:20",376,"PPjw18","PID004"),
  (131,"01/06/2020","23:16",362,"PPnl13","PID013"),
  (132,"07/04/2019","14:55",319,"PPjw18","PID014"),
  (133,"04/06/2020","4:10",299,"PPuv05","PID018"),
  (134,"28/02/2019","14:52",52,"PPnl13","PID008"),
  (135,"28/11/2019","20:30",69,"PPge67","PID012"),
  (136,"26/02/2020","7:58",204,"PPvb74","PID001"),
  (137,"21/11/2019","8:14",276,"PPrj68","PID018"),
  (138,"03/06/2020","13:39",368,"PPjw18","PID010"),
  (139,"24/03/2019","15:34",9,"PPca42","PID017");
INSERT INTO `myTable` (`visit_id`,`v_date_of_visit`,`v_time_of_visit`,`v_min_duration_visit`,`place_id`,`p_id`)
VALUES
  (140,"03/10/2019","9:35",185,"PPdn98","PID002"),
  (141,"09/04/2019","22:10",209,"PPdn98","PID011"),
  (142,"16/02/2019","17:47",300,"PPur14","PID009");
