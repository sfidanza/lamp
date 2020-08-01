-- phpMyAdmin SQL Dump
-- version OVH
-- http://www.phpmyadmin.net

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
USE `euro`;

-- --------------------------------------------------------

--
-- Table structure for table `euro2008_matches`
--

DROP TABLE IF EXISTS `euro2008_matches`;
CREATE TABLE `euro2008_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `city` varchar(20) NOT NULL,
  `group` char(1) NOT NULL,
  `team1.id` char(3) NOT NULL,
  `team1.score` tinyint(3) unsigned DEFAULT NULL,
  `team2.id` char(3) NOT NULL,
  `team2.score` tinyint(3) unsigned DEFAULT NULL,
  `channel` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `euro2008_matches`
--

LOCK TABLES `euro2008_matches` WRITE;
/*!40000 ALTER TABLE `euro2008_matches` DISABLE KEYS */;
INSERT INTO `euro2008_matches` VALUES
(1,'2008-06-07 18:00:00','Bâle','A','SUI',0,'TCH',1,'TF1'),
(2,'2008-06-07 20:45:00','Genève','A','POR',2,'TUR',0,'TF1'),
(3,'2008-06-08 18:00:00','Vienne','B','AUT',0,'CRO',1,'TF1'),
(4,'2008-06-08 20:45:00','Klagenfurt','B','ALL',2,'POL',0,'M6'),
(5,'2008-06-09 18:00:00','Zurich','C','ROU',0,'FRA',0,'M6'),
(6,'2008-06-09 20:45:00','Berne','C','PB',3,'ITA',0,'M6'),
(7,'2008-06-10 18:00:00','Innsbruck','D','ESP',4,'RUS',1,'TF1'),
(8,'2008-06-10 20:45:00','Salzbourg','D','GRE',0,'SUE',2,'M6'),
(9,'2008-06-11 18:00:00','Genève','A','TCH',1,'POR',3,'M6'),
(10,'2008-06-11 20:45:00','Bâle','A','SUI',1,'TUR',2,'TF1'),
(11,'2008-06-12 18:00:00','Klagenfurt','B','CRO',2,'ALL',1,'M6'),
(12,'2008-06-12 20:45:00','Vienne','B','AUT',1,'POL',1,'M6'),
(13,'2008-06-13 18:00:00','Zurich','C','ITA',1,'ROU',1,'TF1'),
(14,'2008-06-13 20:45:00','Berne','C','PB',4,'FRA',1,'TF1'),
(15,'2008-06-14 18:00:00','Innsbruck','D','SUE',1,'ESP',2,'M6'),
(16,'2008-06-14 20:45:00','Salzbourg','D','GRE',0,'RUS',1,'TF1'),
(17,'2008-06-15 20:45:00','Bâle','A','SUI',2,'POR',0,'TF1'),
(18,'2008-06-15 20:45:00','Genève','A','TUR',3,'TCH',2,'Eurosport'),
(19,'2008-06-16 20:45:00','Klagenfurt','B','POL',0,'CRO',1,'W9'),
(20,'2008-06-16 20:45:00','Vienne','B','AUT',0,'ALL',1,'M6'),
(21,'2008-06-17 20:45:00','Berne','C','PB',2,'ROU',0,'W9'),
(22,'2008-06-17 20:45:00','Zurich','C','FRA',0,'ITA',2,'M6'),
(23,'2008-06-18 20:45:00','Salzbourg','D','GRE',1,'ESP',2,'TF1'),
(24,'2008-06-18 20:45:00','Innsbruck','D','RUS',2,'SUE',0,'Eurosport');
/*!40000 ALTER TABLE `euro2008_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `euro2008_pages`
--

DROP TABLE IF EXISTS `euro2008_pages`;
CREATE TABLE `euro2008_pages` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` varchar(20) NOT NULL,
  `title` varchar(40) NOT NULL,
  `protect` tinyint(3) NOT NULL DEFAULT '0',
  `sub_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `link_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `euro2008_pages`
--

LOCK TABLES `euro2008_pages` WRITE;
/*!40000 ALTER TABLE `euro2008_pages` DISABLE KEYS */;
INSERT INTO `euro2008_pages` VALUES
(1,'calendrier','Calendrier des matchs',0,1,0),
(2,'groupes','Classement des groupes',0,2,0),
(3,'groupeA','Groupe A',0,2,1),
(4,'groupeB','Groupe B',0,2,2),
(5,'groupeC','Groupe C',0,2,3),
(6,'groupeD','Groupe D',0,2,4),
(7,'finales','Finales',0,2,5);
/*!40000 ALTER TABLE `euro2008_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `euro2008_teams`
--

DROP TABLE IF EXISTS `euro2008_teams`;
CREATE TABLE `euro2008_teams` (
  `id` char(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `flag` varchar(30) NOT NULL,
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
-- Dumping data for table `euro2008_teams`
--

LOCK TABLES `euro2008_teams` WRITE;
/*!40000 ALTER TABLE `euro2008_teams` DISABLE KEYS */;
INSERT INTO `euro2008_teams` VALUES
('SUI','Suisse','suisse.gif','A',3,1,0,2,3,3,3,0),
('TCH','Rép. Tchèque','reptcheque.gif','A',3,1,0,2,3,4,6,-2),
('ALL','Allemagne','allemagne.gif','B',3,2,0,1,6,4,2,2),
('AUT','Autriche','autriche.gif','B',3,0,1,2,1,1,3,-2),
('CRO','Croatie','croatie.gif','B',3,3,0,0,9,4,1,3),
('ESP','Espagne','espagne.gif','D',3,3,0,0,9,8,3,5),
('FRA','France','france.gif','C',3,0,1,2,1,1,6,-5),
('GRE','Grèce','grece.gif','D',3,0,0,3,0,1,5,-4),
('ITA','Italie','italie.gif','C',3,1,1,1,4,3,4,-1),
('PB','Pays-Bas','paysbas.gif','C',3,3,0,0,9,9,1,8),
('POL','Pologne','pologne.gif','B',3,0,1,2,1,1,4,-3),
('POR','Portugal','portugal.gif','A',3,2,0,1,6,5,3,2),
('ROU','Roumanie','roumanie.gif','C',3,0,2,1,2,1,3,-2),
('RUS','Russie','russie.gif','D',3,2,0,1,6,4,4,0),
('SUE','Suède','suede.gif','D',3,1,0,2,3,3,4,-1),
('TUR','Turquie','turquie.gif','A',3,2,0,1,6,5,5,0);
/*!40000 ALTER TABLE `euro2008_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `euro2008_users`
--

DROP TABLE IF EXISTS `euro2008_users`;
CREATE TABLE `euro2008_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;
