-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dishekimligiotomasyonu
--

CREATE DATABASE IF NOT EXISTS dishekimligiotomasyonu;
USE dishekimligiotomasyonu;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminadi` varchar(45) NOT NULL,
  `adminsoyadi` varchar(45) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `ajanda`
--

DROP TABLE IF EXISTS `ajanda`;
CREATE TABLE `ajanda` (
  `tcno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hatirlatma` varchar(45) NOT NULL,
  `gzamani` datetime NOT NULL,
  `uzamani` datetime NOT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ajanda`
--

/*!40000 ALTER TABLE `ajanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajanda` ENABLE KEYS */;


--
-- Definition of table `brans`
--

DROP TABLE IF EXISTS `brans`;
CREATE TABLE `brans` (
  `bransid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bransadi` varchar(45) NOT NULL,
  PRIMARY KEY (`bransid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brans`
--

/*!40000 ALTER TABLE `brans` DISABLE KEYS */;
/*!40000 ALTER TABLE `brans` ENABLE KEYS */;


--
-- Definition of table `hastalar`
--

DROP TABLE IF EXISTS `hastalar`;
CREATE TABLE `hastalar` (
  `hastatc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hastaadi` varchar(45) NOT NULL,
  `hastasoyadi` varchar(45) NOT NULL,
  `gsm` varchar(45) NOT NULL,
  `kangrubu` varchar(45) NOT NULL,
  PRIMARY KEY (`hastatc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hastalar`
--

/*!40000 ALTER TABLE `hastalar` DISABLE KEYS */;
/*!40000 ALTER TABLE `hastalar` ENABLE KEYS */;


--
-- Definition of table `hekimler`
--

DROP TABLE IF EXISTS `hekimler`;
CREATE TABLE `hekimler` (
  `tcno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hekimadi` varchar(45) NOT NULL,
  `hekimsoyadi` varchar(45) NOT NULL,
  `hekimid` varchar(45) NOT NULL,
  `gsm` varchar(45) NOT NULL,
  `e_mail` varchar(45) NOT NULL,
  `resim` varchar(45) NOT NULL,
  `ozgecmis` varchar(45) NOT NULL,
  `bransid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hekimler`
--

/*!40000 ALTER TABLE `hekimler` DISABLE KEYS */;
/*!40000 ALTER TABLE `hekimler` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `loginid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sifre` varchar(45) NOT NULL,
  `yetkiid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `muhasebe`
--

DROP TABLE IF EXISTS `muhasebe`;
CREATE TABLE `muhasebe` (
  `muhasebeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tedaviid` int(10) unsigned NOT NULL,
  `hastatc` int(10) unsigned NOT NULL,
  `ucret` double NOT NULL,
  `tarih` datetime NOT NULL,
  PRIMARY KEY (`muhasebeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `muhasebe`
--

/*!40000 ALTER TABLE `muhasebe` DISABLE KEYS */;
/*!40000 ALTER TABLE `muhasebe` ENABLE KEYS */;


--
-- Definition of table `tedavi`
--

DROP TABLE IF EXISTS `tedavi`;
CREATE TABLE `tedavi` (
  `tedaviid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tedaviadi` varchar(45) NOT NULL,
  `tedavifiyati` double NOT NULL,
  `ilaclar` varchar(45) NOT NULL,
  `aciklama` varchar(45) NOT NULL,
  PRIMARY KEY (`tedaviid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tedavi`
--

/*!40000 ALTER TABLE `tedavi` DISABLE KEYS */;
/*!40000 ALTER TABLE `tedavi` ENABLE KEYS */;


--
-- Definition of table `tedavikayit`
--

DROP TABLE IF EXISTS `tedavikayit`;
CREATE TABLE `tedavikayit` (
  `tcno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tarih` datetime NOT NULL,
  `hastatc` int(10) unsigned NOT NULL,
  `tedaviid` int(10) unsigned NOT NULL,
  `randevu` tinyint(1) NOT NULL,
  PRIMARY KEY (`tcno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tedavikayit`
--

/*!40000 ALTER TABLE `tedavikayit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tedavikayit` ENABLE KEYS */;


--
-- Definition of table `yetki`
--

DROP TABLE IF EXISTS `yetki`;
CREATE TABLE `yetki` (
  `yetkiid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yetkiadi` varchar(45) NOT NULL,
  PRIMARY KEY (`yetkiid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yetki`
--

/*!40000 ALTER TABLE `yetki` DISABLE KEYS */;
/*!40000 ALTER TABLE `yetki` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
