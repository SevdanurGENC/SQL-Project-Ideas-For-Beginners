-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 21 Aralık 2011 saat 07:39:55
-- Sunucu sürümü: 5.5.8
-- PHP Sürümü: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `hastaneotomasyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pbolumler`
--

CREATE TABLE IF NOT EXISTS `pbolumler` (
  `bolumno` int(100) NOT NULL,
  `bolumad` varchar(100) NOT NULL,
  `katno` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pbolumler`
--

INSERT INTO `pbolumler` (`bolumno`, `bolumad`, `katno`) VALUES
(1, 'Kadın Doğum', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pdoktorbilgi`
--

CREATE TABLE IF NOT EXISTS `pdoktorbilgi` (
  `tcno` varchar(100) NOT NULL,
  `sicilno` varchar(100) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `dogumyer` varchar(100) NOT NULL,
  `dogumtarih` varchar(100) NOT NULL,
  `cinsiyet` varchar(100) NOT NULL,
  `kangrup` varchar(100) NOT NULL,
  `telno` varchar(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bolumno` varchar(100) NOT NULL,
  `kadi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pdoktorbilgi`
--

INSERT INTO `pdoktorbilgi` (`tcno`, `sicilno`, `ad`, `soyad`, `dogumyer`, `dogumtarih`, `cinsiyet`, `kangrup`, `telno`, `adres`, `email`, `bolumno`, `kadi`) VALUES
('27484679096', '951623', 'bilge', 'arslan', 'eskişehir', '29.05.1988', 'kız', '0 rh -', '05059020111', 'çelebiler mh.', 'bilgehanarslan88@hotmail.com', '1', 'bilge');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pgorevlibilgi`
--

CREATE TABLE IF NOT EXISTS `pgorevlibilgi` (
  `tcno` varchar(100) NOT NULL,
  `sicilno` varchar(100) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `dogumtarih` varchar(100) NOT NULL,
  `dogumyer` varchar(100) NOT NULL,
  `cinsiyet` varchar(100) NOT NULL,
  `kangrup` varchar(100) NOT NULL,
  `telno` varchar(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kadi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pgorevlibilgi`
--

INSERT INTO `pgorevlibilgi` (`tcno`, `sicilno`, `ad`, `soyad`, `dogumtarih`, `dogumyer`, `cinsiyet`, `kangrup`, `telno`, `adres`, `email`, `kadi`) VALUES
('27484679095', '951622', 'efnan', 'arslan', '21.02.2102', 'izmir', 'kız', 'b rh +', '05052456894', 'Toki', 'efnan@hotmail.com', 'efnan');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `phastabilgi`
--

CREATE TABLE IF NOT EXISTS `phastabilgi` (
  `tcno` varchar(100) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `soyad` varchar(100) NOT NULL,
  `dogumyer` varchar(100) NOT NULL,
  `dogumtarih` varchar(100) NOT NULL,
  `cinsiyet` varchar(100) NOT NULL,
  `kangrup` varchar(100) NOT NULL,
  `telno` varchar(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kurumno` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `phastabilgi`
--

INSERT INTO `phastabilgi` (`tcno`, `ad`, `soyad`, `dogumyer`, `dogumtarih`, `cinsiyet`, `kangrup`, `telno`, `adres`, `email`, `kurumno`) VALUES
('25489545632', 'tuba', 'arslan', 'erzurum', '26.12.2041', 'kız', 'c rh -', '02021546269', 'Fatih mah', 'tuba@hotmail.com', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pkurumlar`
--

CREATE TABLE IF NOT EXISTS `pkurumlar` (
  `kurumno` int(100) NOT NULL,
  `kurumad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pkurumlar`
--

INSERT INTO `pkurumlar` (`kurumno`, `kurumad`) VALUES
(1, 'doktor'),
(2, 'görevli'),
(3, 'hasta');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `plogin`
--

CREATE TABLE IF NOT EXISTS `plogin` (
  `kadi` varchar(100) NOT NULL,
  `sifre` varchar(100) NOT NULL,
  `yetkiid` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `plogin`
--

INSERT INTO `plogin` (`kadi`, `sifre`, `yetkiid`) VALUES
('bilge', '1', 1),
('bilgeh', '12345', 2),
('bilgehan', '123456', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `prandevu`
--

CREATE TABLE IF NOT EXISTS `prandevu` (
  `hastatcno` varchar(100) NOT NULL,
  `bolumad` varchar(100) NOT NULL,
  `doktorsicilno` varchar(100) NOT NULL,
  `gun` varchar(100) NOT NULL,
  `saat` time NOT NULL,
  `ucret` int(100) NOT NULL,
  `randevuno` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `prandevu`
--


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pyetkiler`
--

CREATE TABLE IF NOT EXISTS `pyetkiler` (
  `yetkiid` int(100) NOT NULL,
  `yetkiadi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pyetkiler`
--

INSERT INTO `pyetkiler` (`yetkiid`, `yetkiadi`) VALUES
(1, 'doktor'),
(2, 'görevli'),
(3, 'hasta');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pyoneticimesaj`
--

CREATE TABLE IF NOT EXISTS `pyoneticimesaj` (
  `mesajno` int(100) NOT NULL,
  `kadi` varchar(100) NOT NULL,
  `mesajkonu` varchar(100) NOT NULL,
  `mesaj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pyoneticimesaj`
--

