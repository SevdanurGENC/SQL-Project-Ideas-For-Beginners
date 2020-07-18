-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ogrveritabani
--

CREATE DATABASE IF NOT EXISTS ogrveritabani;
USE ogrveritabani;

--
-- Definition of table `bolumler`
--

DROP TABLE IF EXISTS `bolumler`;
CREATE TABLE `bolumler` (
  `bolid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `boladi` varchar(45) NOT NULL,
  PRIMARY KEY (`bolid`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bolumler`
--

/*!40000 ALTER TABLE `bolumler` DISABLE KEYS */;
INSERT INTO `bolumler` (`bolid`,`boladi`) VALUES 
 (1001,'Bilgisayar Mühendisliği');
/*!40000 ALTER TABLE `bolumler` ENABLE KEYS */;


--
-- Definition of table `dersler`
--

DROP TABLE IF EXISTS `dersler`;
CREATE TABLE `dersler` (
  `dkodu` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dadi` varchar(45) NOT NULL,
  `dkredi` int(10) unsigned NOT NULL,
  `dsaati` int(10) unsigned NOT NULL,
  PRIMARY KEY (`dkodu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dersler`
--

/*!40000 ALTER TABLE `dersler` DISABLE KEYS */;
INSERT INTO `dersler` (`dkodu`,`dadi`,`dkredi`,`dsaati`) VALUES 
 (101,'İngilizce',3,4),
 (102,'Matematik',4,5);
/*!40000 ALTER TABLE `dersler` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `kadi` varchar(11) NOT NULL,
  `sifre` varchar(8) NOT NULL,
  `yid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`kadi`),
  KEY `FK_login_1` (`yid`),
  CONSTRAINT `FK_login_1` FOREIGN KEY (`yid`) REFERENCES `yetki` (`yid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`kadi`,`sifre`,`yid`) VALUES 
 ('cnr','blm',101),
 ('hsn','thn',101);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `ogrders`
--

DROP TABLE IF EXISTS `ogrders`;
CREATE TABLE `ogrders` (
  `ogrno` varchar(11) NOT NULL,
  `dkodu` int(10) unsigned NOT NULL,
  `vize` float NOT NULL,
  `final` float NOT NULL,
  `ortalama` float NOT NULL,
  `tekrar` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ogrno`,`dkodu`) USING BTREE,
  KEY `FK_ogrders_2` (`dkodu`),
  CONSTRAINT `FK_ogrders_1` FOREIGN KEY (`ogrno`) REFERENCES `ogrenciler` (`ogrno`),
  CONSTRAINT `FK_ogrders_2` FOREIGN KEY (`dkodu`) REFERENCES `dersler` (`dkodu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ogrders`
--

/*!40000 ALTER TABLE `ogrders` DISABLE KEYS */;
INSERT INTO `ogrders` (`ogrno`,`dkodu`,`vize`,`final`,`ortalama`,`tekrar`) VALUES 
 ('34',101,50,50,50,2);
/*!40000 ALTER TABLE `ogrders` ENABLE KEYS */;


--
-- Definition of table `ogrenciler`
--

DROP TABLE IF EXISTS `ogrenciler`;
CREATE TABLE `ogrenciler` (
  `ogrno` varchar(11) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `dtarihi` datetime DEFAULT NULL,
  `adres` varchar(400) NOT NULL,
  `gsm` varchar(11) NOT NULL,
  `tcno` varchar(11) NOT NULL,
  `bolid` int(10) unsigned NOT NULL,
  `did` varchar(11) NOT NULL,
  PRIMARY KEY (`ogrno`),
  KEY `FK_ogrenciler_1` (`bolid`),
  KEY `FK_ogrenciler_2` (`did`),
  CONSTRAINT `FK_ogrenciler_1` FOREIGN KEY (`bolid`) REFERENCES `bolumler` (`bolid`),
  CONSTRAINT `FK_ogrenciler_2` FOREIGN KEY (`did`) REFERENCES `ogretmenler` (`sicilno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ogrenciler`
--

/*!40000 ALTER TABLE `ogrenciler` DISABLE KEYS */;
INSERT INTO `ogrenciler` (`ogrno`,`adi`,`soyadi`,`dtarihi`,`adres`,`gsm`,`tcno`,`bolid`,`did`) VALUES 
 ('34','hasan','tahan',NULL,'gjhasghfhç','14137415','54763461254',1001,'hsn');
/*!40000 ALTER TABLE `ogrenciler` ENABLE KEYS */;


--
-- Definition of table `ogretmenders`
--

DROP TABLE IF EXISTS `ogretmenders`;
CREATE TABLE `ogretmenders` (
  `ogtsicilno` varchar(11) NOT NULL,
  `derskodu` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ogtsicilno`,`derskodu`),
  KEY `FK_ogretmenders_2` (`derskodu`),
  CONSTRAINT `FK_ogretmenders_1` FOREIGN KEY (`ogtsicilno`) REFERENCES `ogretmenler` (`sicilno`),
  CONSTRAINT `FK_ogretmenders_2` FOREIGN KEY (`derskodu`) REFERENCES `dersler` (`dkodu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ogretmenders`
--

/*!40000 ALTER TABLE `ogretmenders` DISABLE KEYS */;
INSERT INTO `ogretmenders` (`ogtsicilno`,`derskodu`) VALUES 
 ('cnr',101),
 ('hsn',101),
 ('hsn',102);
/*!40000 ALTER TABLE `ogretmenders` ENABLE KEYS */;


--
-- Definition of table `ogretmenler`
--

DROP TABLE IF EXISTS `ogretmenler`;
CREATE TABLE `ogretmenler` (
  `sicilno` varchar(11) NOT NULL,
  `adi` varchar(45) NOT NULL,
  `soyadi` varchar(45) NOT NULL,
  `tcno` varchar(11) NOT NULL,
  `dtarihi` datetime DEFAULT NULL,
  `adres` varchar(400) NOT NULL,
  `gsm` varchar(11) NOT NULL,
  `res` varchar(45) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sicilno`),
  KEY `FK_ogretmenler_1` (`uid`),
  CONSTRAINT `FK_ogretmenler_1` FOREIGN KEY (`uid`) REFERENCES `unvan` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ogretmenler`
--

/*!40000 ALTER TABLE `ogretmenler` DISABLE KEYS */;
INSERT INTO `ogretmenler` (`sicilno`,`adi`,`soyadi`,`tcno`,`dtarihi`,`adres`,`gsm`,`res`,`uid`) VALUES 
 ('cnr','Caner','Balım','26345265234',NULL,'rjrd','3238756457','src/resimler/a.jpg',10),
 ('hsn','hasan','tahan','12542356413',NULL,'dfdg','5556357880','src/resimler/gs.jpg',10);
/*!40000 ALTER TABLE `ogretmenler` ENABLE KEYS */;


--
-- Definition of table `unvan`
--

DROP TABLE IF EXISTS `unvan`;
CREATE TABLE `unvan` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uadi` varchar(45) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unvan`
--

/*!40000 ALTER TABLE `unvan` DISABLE KEYS */;
INSERT INTO `unvan` (`uid`,`uadi`) VALUES 
 (10,'doçent');
/*!40000 ALTER TABLE `unvan` ENABLE KEYS */;


--
-- Definition of table `yetki`
--

DROP TABLE IF EXISTS `yetki`;
CREATE TABLE `yetki` (
  `yid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yadi` varchar(45) NOT NULL,
  PRIMARY KEY (`yid`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yetki`
--

/*!40000 ALTER TABLE `yetki` DISABLE KEYS */;
INSERT INTO `yetki` (`yid`,`yadi`) VALUES 
 (101,'ogretmen');
/*!40000 ALTER TABLE `yetki` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
