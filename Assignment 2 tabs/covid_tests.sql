DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `t_test_id` mediumint,
  `t_test_status` varchar(255) default NULL,
  `t_variant` varchar(255) default NULL,
  `t_test_date` varchar(255),
  `p_id` varchar(255) default NULL,
  `tc_centre_id` mediumint default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`t_test_id`,`t_test_status`,`t_variant`,`t_test_date`,`p_id`,`tc_centre_id`)
VALUES
  (550001,"Positive","Omicron","30/05/2019","PID020",2),
  (550002,"Negative","Omicron","08/02/2020","PID001",2),
  (550003,"Positive","Omicron","29/01/2020","PID012",4),
  (550004,"Positive","Omicron","24/03/2019","PID009",6),
  (550005,"Negative","Alpha","31/03/2020","PID002",2),
  (550006,"Negative","Beta","10/12/2020","PID007",5),
  (550007,"Positive","Omicron","13/07/2019","PID001",6),
  (550008,"Negative","Omicron","25/09/2020","PID020",4),
  (550009,"Positive","Omicron","29/08/2020","PID015",7),
  (550010,"Positive","Omicron","20/06/2020","PID014",7);
INSERT INTO `myTable` (`t_test_id`,`t_test_status`,`t_variant`,`t_test_date`,`p_id`,`tc_centre_id`)
VALUES
  (550011,"Positive","Delta","01/10/2019","PID019",2),
  (550012,"Positive","Omicron","02/03/2020","PID016",4),
  (550013,"Negative","Omicron","20/03/2019","PID019",7),
  (550014,"Positive","Delta","25/04/2020","PID002",5),
  (550015,"Positive","Beta","14/04/2019","PID017",7),
  (550016,"Positive","Omicron","22/06/2020","PID003",1),
  (550017,"Negative","Delta","25/03/2020","PID002",5),
  (550018,"Negative","Alpha","04/05/2020","PID009",5),
  (550019,"Positive","Omicron","13/05/2020","PID003",4),
  (550020,"Positive","Delta","16/05/2020","PID003",7);
INSERT INTO `myTable` (`t_test_id`,`t_test_status`,`t_variant`,`t_test_date`,`p_id`,`tc_centre_id`)
VALUES
  (550021,"Positive","Alpha","19/10/2020","PID007",2),
  (550022,"Negative","Omicron","10/08/2019","PID013",3),
  (550023,"Positive","Alpha","31/12/2019","PID006",1),
  (550024,"Negative","Alpha","16/12/2020","PID019",3),
  (550025,"Negative","Alpha","31/10/2020","PID014",2),
  (550026,"Positive","Omicron","28/06/2020","PID007",4),
  (550027,"Negative","Omicron","11/05/2019","PID020",2),
  (550028,"Positive","Alpha","16/10/2020","PID018",4),
  (550029,"Negative","Beta","28/11/2020","PID004",7),
  (550030,"Positive","Beta","11/08/2019","PID010",9);
INSERT INTO `myTable` (`t_test_id`,`t_test_status`,`t_variant`,`t_test_date`,`p_id`,`tc_centre_id`)
VALUES
  (550031,"Negative","Omicron","10/08/2020","PID018",9);
