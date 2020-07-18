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
-- Create schema musteritakipsistemi
--

CREATE DATABASE IF NOT EXISTS musteritakipsistemi;
USE musteritakipsistemi;

--
-- Definition of table `borcbilgisi`
--

DROP TABLE IF EXISTS `borcbilgisi`;
CREATE TABLE `borcbilgisi` (
  `MusteriTc` varchar(11) NOT NULL DEFAULT '0',
  `SiparisId` int(10) unsigned NOT NULL DEFAULT '0',
  `SiparisBorc` varchar(45) NOT NULL,
  `SonOdemeTarihi` varchar(45) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`MusteriTc`,`SiparisId`) USING BTREE,
  KEY `FK_borcbilgisi_1` (`SiparisId`),
  CONSTRAINT `FK_borcbilgisi_1` FOREIGN KEY (`SiparisId`) REFERENCES `siparisbilgileri` (`SiparisId`),
  CONSTRAINT `FK_borcbilgisi_2` FOREIGN KEY (`MusteriTc`) REFERENCES `musteribilgi` (`MusteriTc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borcbilgisi`
--

/*!40000 ALTER TABLE `borcbilgisi` DISABLE KEYS */;
INSERT INTO `borcbilgisi` (`MusteriTc`,`SiparisId`,`SiparisBorc`,`SonOdemeTarihi`) VALUES 
 ('10000000001',104,'1','2009-08-26 00:00:00'),
 ('10000000001',105,'900.00','26 ağustos 2010'),
 ('10000000002',104,'0','2007-10-20 00:00:00'),
 ('10000000002',106,'700.00','15aral?k'),
 ('10000000003',105,'500.00','2010-05-14 00:00:00'),
 ('123',109,'5000','8haziran2009'),
 ('123',110,'1','5 ocak'),
 ('123',111,'50','5 ocak'),
 ('4545',106,'4500.00','8aral?k2010'),
 ('4545',108,'555','5nisan'),
 ('45455',112,'500','10 may?s 2008');
/*!40000 ALTER TABLE `borcbilgisi` ENABLE KEYS */;


--
-- Definition of table `calisanlar`
--

DROP TABLE IF EXISTS `calisanlar`;
CREATE TABLE `calisanlar` (
  `CSicilNo` varchar(11) CHARACTER SET latin5 NOT NULL,
  `CalisanAdi` varchar(45) CHARACTER SET latin5 NOT NULL,
  `CalisanSoyadi` varchar(45) CHARACTER SET latin5 NOT NULL,
  `Tel` varchar(11) CHARACTER SET latin5 NOT NULL,
  `Adres` varchar(45) CHARACTER SET latin5 NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CSicilNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calisanlar`
--

/*!40000 ALTER TABLE `calisanlar` DISABLE KEYS */;
INSERT INTO `calisanlar` (`CSicilNo`,`CalisanAdi`,`CalisanSoyadi`,`Tel`,`Adres`,`foto`) VALUES 
 ('500','melike','demir','4444444','ulubey mahallesi',NULL),
 ('501','meral','okumuş','4555555','alemdar mahallesi',NULL),
 ('502','kerim','kalık','7474','kalecik mah',NULL),
 ('503','derya','kaya','741256','semt mah',NULL);
/*!40000 ALTER TABLE `calisanlar` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `LoginId` int(8) unsigned NOT NULL DEFAULT '0',
  `sifre` varchar(10) CHARACTER SET latin5 DEFAULT NULL,
  `YetkiId` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginId`),
  KEY `FK_login_1` (`YetkiId`),
  CONSTRAINT `FK_login_1` FOREIGN KEY (`YetkiId`) REFERENCES `yetki` (`YetkiId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`LoginId`,`sifre`,`YetkiId`) VALUES 
 (500,'123',78),
 (501,'123',78),
 (502,'123',78),
 (503,'123',78),
 (800,'123',77),
 (801,'123',77),
 (802,'123',77),
 (803,'123',77);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `musteribilgi`
--

DROP TABLE IF EXISTS `musteribilgi`;
CREATE TABLE `musteribilgi` (
  `MusteriTc` varchar(45) NOT NULL,
  `MusteriAdi` varchar(45) CHARACTER SET latin5 NOT NULL,
  `MusteriSoyadi` varchar(45) CHARACTER SET latin5 NOT NULL,
  `Tel1` varchar(11) NOT NULL,
  `Tel2` varchar(11) DEFAULT NULL,
  `Fax` varchar(11) DEFAULT NULL,
  `Adres` varchar(45) CHARACTER SET latin5 DEFAULT NULL,
  PRIMARY KEY (`MusteriTc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `musteribilgi`
--

/*!40000 ALTER TABLE `musteribilgi` DISABLE KEYS */;
INSERT INTO `musteribilgi` (`MusteriTc`,`MusteriAdi`,`MusteriSoyadi`,`Tel1`,`Tel2`,`Fax`,`Adres`) VALUES 
 ('','','','','','',''),
 ('10000000001','resul','kaplan','4545','5858','9898','servet mah'),
 ('10000000002','cemile','yıldız','11111111111','11111111112','11111111113','yayla mahallesi'),
 ('10000000003','merve','kartal','33333333331','33333333332','33333333333','ordu mahallesi'),
 ('10000000004','yasemin','günay','44444444441','44444444442','44444444442','anadolu mahallesi'),
 ('10000000005','nergis','salık','22','11','33','sevgi mah'),
 ('10000000006','serpil','duran','424242','5555555','66666','murat mahallesi'),
 ('10000000008','turhan','yutan','77','78','79','yagmur mah'),
 ('121211','ferya','serp','77','45','85','serim apt'),
 ('12123','ferhat','sefil','554545','98989','8989899','yayla mah'),
 ('123','deniz','sakin','123','123','123','sakin mah'),
 ('1236','esin','eski','74','56','89','mine mah'),
 ('222','meryem','kantar','78','87','85','kara mahallesi'),
 ('22222','hacer','tuna','23','54','46','ankara'),
 ('333','serap','demir','598451','4541','595','kaya mah'),
 ('4545','burcu','dursun','74','56','55','kju?h'),
 ('45455','halid','keskin','787878','89898','5656','hjkhkjhkj'),
 ('456','hasan','jhgjg','5485','54141','54584','gygdgfuj'),
 ('789','suna','kal?n','7474','5858','5656','pelin apt');
/*!40000 ALTER TABLE `musteribilgi` ENABLE KEYS */;


--
-- Definition of table `patronlar`
--

DROP TABLE IF EXISTS `patronlar`;
CREATE TABLE `patronlar` (
  `PatronId` varchar(11) CHARACTER SET latin5 NOT NULL,
  `PatronAdi` varchar(45) CHARACTER SET latin5 NOT NULL,
  `PatronSoyadi` varchar(45) CHARACTER SET latin5 NOT NULL,
  `Tel` varchar(11) NOT NULL,
  `Adres` varchar(45) CHARACTER SET latin5 NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PatronId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patronlar`
--

/*!40000 ALTER TABLE `patronlar` DISABLE KEYS */;
INSERT INTO `patronlar` (`PatronId`,`PatronAdi`,`PatronSoyadi`,`Tel`,`Adres`,`foto`) VALUES 
 ('800','ahmet','küçük','1111111','sera mahallesi','ahmet.JPG'),
 ('801','serpil','fidan','2222222','yayla mahallesi','serpil.JPG'),
 ('802','leyla','çimen','454545','melik apt','leyla.jpg'),
 ('803','berke','gedik','7777','kale mah','berke.jpg');
/*!40000 ALTER TABLE `patronlar` ENABLE KEYS */;


--
-- Definition of table `renkbilgisi`
--

DROP TABLE IF EXISTS `renkbilgisi`;
CREATE TABLE `renkbilgisi` (
  `RenkId` int(8) unsigned NOT NULL DEFAULT '0',
  `RenkAdi` varchar(10) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`RenkId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renkbilgisi`
--

/*!40000 ALTER TABLE `renkbilgisi` DISABLE KEYS */;
INSERT INTO `renkbilgisi` (`RenkId`,`RenkAdi`) VALUES 
 (10,'kırmızı'),
 (20,'mavi'),
 (30,'sarı'),
 (40,'turuncu'),
 (50,'mor'),
 (60,'beyaz'),
 (70,'bordo'),
 (80,'yesil'),
 (90,'mor'),
 (100,'kahve');
/*!40000 ALTER TABLE `renkbilgisi` ENABLE KEYS */;


--
-- Definition of table `siparisbilgileri`
--

DROP TABLE IF EXISTS `siparisbilgileri`;
CREATE TABLE `siparisbilgileri` (
  `SiparisId` int(10) unsigned NOT NULL DEFAULT '0',
  `UrunId` int(8) unsigned NOT NULL,
  `STarih` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SiparisId`),
  KEY `FK_siparisbilgileri_1` (`UrunId`),
  CONSTRAINT `FK_siparisbilgileri_1` FOREIGN KEY (`UrunId`) REFERENCES `urunbilgileri` (`UrunId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siparisbilgileri`
--

/*!40000 ALTER TABLE `siparisbilgileri` DISABLE KEYS */;
INSERT INTO `siparisbilgileri` (`SiparisId`,`UrunId`,`STarih`) VALUES 
 (101,6,'2009-06-26'),
 (102,5,'2010-02-14'),
 (103,4,'2010-02-16'),
 (104,3,'27ocak'),
 (105,2,'21ekim'),
 (106,1,'5temmuz2010'),
 (107,7,'2007-06-11'),
 (108,1,'4mart'),
 (109,5,'4nisan2009'),
 (110,8,'3 kas?m'),
 (111,1,'5 kas?m'),
 (112,1,'10 nisan 2008');
/*!40000 ALTER TABLE `siparisbilgileri` ENABLE KEYS */;


--
-- Definition of table `urunbilgileri`
--

DROP TABLE IF EXISTS `urunbilgileri`;
CREATE TABLE `urunbilgileri` (
  `UrunId` int(8) unsigned NOT NULL DEFAULT '0',
  `UrunAdi` varchar(20) CHARACTER SET latin5 NOT NULL,
  `RenkId` int(8) unsigned NOT NULL,
  PRIMARY KEY (`UrunId`) USING BTREE,
  KEY `FK_urunbilgileri_1` (`RenkId`),
  CONSTRAINT `FK_urunbilgileri_1` FOREIGN KEY (`RenkId`) REFERENCES `renkbilgisi` (`RenkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urunbilgileri`
--

/*!40000 ALTER TABLE `urunbilgileri` DISABLE KEYS */;
INSERT INTO `urunbilgileri` (`UrunId`,`UrunAdi`,`RenkId`) VALUES 
 (1,'masa',20),
 (2,'kapı',40),
 (3,'yemek odası',10),
 (4,'yatak odası',30),
 (5,'koltuk',60),
 (6,'mutfak',40),
 (7,'vestiyer',50),
 (8,'komidin',50),
 (9,'sehpa',70),
 (10,'sandalye',70),
 (11,'vestiyer',20),
 (12,'koltuk',90);
/*!40000 ALTER TABLE `urunbilgileri` ENABLE KEYS */;


--
-- Definition of table `yetki`
--

DROP TABLE IF EXISTS `yetki`;
CREATE TABLE `yetki` (
  `YetkiId` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `YetkiliAdi` varchar(20) CHARACTER SET latin5 NOT NULL,
  PRIMARY KEY (`YetkiId`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yetki`
--

/*!40000 ALTER TABLE `yetki` DISABLE KEYS */;
INSERT INTO `yetki` (`YetkiId`,`YetkiliAdi`) VALUES 
 (77,'patron'),
 (78,'çalışan');
/*!40000 ALTER TABLE `yetki` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
