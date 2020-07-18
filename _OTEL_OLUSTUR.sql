USE _otel
CREATE TABLE tblMusteriler
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	ad varchar(20) NOT NULL,
	soyad varchar(30) NOT NULL,
	tc varchar(11) NOT NULL
)
CREATE TABLE tblOdaEk
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	tipID int NOT NULL,
	ekID int NOT NULL,
	miktar int NOT NULL
)
CREATE TABLE tblOdaEkOzellik
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	ad varchar(20) NOT NULL,
)
CREATE TABLE tblOdalar
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	oda varchar(20) NOT NULL,
	tip int NOT NULL,
	fiyat int NOT NULL,
	kat int NOT NULL
)
CREATE TABLE tblRezervasyon
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	musteri int NOT NULL,
	oda int NOT NULL,
	gtarih datetime NOT NULL,
	ctarih datetime NOT NULL,
	rtarih datetime NOT NULL,
	tip int NOT NULL,
)
CREATE TABLE tblHizmet
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	ad varchar(20) NOT NULL,
	aciklama text,
	fiyat int NOT NULL,
	stok int NOT NULL,
)
CREATE TABLE tblOdaTip
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	ad varchar(30) NOT NULL,
	kisi int NOT NULL,
	fiyat int NOT NULL
)
CREATE TABLE tblekstralar
(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	rez int NOT NULL,
	hizmet int NOT NULL,
	adet int NOT NULL,
	durum int NOT NULL
)

USE _otel;
INSERT INTO tblekstralar (rez, hizmet, adet, durum) VALUES(18, 1, 1, 1);
INSERT INTO tblekstralar (rez, hizmet, adet, durum) VALUES(18, 2, 2, 2);
INSERT INTO tblekstralar (rez, hizmet, adet, durum) VALUES(8, 1, 1, 1);

INSERT INTO tblhizmet (ad, aciklama, fiyat, stok) VALUES('Kahvaltý Tabaðý', 'Standar Kahvaltý Tabaðý', 10, 100);
INSERT INTO tblhizmet (ad, aciklama, fiyat, stok) VALUES('Açýk Büfe Kahvaltý', 'Açýk Büfe Kahvaltý', 30, 100);

INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('yalcin', 'cengiz', '00000000001');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kenan', 'cengiz', '00000000002');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('Gökhan', 'avsar', '00000000003');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi3', 'kisi3', '00000000017');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi4', 'kisi4', '00000000004');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi5', 'kisi5', '00000000005');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi6', 'kisi6', '00000000006');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi7', 'kisi7', '00000000007');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi8', 'kisi8', '00000000008');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi9', 'kisi9', '00000000009');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi10', 'kisi10', '00000000010');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi11', 'kisi11', '00000000011');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi12', 'kisi12', '00000000012');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('kisi13', 'kisi13', '00000000013');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('asdasd', 'qwdqwd', '00000000014');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('ddddasd1', 'dasdasdas22', '00000000015');
INSERT INTO tblmusteriler (ad, soyad, tc) VALUES('zxczxcv', 'cvbgdf', '00000000016');

