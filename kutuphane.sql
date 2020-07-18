-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 19 Aralık 2011 saat 01:43:01
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
-- Tablo için tablo yapısı `bolum`
--

CREATE TABLE IF NOT EXISTS `bolum` (
  `BolumNo` int(20) NOT NULL,
  `BolumAd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bolum`
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
  `BolumNo` int(20) NOT NULL,
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
  `BolumNo` int(20) NOT NULL,
  `UyeNo` int(20) NOT NULL,
  `DilNo` int(20) NOT NULL,
  `UrunAdet` int(20) NOT NULL,
  `FirmaNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `multimedya`
--


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
  `SureliAd` int(20) NOT NULL,
  `BolumNo` int(20) NOT NULL,
  `UyeNo` int(20) NOT NULL,
  `DilNo` int(20) NOT NULL,
  `UrunAdet` int(20) NOT NULL,
  `FirmaNo` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sureliyayin`
--


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


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye`
--

CREATE TABLE IF NOT EXISTS `uye` (
  `UyeNo` int(20) NOT NULL,
  `Ad` varchar(20) NOT NULL,
  `Soyad` varchar(20) NOT NULL,
  `Bolum` int(20) NOT NULL,
  `GSM` int(20) NOT NULL,
  `Unvan` int(20) NOT NULL,
  `Adres` varchar(50) NOT NULL,
  `Mail` varchar(20) NOT NULL,
  `Tel` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uye`
--


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

