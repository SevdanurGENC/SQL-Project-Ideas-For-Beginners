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
-- Create schema film
--

CREATE DATABASE IF NOT EXISTS film;
USE film;

--
-- Definition of table `filmler`
--

DROP TABLE IF EXISTS `filmler`;
CREATE TABLE `filmler` (
  `filmID` int(11) NOT NULL AUTO_INCREMENT,
  `filmAdi` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `kategoriID` int(11) NOT NULL,
  `imdb` float DEFAULT NULL,
  `yapimYili` year(4) DEFAULT NULL,
  `yapimUlke` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yonetmen` varchar(60) COLLATE utf8_turkish_ci DEFAULT NULL,
  `oyuncular` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `senaryo` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `resimYol` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `filmYol` varchar(45) COLLATE utf8_turkish_ci NOT NULL,
  `eklenmeTarihi` datetime DEFAULT NULL,
  PRIMARY KEY (`filmID`),
  KEY `fk_kategoriID` (`kategoriID`),
  CONSTRAINT `fk_kategoriID` FOREIGN KEY (`kategoriID`) REFERENCES `kategori` (`kategoriID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `filmler`
--

/*!40000 ALTER TABLE `filmler` DISABLE KEYS */;
/*!40000 ALTER TABLE `filmler` ENABLE KEYS */;


--
-- Definition of table `filmtur`
--

DROP TABLE IF EXISTS `filmtur`;
CREATE TABLE `filmtur` (
  `filmID` int(11) NOT NULL,
  `turID` int(11) NOT NULL,
  PRIMARY KEY (`filmID`,`turID`),
  KEY `fk_FilmTur_Filmler1` (`filmID`),
  KEY `fk_FilmTur_Turler1` (`turID`),
  CONSTRAINT `fk_FilmTur_Filmler1` FOREIGN KEY (`filmID`) REFERENCES `filmler` (`filmID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_FilmTur_Turler1` FOREIGN KEY (`turID`) REFERENCES `turler` (`turID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filmtur`
--

/*!40000 ALTER TABLE `filmtur` DISABLE KEYS */;
/*!40000 ALTER TABLE `filmtur` ENABLE KEYS */;


--
-- Definition of table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `kategoriID` int(11) NOT NULL AUTO_INCREMENT,
  `kategoriAdi` varchar(45) NOT NULL,
  PRIMARY KEY (`kategoriID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;


--
-- Definition of table `turler`
--

DROP TABLE IF EXISTS `turler`;
CREATE TABLE `turler` (
  `turID` int(11) NOT NULL AUTO_INCREMENT,
  `turAdi` varchar(45) NOT NULL,
  PRIMARY KEY (`turID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `turler`
--

/*!40000 ALTER TABLE `turler` DISABLE KEYS */;
/*!40000 ALTER TABLE `turler` ENABLE KEYS */;


--
-- Definition of table `yonetim`
--

DROP TABLE IF EXISTS `yonetim`;
CREATE TABLE `yonetim` (
  `yoneticiID` int(11) NOT NULL AUTO_INCREMENT,
  `yöneticiAd` varchar(45) NOT NULL,
  `yöneticiSifre` varchar(45) NOT NULL,
  PRIMARY KEY (`yoneticiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yonetim`
--

/*!40000 ALTER TABLE `yonetim` DISABLE KEYS */;
/*!40000 ALTER TABLE `yonetim` ENABLE KEYS */;


--
-- Definition of table `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE `yorumlar` (
  `yorumID` int(11) NOT NULL,
  `filmID` int(11) NOT NULL,
  `yorumTarih` datetime DEFAULT NULL,
  `yorum` varchar(250) DEFAULT NULL,
  `yorumOnay` binary(1) DEFAULT NULL,
  PRIMARY KEY (`yorumID`),
  KEY `fk_Yorumlar_Filmler1` (`filmID`),
  CONSTRAINT `fk_Yorumlar_Filmler1` FOREIGN KEY (`filmID`) REFERENCES `filmler` (`filmID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yorumlar`
--

/*!40000 ALTER TABLE `yorumlar` DISABLE KEYS */;
/*!40000 ALTER TABLE `yorumlar` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