INSERT INTO tblodaek (tipID, ekID, miktar) VALUES( 1, 1, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(1, 2, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(2, 2, 2);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(3, 3, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(1, 5, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(3, 1, 2);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(3, 6, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(4, 1, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(4, 3, 1);
INSERT INTO tblodaek (tipID, ekID, miktar) VALUES(4, 5, 1);

INSERT INTO tblodaekozellik (ad) VALUES('Dus');
INSERT INTO tblodaekozellik (ad) VALUES('tek kisilik yatak');
INSERT INTO tblodaekozellik (ad) VALUES('balkon');
INSERT INTO tblodaekozellik (ad) VALUES('buz dolabi');
INSERT INTO tblodaekozellik (ad) VALUES('full mutfak');
INSERT INTO tblodaekozellik (ad) VALUES('ranza');

INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('101', 1, 1, 20);
INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('102', 1, 1, 20);
INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('103', 3, 1, 20);
INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('104', 1, 1, 20);
INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('105', 1, 1, 20);
INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('201', 2, 2, 20);
INSERT INTO tblodalar (oda, tip, kat, fiyat) VALUES('106', 4, 1, 20);

INSERT INTO tblodatip (ad, kisi, fiyat) VALUES('Single', 1, 20);
INSERT INTO tblodatip (ad, kisi, fiyat) VALUES('Double A', 2, 40);
INSERT INTO tblodatip (ad, kisi, fiyat) VALUES('Double B', 2, 50);
INSERT INTO tblodatip (ad, kisi, fiyat) VALUES('Double Lux', 2, 70);

INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 103, '2009-09-01', '2009-09-06', '2009-09-01', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 101, '2009-09-01', '2009-09-02', '2009-09-01', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 102, '2009-08-28', '2009-08-30', '2009-07-07', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 101, '2009-09-02', '2009-09-06', '2009-09-02', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 101, '2009-09-09', '2009-09-12', '2009-09-09', 1);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 105, '2009-09-06', '2009-09-08', '2009-09-06', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 105, '2009-09-06', '2009-09-10', '2009-09-01', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(15, 104, '2009-09-06', '2009-09-07', '2009-09-06', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(14, 106, '2009-09-06', '2009-09-07', '2009-09-06', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(4, 103, '2009-09-07', '2009-09-12', '2009-09-06', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(6, 104, '2009-09-07', '2009-09-12', '2009-09-06', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(13, 106, '2009-09-07', '2009-09-12', '2009-09-07', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(5, 102, '2009-09-10', '2009-09-12', '2009-09-07', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(16, 102, '2009-09-10', '2009-09-12', '2009-09-10', 3);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(11, 101, '2009-09-13', '2009-09-13', '2009-09-10', 2);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(14, 102, '2009-09-13', '2009-09-13', '2009-09-10', 2);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(9, 103, '2009-09-13', '2009-09-13', '2009-09-10', 2);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(8, 104, '2009-09-13', '2009-09-13', '2009-09-10', 2);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(2, 106, '2009-09-13', '2009-09-13', '2009-09-10', 2);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(10, 101, '2009-12-30', '2010-01-03', '2009-09-07', 1);
INSERT INTO tblrezervasyon (musteri, oda, gtarih, ctarih, rtarih, tip) VALUES(5, 201, '2009-10-24', '2009-10-26', '2009-10-24', 2);

CREATE PROCEDURE ekstraYukle AS
	SELECT e.ID,
	(SELECT m.ad FROM tblRezervasyon AS r 
		INNER JOIN tblMusteriler AS m 
		ON r.musteri = m.ID 
		WHERE r.ID = e.rez) 
		AS ad,
	(SELECT m.soyad FROM tblRezervasyon AS r 
		INNER JOIN tblMusteriler AS m 
		ON r.musteri = m.ID 
		WHERE r.ID = e.rez) 
		AS soyad,
	h.ad,e.adet,e.durum 
	FROM tblEkstralar AS e 
	INNER JOIN tblHizmetler AS h 
	ON e.hizmet = h.ID
GO

CREATE PROCEDURE ekstraYukleHizmet @eksHiz Int AS
	SELECT e.ID,
	(SELECT m.ad FROM tblRezervasyon AS r 
		INNER JOIN tblMusteriler AS m 
		ON r.musteri = m.ID 
		WHERE r.ID = e.rez) 
		AS ad,
	(SELECT m.soyad FROM tblRezervasyon AS r 
		INNER JOIN tblMusteriler AS m 
		ON r.musteri = m.ID 
		WHERE r.ID = e.rez) 
		AS soyad,
	h.ad,e.adet,e.durum 
	FROM tblEkstralar AS e 
	INNER JOIN tblHizmetler AS h 
	ON e.hizmet = h.ID
	WHERE e.hizmet=@eksHiz
GO

CREATE PROCEDURE musteriEkle @ad varchar, @soyad varchar, @tc varchar, @mail varchar, @sifre varchar, @adres text, @telefon varchar AS
	INSERT INTO tblMusteriler(ad, soyad, tc, mail, sifre, adres, telefon) VALUES(@ad, @soyad, @tc, @mail, @sifre, @adres, @telefon)
GO

CREATE PROCEDURE odaDurum @gun DateTime, @oda Int AS
	SELECT oda, tip FROM tblRezervasyon 
	WHERE gtarih <= @gun AND ctarih >= @gun AND oda=@oda
GO

CREATE PROCEDURE daSil @oda int AS
	DELETE FROM tblOdalar WHERE oda=@oda
GO

CREATE PROCEDURE rezEkle @mus int, @oda int, @gt DateTime, @ct DateTime, @rt DateTime, @tip int AS
	INSERT INTO TblRezervasyon(musteri,oda,gtarih,ctarih,rtarih,tip) VALUES(@mus,@oda,@gt,@ct,@rt,@tip)
GO

CREATE PROCEDURE odaListe AS
	SELECT ID, oda FROM tblOdalar
GO

CREATE PROCEDURE odaDetay @odaID int AS
	SELECT aciklama FROM tblOdalar WHERE ID=@odaID
GO