-- phpMyAdmin SQL Dump
-- version OVH
-- http://www.phpmyadmin.net

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
USE `euro`;

-- --------------------------------------------------------

--
-- Table structure for table `euro2012_matches`
--

DROP TABLE IF EXISTS `euro2012_matches`;
CREATE TABLE `euro2012_matches` (
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
  `channel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `euro2012_matches`
--

LOCK TABLES `euro2012_matches` WRITE;
INSERT INTO `euro2012_matches` VALUES
(1,'2012-06-08 18:00:00',1,'A','POL',1,'GRE',1,'G',NULL,NULL,NULL,NULL,'M6'),
(2,'2012-06-08 20:45:00',2,'A','RUS',4,'CZE',1,'G',NULL,NULL,NULL,NULL,NULL),
(3,'2012-06-09 18:00:00',3,'B','NED',0,'DEN',1,'G',NULL,NULL,NULL,NULL,NULL),
(4,'2012-06-09 20:45:00',4,'B','GER',1,'POR',0,'G',NULL,NULL,NULL,NULL,'TF1'),
(5,'2012-06-10 18:00:00',5,'C','ESP',1,'ITA',1,'G',NULL,NULL,NULL,NULL,'M6'),
(6,'2012-06-10 20:45:00',6,'C','IRL',1,'CRO',3,'G',NULL,NULL,NULL,NULL,NULL),
(7,'2012-06-11 18:00:00',8,'D','FRA',1,'ENG',1,'G',NULL,NULL,NULL,NULL,'TF1'),
(8,'2012-06-11 20:45:00',7,'D','UKR',2,'SWE',1,'G',NULL,NULL,NULL,NULL,NULL),
(9,'2012-06-12 18:00:00',2,'A','GRE',1,'CZE',2,'G',NULL,NULL,NULL,NULL,NULL),
(10,'2012-06-12 20:45:00',1,'A','POL',1,'RUS',1,'G',NULL,NULL,NULL,NULL,'M6'),
(11,'2012-06-13 18:00:00',4,'B','DEN',2,'POR',3,'G',NULL,NULL,NULL,NULL,NULL),
(12,'2012-06-13 20:45:00',3,'B','NED',1,'GER',2,'G',NULL,NULL,NULL,NULL,'TF1'),
(13,'2012-06-14 18:00:00',6,'C','ITA',1,'CRO',1,'G',NULL,NULL,NULL,NULL,NULL),
(14,'2012-06-14 20:45:00',5,'C','ESP',4,'IRL',0,'G',NULL,NULL,NULL,NULL,'TF1'),
(15,'2012-06-15 18:00:00',8,'D','UKR',0,'FRA',2,'G',NULL,NULL,NULL,NULL,'M6'),
(16,'2012-06-15 20:45:00',7,'D','SWE',2,'ENG',3,'G',NULL,NULL,NULL,NULL,'M6'),
(17,'2012-06-16 20:45:00',1,'A','GRE',1,'RUS',0,'G',NULL,NULL,NULL,NULL,NULL),
(18,'2012-06-16 20:45:00',2,'A','CZE',1,'POL',0,'G',NULL,NULL,NULL,NULL,NULL),
(19,'2012-06-17 20:45:00',3,'B','POR',2,'NED',1,'G',NULL,NULL,NULL,NULL,'TF1M6'),
(20,'2012-06-17 20:45:00',4,'B','DEN',1,'GER',2,'G',NULL,NULL,NULL,NULL,'TF1M6'),
(21,'2012-06-18 20:45:00',5,'C','CRO',0,'ESP',1,'G',NULL,NULL,NULL,NULL,'TF1'),
(22,'2012-06-18 20:45:00',6,'C','ITA',2,'IRL',0,'G',NULL,NULL,NULL,NULL,NULL),
(23,'2012-06-19 20:45:00',7,'D','SWE',2,'FRA',0,'G',NULL,NULL,NULL,NULL,'M6'),
(24,'2012-06-19 20:45:00',8,'D','ENG',1,'UKR',0,'G',NULL,NULL,NULL,NULL,NULL),
(25,'2012-06-21 20:45:00',1,NULL,'CZE',0,'POR',1,'Q','1A','2B',NULL,NULL,'M6'),
(26,'2012-06-22 20:45:00',5,NULL,'GER',4,'GRE',2,'Q','1B','2A',NULL,NULL,'TF1'),
(27,'2012-06-23 20:45:00',8,NULL,'ESP',2,'FRA',0,'Q','1C','2D',NULL,NULL,'TF1'),
(28,'2012-06-24 20:45:00',7,NULL,'ENG',0,'ITA',0,'Q','1D','2C',3,4,'M6'),
(29,'2012-06-27 20:45:00',8,NULL,'POR',0,'ESP',0,'S','W25','W27',2,4,'M6'),
(30,'2012-06-28 20:45:00',1,NULL,'GER',1,'ITA',2,'S','W26','W28',NULL,NULL,'TF1'),
(31,'2012-07-01 20:45:00',7,NULL,'ESP',4,'ITA',0,'F','W29','W30',NULL,NULL,'TF1');
UNLOCK TABLES;


-- --------------------------------------------------------

--
-- Table structure for table `euro2012_stadiums`
--

DROP TABLE IF EXISTS `euro2012_stadiums`;
CREATE TABLE `euro2012_stadiums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `euro2012_stadiums`
--

LOCK TABLES `euro2012_stadiums` WRITE;
INSERT INTO `euro2012_stadiums` VALUES
(1,'National Stadium','Warsaw'),
(2,'Municipal Stadium','Wroclaw'),
(3,'Metalist Stadium','Kharkiv'),
(4,'Arena Lviv','Lviv'),
(5,'Arena Gdansk','Gdansk'),
(6,'Municipal Stadium','Poznan'),
(7,'Olympic Stadium','Kyiv'),
(8,'Donbass Arena','Donetsk');
UNLOCK TABLES;

-- --------------------------------------------------------

--
-- Table structure for table `euro2012_teams`
--

DROP TABLE IF EXISTS `euro2012_teams`;
CREATE TABLE `euro2012_teams` (
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
  `rank` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `euro2012_teams`
--

LOCK TABLES `euro2012_teams` WRITE;
INSERT INTO `euro2012_teams` VALUES
('POL','Poland','A',3,0,2,1,2,2,3,-1,4),
('GRE','Greece','A',3,1,1,1,4,3,3,0,2),
('RUS','Russia','A',3,1,1,1,4,5,3,2,3),
('CZE','Czech Republic','A',3,2,0,1,6,4,5,-1,1),
('NED','Netherlands','B',3,0,0,3,0,2,5,-3,4),
('DEN','Denmark','B',3,1,0,2,3,4,5,-1,3),
('GER','Germany','B',3,3,0,0,9,5,2,3,1),
('POR','Portugal','B',3,2,0,1,6,5,4,1,2),
('ESP','Spain','C',3,2,1,0,7,6,1,5,1),
('ITA','Italy','C',3,1,2,0,5,4,2,2,2),
('IRL','Republic of Ireland','C',3,0,0,3,0,1,9,-8,4),
('CRO','Croatia','C',3,1,1,1,4,4,3,1,3),
('UKR','Ukraine','D',3,1,0,2,3,2,4,-2,4),
('SWE','Sweden','D',3,1,0,2,3,5,5,0,3),
('FRA','France','D',3,1,1,1,4,3,3,0,2),
('ENG','England','D',3,2,1,0,7,5,3,2,1);
UNLOCK TABLES;

-- --------------------------------------------------------

--
-- Table structure for table `euro2012_users`
--

DROP TABLE IF EXISTS `euro2012_users`;
CREATE TABLE `euro2012_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `euro2012_bets`
--

DROP TABLE IF EXISTS `euro2012_bets`;
CREATE TABLE `euro2012_bets` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `challenge` varchar(20) NOT NULL,
  `target` varchar(20) DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `euro2012_bets`
--

LOCK TABLES `euro2012_bets` WRITE;
INSERT INTO `euro2012_bets` VALUES
(1,'sfidanza','champion',NULL,'ESP'),
(2,'sfidanza','matchWinner','25','POR'),
(3,'sfidanza','matchWinner','26','GER'),
(4,'sfidanza','matchWinner','27','ESP'),
(5,'sfidanza','matchWinner','28','ITA'),
(6,'czamarian','matchWinner','25','POR'),
(7,'czamarian','matchWinner','26','GER'),
(8,'czamarian','matchWinner','27','ESP'),
(9,'czamarian','matchWinner','28','ENG'),
(10,'vmeurisse','matchWinner','25','POR'),
(11,'vmeurisse','matchWinner','26','GER'),
(12,'vmeurisse','matchWinner','27','ESP'),
(13,'vmeurisse','champion',NULL,'ESP'),
(14,'sbenkirane','matchWinner','25','CZE'),
(15,'sbenkirane','matchWinner','26','GER'),
(16,'sbenkirane','matchWinner','27','ESP'),
(17,'sbenkirane','matchWinner','28','ENG'),
(18,'sbenkirane','champion',NULL,'GER'),
(19,'vmeurisse','matchWinner','28','ENG'),
(20,'czamarian','champion',NULL,'ITA');
UNLOCK TABLES;

/*!40101 SET character_set_client = @saved_cs_client */;
