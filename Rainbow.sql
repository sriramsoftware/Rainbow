-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rainbow
--

CREATE DATABASE IF NOT EXISTS rainbow;
USE rainbow;

--
-- Definition of table `bookticketdb`
--

DROP TABLE IF EXISTS `bookticketdb`;
CREATE TABLE `bookticketdb` (
  `bookid` varchar(20) NOT NULL,
  `movname` varchar(45) NOT NULL,
  `movdate` varchar(45) NOT NULL,
  `movtime` varchar(45) NOT NULL,
  `seats` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `refnum` int(10) unsigned NOT NULL,
  `theatre` varchar(45) NOT NULL,
  PRIMARY KEY  (`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookticketdb`
--

/*!40000 ALTER TABLE `bookticketdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookticketdb` ENABLE KEYS */;


--
-- Definition of table `contactdb`
--

DROP TABLE IF EXISTS `contactdb`;
CREATE TABLE `contactdb` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactdb`
--

/*!40000 ALTER TABLE `contactdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactdb` ENABLE KEYS */;


--
-- Definition of table `custdb`
--

DROP TABLE IF EXISTS `custdb`;
CREATE TABLE `custdb` (
  `id` varchar(10) NOT NULL,
  `custname` varchar(45) NOT NULL,
  `custdob` varchar(45) NOT NULL,
  `custpass` varchar(45) NOT NULL,
  `custaddr` varchar(50) NOT NULL,
  `custnum` varchar(10) NOT NULL,
  `custmail` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custdb`
--

/*!40000 ALTER TABLE `custdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `custdb` ENABLE KEYS */;


--
-- Definition of table `feedbackdb`
--

DROP TABLE IF EXISTS `feedbackdb`;
CREATE TABLE `feedbackdb` (
  `name` varchar(20) NOT NULL,
  `comment` longtext NOT NULL,
  `time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackdb`
--

/*!40000 ALTER TABLE `feedbackdb` DISABLE KEYS */;
INSERT INTO `feedbackdb` (`name`,`comment`,`time`) VALUES 
 ('vivek','welcome to rainbow','2015-09-11 21:21:06');
/*!40000 ALTER TABLE `feedbackdb` ENABLE KEYS */;


--
-- Definition of table `halldb`
--

DROP TABLE IF EXISTS `halldb`;
CREATE TABLE `halldb` (
  `hallid` varchar(5) NOT NULL,
  `capacity` int(10) unsigned NOT NULL,
  `thid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`hallid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halldb`
--

/*!40000 ALTER TABLE `halldb` DISABLE KEYS */;
/*!40000 ALTER TABLE `halldb` ENABLE KEYS */;


--
-- Definition of table `logindb`
--

DROP TABLE IF EXISTS `logindb`;
CREATE TABLE `logindb` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logindb`
--

/*!40000 ALTER TABLE `logindb` DISABLE KEYS */;
/*!40000 ALTER TABLE `logindb` ENABLE KEYS */;


--
-- Definition of table `moviedb`
--

DROP TABLE IF EXISTS `moviedb`;
CREATE TABLE `moviedb` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `cast` longtext NOT NULL,
  `director` varchar(45) NOT NULL,
  `duration` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `theatre` varchar(45) NOT NULL,
  `hall_id` varchar(45) NOT NULL,
  `imgpath` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviedb`
--

/*!40000 ALTER TABLE `moviedb` DISABLE KEYS */;
/*!40000 ALTER TABLE `moviedb` ENABLE KEYS */;


--
-- Definition of table `theatredb`
--

DROP TABLE IF EXISTS `theatredb`;
CREATE TABLE `theatredb` (
  `thid` int(10) unsigned NOT NULL,
  `thname` char(20) default NULL,
  `location` char(10) default NULL,
  `halls` int(11) default NULL,
  PRIMARY KEY  (`thid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatredb`
--

/*!40000 ALTER TABLE `theatredb` DISABLE KEYS */;
/*!40000 ALTER TABLE `theatredb` ENABLE KEYS */;


--
-- Definition of table `upcomingdb`
--

DROP TABLE IF EXISTS `upcomingdb`;
CREATE TABLE `upcomingdb` (
  `movieid` varchar(5) NOT NULL default '',
  `moviename` varchar(30) default NULL,
  `director` varchar(20) default NULL,
  `cast` varchar(45) default NULL,
  `genre` varchar(15) NOT NULL,
  `thname` varchar(25) NOT NULL,
  PRIMARY KEY  (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upcomingdb`
--

/*!40000 ALTER TABLE `upcomingdb` DISABLE KEYS */;
/*!40000 ALTER TABLE `upcomingdb` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
