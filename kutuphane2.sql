-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 19 Aralık 2011 saat 03:00:00
-- Sunucu sürümü: 5.5.8
-- PHP Sürümü: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `kutuphane`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ceza`
--

CREATE TABLE IF NOT EXISTS `ceza` (
  `UnvanNo` int(11) NOT NULL,
  `AlisTarih` date NOT NULL,
  `IadeTarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ceza`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diller`
--

CREATE TABLE IF NOT EXISTS `diller` (
  `DilNo` int(20) NOT NULL,
  `DilAd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `diller`
--

INSERT INTO `diller` (`DilNo`, `DilAd`) VALUES
(1, 'Ingilizce'),
(2, 'Almanca'),
(3, 'Fransizca'),
(4, 'Arapca'),
(5, 'Cince'),
(6, 'Italyanca'),
(7, 'Turkce');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `firma`
--

CREATE TABLE IF NOT EXISTS `firma` (
  `FirmaNo` int(20) NOT NULL,
  `FirmaAdi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `firma`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iade`
--

CREATE TABLE IF NOT EXISTS `iade` (
  `UyeNo` int(20) NOT NULL,
  `ISBN` int(20) NOT NULL,
  `IadeTarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `iade`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE IF NOT EXISTS `kitap` (
  `ISBN` int(20) NOT NULL,
  `KitapAd` varchar(50) NOT NULL,
  `Basim` date NOT NULL,
  `YayinEvi` varchar(50) NOT NULL,
  `KitapYer` varchar(100) NOT NULL,
  `UyeNo` int(20) NOT NULL,
  `Fiyat` int(20) NOT NULL,
  `FirmaNo` int(20) NOT NULL,
  `GelisTarihi` date NOT NULL,
  `DilNo` int(20) NOT NULL,
  `Adet` int(20) NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`ISBN`, `KitapAd`, `Basim`, `YayinEvi`, `KitapYer`, `UyeNo`, `Fiyat`, `FirmaNo`, `GelisTarihi`, `DilNo`, `Adet`) VALUES
(1000, 'YuzuncuAd', '2000-03-21', 'Fazilet Neşriyat ve Matbaacılık', '3.kat', 1, 0, 0, '0000-00-00', 1, 3),
(1001, 'Denemeler', '2001-02-23', 'Fatih Yayınevi Matbaası ', '2.kat', 2, 0, 0, '0000-00-00', 1, 2),
(1002, 'SizKimiKandiriyorsunuz', '2002-02-01', 'Fatih Ofset', '1.kat', 3, 0, 0, '0000-00-00', 1, 1),
(1003, 'ByeByeTurkce', '2000-03-00', 'Fatih Belediyesi', '2.kat', 4, 0, 0, '0000-00-00', 1, 4),
(1004, 'Matlab', '2003-01-02', 'Bata', '3.kat', 5, 0, 0, '0000-00-00', 1, 2),
(1005, 'Kavgam', '1994-01-07', 'Fenomen Yayıncılık', 'Zemin kat', 6, 0, 0, '0000-00-00', 1, 5),
(1006, 'BilinmeyenOsmanlı', '1999-10-07', 'Fener Yayınları ', 'Zemin kat', 7, 0, 0, '0000-00-00', 1, 1),
(1007, 'AtesiCalmak', '1994-11-12', 'Fem Yayınları ', '2.kat', 8, 0, 0, '0000-00-00', 1, 2),
(1008, 'MogolKurdu', '2000-10-21', 'Fecr Yayınları', '1.kat', 9, 0, 0, '0000-00-00', 1, 2),
(1009, 'TanriyaKosanFizik', '2001-12-01', 'FDD Yayınları', '1.kat', 10, 0, 0, '0000-00-00', 1, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konubaslik`
--

CREATE TABLE IF NOT EXISTS `konubaslik` (
  `ISBN` int(20) NOT NULL,
  `KonuBaslik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `konubaslik`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `multimedya`
--

CREATE TABLE IF NOT EXISTS `multimedya` (
  `ISBN` int(20) NOT NULL,
  `MultAd` varchar(20) NOT NULL,
  `UyeNo` int(20) NOT NULL,
  `DilNo` int(20) NOT NULL,
  `UrunAdet` int(20) NOT NULL,
  `FirmaNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `multimedya`
--

INSERT INTO `multimedya` (`ISBN`, `MultAd`, `UyeNo`, `DilNo`, `UrunAdet`, `FirmaNo`) VALUES
(1010, 'IngilizceEgitimSeti', 0, 0, 0, 0),
(1011, 'ArapcaEgitimSeti', 0, 0, 0, 0),
(1012, 'FransızcaEgitimSeti', 0, 0, 0, 0),
(1013, 'AlmancaEgitimSeti', 0, 0, 0, 0),
(1014, 'CinceEgitimSeti', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notlar`
--

CREATE TABLE IF NOT EXISTS `notlar` (
  `ISBN` int(20) NOT NULL,
  `Notlar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `notlar`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `odunc`
--

CREATE TABLE IF NOT EXISTS `odunc` (
  `UyeNo` int(20) NOT NULL,
  `ISBN` int(20) NOT NULL,
  `AlisTarih` date NOT NULL,
  `IadeTarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `odunc`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sureliyayin`
--

CREATE TABLE IF NOT EXISTS `sureliyayin` (
  `ISBN` int(20) NOT NULL,
  `SureliTur` varchar(20) NOT NULL,
  `SureliYazar` varchar(250) NOT NULL,
  `UyeNo` int(20) NOT NULL,
  `DilNo` int(20) NOT NULL,
  `UrunAdet` int(20) NOT NULL,
  `FirmaNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sureliyayin`
--

INSERT INTO `sureliyayin` (`ISBN`, `SureliTur`, `SureliYazar`, `UyeNo`, `DilNo`, `UrunAdet`, `FirmaNo`) VALUES
(1015, 'Tez', 'OktaySinanoglu', 0, 0, 0, 0),
(1016, 'Dergi', 'Tubitak', 0, 0, 0, 0),
(1017, 'Magazin', 'GuncelHaber', 0, 0, 0, 0),
(1018, 'Makale', 'DoganCuceoglu', 0, 0, 0, 0),
(1019, 'AntikKitap', 'OsmanliTarihi', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `unvan`
--

CREATE TABLE IF NOT EXISTS `unvan` (
  `UnvanNo` int(20) NOT NULL,
  `UnvanAdi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `unvan`
--

INSERT INTO `unvan` (`UnvanNo`, `UnvanAdi`) VALUES
(1, 'Ogrenci'),
(2, 'OgretimGorevlisi'),
(3, 'Yabanci');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye`
--

CREATE TABLE IF NOT EXISTS `uye` (
  `UyeNo` int(20) NOT NULL,
  `Ad` varchar(20) NOT NULL,
  `Soyad` varchar(20) NOT NULL,
  `GSM` varchar(20) NOT NULL,
  `Unvan` int(20) NOT NULL,
  `Adres` varchar(50) NOT NULL,
  `Mail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uye`
--

INSERT INTO `uye` (`UyeNo`, `Ad`, `Soyad`, `GSM`, `Unvan`, `Adres`, `Mail`) VALUES
(1, 'Sevdanur', 'Genc', '5052145635', 1, 'Halıkent Mah.', 'sevdanurgenc@hotmail'),
(2, 'Fadime', 'Ozger', '5624789126', 1, 'Fatih Mah.', 'fadimeozger@hotmail.'),
(3, 'HibaSinem', 'Turhan', '5052314562', 1, 'Otogar Mah.', 'hibasinem@hotmail.co'),
(4, 'Ali ', 'Gunes', '5053219546', 2, 'Isik Mah.', 'aligunes@hotmail.com'),
(5, 'Ecir', 'Kucuksille', '5026541846', 1, 'Toki Evleri', 'euk@hotmail.com'),
(6, 'Efnan', 'Arslan', '5052756236', 3, 'Toki Mah.', 'efnan@hotmail.com'),
(7, 'EfsunTuba', 'Koc', '5052447895', 3, 'Yüksel Mah.', 'efsunkoc@hotmail.com'),
(8, 'Bayram', 'Cetisli', '5625411263', 2, 'Merkez Mah.', 'bayram@hotmail.com'),
(9, 'Sertac', 'Sarica', '5059874563', 2, 'Ulus Mah.', 'sss@hotmail.com'),
(10, 'Melike', 'Bayar', '5262314156', 1, 'Celebiler Mah.', 'melike@hotmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yapitadlari`
--

CREATE TABLE IF NOT EXISTS `yapitadlari` (
  `ISBN` int(20) NOT NULL,
  `YapitAdi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yapitadlari`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazar`
--

CREATE TABLE IF NOT EXISTS `yazar` (
  `YazarAdi` varchar(20) NOT NULL,
  `YazarTipi` int(20) NOT NULL,
  `ISBN` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yazar`
--

