-- phpMyAdmin SQL Dump
-- version OVH
-- http://www.phpmyadmin.net

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
USE `euro`;

-- --------------------------------------------------------

--
-- Table structure for table `worldcup2010_matches`
--

DROP TABLE IF EXISTS `worldcup2010_matches`;
CREATE TABLE `worldcup2010_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `stadium` int(11) NOT NULL,
  `group` char(1) DEFAULT NULL,
  `team1.id` char(3) DEFAULT NULL,
  `team1.score` tinyint(3) unsigned DEFAULT NULL,
  `team2.id` char(3) DEFAULT NULL,
  `team2.score` tinyint(3) unsigned DEFAULT NULL,
  `phase` char(1) NOT NULL,
  `team1.source` char(3) DEFAULT NULL,
  `team2.source` char(3) DEFAULT NULL,
  `team1.scorePSO` tinyint(3) unsigned DEFAULT NULL,
  `team2.scorePSO` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worldcup2010_matches`
--

LOCK TABLES `worldcup2010_matches` WRITE;
/*!40000 ALTER TABLE `worldcup2010_matches` DISABLE KEYS */;
INSERT INTO `worldcup2010_matches` VALUES
(1,'2010-06-11 16:00:00',1,'A','RSA',1,'MEX',1,'G',NULL,NULL,NULL,NULL),
(2,'2010-06-11 20:30:00',6,'A','URU',0,'FRA',0,'G',NULL,NULL,NULL,NULL),
(3,'2010-06-12 16:00:00',2,'B','ARG',1,'NGA',0,'G',NULL,NULL,NULL,NULL),
(4,'2010-06-12 13:30:00',9,'B','KOR',2,'GRE',0,'G',NULL,NULL,NULL,NULL),
(5,'2010-06-12 20:30:00',4,'C','ENG',1,'USA',1,'G',NULL,NULL,NULL,NULL),
(6,'2010-06-13 13:30:00',8,'C','ALG',0,'SVN',1,'G',NULL,NULL,NULL,NULL),
(7,'2010-06-13 20:30:00',7,'D','GER',4,'AUS',0,'G',NULL,NULL,NULL,NULL),
(8,'2010-06-13 16:00:00',10,'D','SRB',0,'GHA',1,'G',NULL,NULL,NULL,NULL),
(9,'2010-06-14 13:30:00',1,'E','NED',2,'DEN',0,'G',NULL,NULL,NULL,NULL),
(10,'2010-06-14 16:00:00',5,'E','JPN',1,'CMR',0,'G',NULL,NULL,NULL,NULL),
(11,'2010-06-14 20:30:00',6,'F','ITA',1,'PAR',1,'G',NULL,NULL,NULL,NULL),
(12,'2010-06-15 13:30:00',4,'F','NZL',1,'SVK',1,'G',NULL,NULL,NULL,NULL),
(13,'2010-06-15 16:00:00',9,'G','CIV',0,'POR',0,'G',NULL,NULL,NULL,NULL),
(14,'2010-06-15 20:30:00',2,'G','BRA',2,'PRK',1,'G',NULL,NULL,NULL,NULL),
(15,'2010-06-16 13:30:00',3,'H','HON',0,'CHI',1,'G',NULL,NULL,NULL,NULL),
(16,'2010-06-16 16:00:00',7,'H','ESP',0,'SUI',1,'G',NULL,NULL,NULL,NULL),
(17,'2010-06-16 20:30:00',10,'A','RSA',0,'URU',3,'G',NULL,NULL,NULL,NULL),
(18,'2010-06-17 20:30:00',8,'A','FRA',0,'MEX',2,'G',NULL,NULL,NULL,NULL),
(19,'2010-06-17 16:00:00',5,'B','GRE',2,'NGA',1,'G',NULL,NULL,NULL,NULL),
(20,'2010-06-17 13:30:00',1,'B','ARG',4,'KOR',1,'G',NULL,NULL,NULL,NULL),
(21,'2010-06-18 13:30:00',9,'D','GER',0,'SRB',1,'G',NULL,NULL,NULL,NULL),
(22,'2010-06-18 16:00:00',2,'C','SVN',2,'USA',2,'G',NULL,NULL,NULL,NULL),
(23,'2010-06-18 20:30:00',6,'C','ENG',0,'ALG',0,'G',NULL,NULL,NULL,NULL),
(24,'2010-06-19 16:00:00',4,'D','GHA',1,'AUS',1,'G',NULL,NULL,NULL,NULL),
(25,'2010-06-19 13:30:00',7,'E','NED',1,'JPN',0,'G',NULL,NULL,NULL,NULL),
(26,'2010-06-19 20:30:00',10,'E','CMR',1,'DEN',2,'G',NULL,NULL,NULL,NULL),
(27,'2010-06-20 13:30:00',5,'F','SVK',0,'PAR',2,'G',NULL,NULL,NULL,NULL),
(28,'2010-06-20 16:00:00',3,'F','ITA',1,'NZL',1,'G',NULL,NULL,NULL,NULL),
(29,'2010-06-20 20:30:00',1,'G','BRA',3,'CIV',1,'G',NULL,NULL,NULL,NULL),
(30,'2010-06-21 13:30:00',6,'G','POR',7,'PRK',0,'G',NULL,NULL,NULL,NULL),
(31,'2010-06-21 16:00:00',9,'H','CHI',1,'SUI',0,'G',NULL,NULL,NULL,NULL),
(32,'2010-06-21 20:30:00',2,'H','ESP',2,'HON',0,'G',NULL,NULL,NULL,NULL),
(33,'2010-06-22 16:00:00',4,'A','MEX',0,'URU',1,'G',NULL,NULL,NULL,NULL),
(34,'2010-06-22 16:00:00',5,'A','FRA',1,'RSA',2,'G',NULL,NULL,NULL,NULL),
(35,'2010-06-22 20:30:00',7,'B','NGA',2,'KOR',2,'G',NULL,NULL,NULL,NULL),
(36,'2010-06-22 20:30:00',8,'B','GRE',0,'ARG',2,'G',NULL,NULL,NULL,NULL),
(37,'2010-06-23 16:00:00',9,'C','SVN',0,'ENG',1,'G',NULL,NULL,NULL,NULL),
(38,'2010-06-23 16:00:00',10,'C','USA',1,'ALG',0,'G',NULL,NULL,NULL,NULL),
(39,'2010-06-23 20:30:00',1,'D','GHA',0,'GER',1,'G',NULL,NULL,NULL,NULL),
(40,'2010-06-23 20:30:00',3,'D','AUS',2,'SRB',1,'G',NULL,NULL,NULL,NULL),
(41,'2010-06-24 16:00:00',2,'F','SVK',3,'ITA',2,'G',NULL,NULL,NULL,NULL),
(42,'2010-06-24 16:00:00',8,'F','PAR',0,'NZL',0,'G',NULL,NULL,NULL,NULL),
(43,'2010-06-24 20:30:00',4,'E','DEN',1,'JPN',3,'G',NULL,NULL,NULL,NULL),
(44,'2010-06-24 20:30:00',6,'E','CMR',1,'NED',2,'G',NULL,NULL,NULL,NULL),
(45,'2010-06-25 16:00:00',7,'G','POR',0,'BRA',0,'G',NULL,NULL,NULL,NULL),
(46,'2010-06-25 16:00:00',3,'G','PRK',0,'CIV',3,'G',NULL,NULL,NULL,NULL),
(47,'2010-06-25 20:30:00',10,'H','CHI',1,'ESP',2,'G',NULL,NULL,NULL,NULL),
(48,'2010-06-25 20:30:00',5,'H','SUI',0,'HON',0,'G',NULL,NULL,NULL,NULL),
(49,'2010-06-26 16:00:00',9,NULL,'URU',2,'KOR',1,'H','1A','2B',NULL,NULL),
(50,'2010-06-26 20:30:00',4,NULL,'USA',1,'GHA',2,'H','1C','2D',NULL,NULL),
(51,'2010-06-27 16:00:00',5,NULL,'GER',4,'ENG',1,'H','1D','2C',NULL,NULL),
(52,'2010-06-27 20:30:00',1,NULL,'ARG',3,'MEX',1,'H','1B','2A',NULL,NULL),
(53,'2010-06-28 16:00:00',7,NULL,'NED',2,'SVK',1,'H','1E','2F',NULL,NULL),
(54,'2010-06-28 20:30:00',2,NULL,'BRA',3,'CHI',0,'H','1G','2H',NULL,NULL),
(55,'2010-06-29 16:00:00',10,NULL,'PAR',0,'JPN',0,'H','1F','2E',5,3),
(56,'2010-06-29 20:30:00',6,NULL,'ESP',1,'POR',0,'H','1H','2G',NULL,NULL),
(57,'2010-07-02 16:00:00',9,NULL,'NED',2,'BRA',1,'Q','W53','W54',NULL,NULL),
(58,'2010-07-02 20:30:00',1,NULL,'URU',1,'GHA',1,'Q','W49','W50',4,2),
(59,'2010-07-03 16:00:00',6,NULL,'GER',4,'ARG',0,'Q','W51','W52',NULL,NULL),
(60,'2010-07-03 20:30:00',2,NULL,'PAR',0,'ESP',1,'Q','W55','W56',NULL,NULL),
(61,'2010-07-06 20:30:00',6,NULL,'NED',3,'URU',2,'S','W57','W58',NULL,NULL),
(62,'2010-07-07 20:30:00',7,NULL,'GER',0,'ESP',1,'S','W59','W60',NULL,NULL),
(63,'2010-07-10 20:30:00',9,NULL,'URU',2,'GER',3,'T','L61','L62',NULL,NULL),
(64,'2010-07-11 20:30:00',1,NULL,'NED',0,'ESP',1,'F','W61','W62',NULL,NULL);
/*!40000 ALTER TABLE `worldcup2010_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldcup2010_pages`
--

DROP TABLE IF EXISTS `worldcup2010_pages`;
CREATE TABLE `worldcup2010_pages` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `protect` tinyint(3) NOT NULL DEFAULT '0',
  `sub_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `link_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worldcup2010_pages`
--

LOCK TABLES `worldcup2010_pages` WRITE;
/*!40000 ALTER TABLE `worldcup2010_pages` DISABLE KEYS */;
INSERT INTO `worldcup2010_pages` VALUES
(1,'schedule','Match Schedule',0,1,0),
(2,'groups','Group Rankings',0,2,0),
(3,'groupA','A',0,2,1),
(4,'groupB','B',0,2,2),
(5,'groupC','C',0,2,3),
(6,'groupD','D',0,2,4),
(7,'groupE','E',0,2,5),
(8,'groupF','F',0,2,6),
(9,'groupG','G',0,2,7),
(10,'groupH','H',0,2,8),
(11,'finals','Finals',0,2,9);
/*!40000 ALTER TABLE `worldcup2010_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldcup2010_stadiums`
--

DROP TABLE IF EXISTS `worldcup2010_stadiums`;
CREATE TABLE `worldcup2010_stadiums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worldcup2010_stadiums`
--

LOCK TABLES `worldcup2010_stadiums` WRITE;
/*!40000 ALTER TABLE `worldcup2010_stadiums` DISABLE KEYS */;
INSERT INTO `worldcup2010_stadiums` VALUES
(1,'Soccer City','Johannesburg'),
(2,'Ellis Park','Johannesburg'),
(3,'Mbombela','Nelspruit'),
(4,'Royal Bafokeng','Rustenburg'),
(5,'Free State','Bloemfontein'),
(6,'Green Point','Cape Town'),
(7,'Durban','Durban'),
(8,'Peter Mobaka','Polokwane'),
(9,'Nelson Mandela Bay','Port Elizabeth'),
(10,'Loftus Versfeld','Tschwane / Pretoria');
/*!40000 ALTER TABLE `worldcup2010_stadiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldcup2010_teams`
--

DROP TABLE IF EXISTS `worldcup2010_teams`;
CREATE TABLE `worldcup2010_teams` (
  `id` char(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `group` char(1) NOT NULL,
  `played` tinyint(4) NOT NULL DEFAULT '0',
  `victories` tinyint(4) NOT NULL DEFAULT '0',
  `draws` tinyint(4) NOT NULL DEFAULT '0',
  `defeats` tinyint(4) NOT NULL DEFAULT '0',
  `points` tinyint(4) NOT NULL DEFAULT '0',
  `goals_scored` tinyint(4) NOT NULL DEFAULT '0',
  `goals_against` tinyint(4) NOT NULL DEFAULT '0',
  `goalaverage` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worldcup2010_teams`
--

LOCK TABLES `worldcup2010_teams` WRITE;
/*!40000 ALTER TABLE `worldcup2010_teams` DISABLE KEYS */;
INSERT INTO `worldcup2010_teams` VALUES
('RSA','South Africa','A',3,1,1,1,4,3,5,-2),
('MEX','Mexico','A',3,1,1,1,4,3,2,1),
('URU','Uruguay','A',3,2,1,0,7,4,0,4),
('FRA','France','A',3,0,1,2,1,1,4,-3),
('ARG','Argentina','B',3,3,0,0,9,7,1,6),
('NGA','Nigeria','B',3,0,1,2,1,3,5,-2),
('KOR','Korea Republic','B',3,1,1,1,4,5,6,-1),
('GRE','Greece','B',3,1,0,2,3,2,5,-3),
('ENG','England','C',3,1,2,0,5,2,1,1),
('USA','USA','C',3,1,2,0,5,4,3,1),
('ALG','Algeria','C',3,0,1,2,1,0,2,-2),
('SVN','Slovenia','C',3,1,1,1,4,3,3,0),
('GER','Germany','D',3,2,0,1,6,5,1,4),
('AUS','Australia','D',3,1,1,1,4,3,6,-3),
('SRB','Serbia','D',3,1,0,2,3,2,3,-1),
('GHA','Ghana','D',3,1,1,1,4,2,2,0),
('NED','Netherlands','E',3,3,0,0,9,5,1,4),
('DEN','Denmark','E',3,1,0,2,3,3,6,-3),
('JPN','Japan','E',3,2,0,1,6,4,2,2),
('CMR','Cameroon','E',3,0,0,3,0,2,5,-3),
('ITA','Italy','F',3,0,2,1,2,4,5,-1),
('PAR','Paraguay','F',3,1,2,0,5,3,1,2),
('NZL','New Zealand','F',3,0,3,0,3,2,2,0),
('SVK','Slovakia','F',3,1,1,1,4,4,5,-1),
('BRA','Brazil','G',3,2,1,0,7,5,2,3),
('PRK','Korea DPR','G',3,0,0,3,0,1,12,-11),
('CIV','Côte d''Ivoire','G',3,1,1,1,4,4,3,1),
('POR','Portugal','G',3,1,2,0,5,7,0,7),
('ESP','Spain','H',3,2,0,1,6,4,2,2),
('SUI','Switzerland','H',3,1,1,1,4,1,1,0),
('HON','Honduras','H',3,0,1,2,1,0,3,-3),
('CHI','Chile','H',3,2,0,1,6,3,2,1);
/*!40000 ALTER TABLE `worldcup2010_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldcup2010_users`
--

DROP TABLE IF EXISTS `worldcup2010_users`;
CREATE TABLE `worldcup2010_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;
