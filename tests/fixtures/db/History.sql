DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(200) NOT NULL,
  `template_id` tinyint(4) NOT NULL,
  `dt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tpl_assign` (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=756 DEFAULT CHARSET=utf8;

--
-- Data for Table `keys`
--

/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
INSERT INTO `keys` (`id`,`key`,`template_id`,`dt`) VALUES ('1','L_TEST','1','2012-03-03 20:39:02');

DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint(5) unsigned NOT NULL,
  `dt` datetime NOT NULL,
  `key_id` smallint(5) unsigned NOT NULL,
  `action` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `lang_id` smallint(5) unsigned NOT NULL,
  `oldValue` text NOT NULL,
  `newValue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Data for Table `history`
--

/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('4','2','2012-03-03 16:33:30','0','logged in','0','-','-');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('5','2','2012-03-03 16:33:45','0','logged out','0','-','-');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('6','1','2012-03-03 16:33:49','0','logged in','0','-','-');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('7','1','2012-03-03 16:34:37','0','logged out','0','-','-');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('12','1','2012-03-03 16:46:05','0','logged in','0','-','-');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('13','1','2012-03-03 20:39:02','1','created','0','-','-');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('14','1','2012-03-03 20:39:16','1','changed','1','-','Test eintrag');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('15','1','2012-03-03 20:39:16','1','changed','2','-','Test records');
INSERT INTO `history` (`id`,`user_id`,`dt`,`key_id`,`action`,`lang_id`,`oldValue`,`newValue`) VALUES ('16','1','2012-03-04 12:17:16','0','logged in','0','-','-');
/*!40000 ALTER TABLE `history` ENABLE KEYS */;

--
-- Create Table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `lang_id` smallint(5) unsigned NOT NULL,
  `key_id` smallint(5) unsigned NOT NULL,
  `text` longtext NOT NULL,
  `dt` datetime NOT NULL,
  PRIMARY KEY (`lang_id`,`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Data for Table `translations`
--

/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` (`lang_id`,`key_id`,`text`,`dt`) VALUES ('1','1','Test eintrag','2012-03-03 20:39:16');
INSERT INTO `translations` (`lang_id`,`key_id`,`text`,`dt`) VALUES ('2','1','Test records','2012-03-03 20:40:02');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
