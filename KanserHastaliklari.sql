/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Branslar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Branslar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] DROP CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Branslar]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Kullanicilar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] DROP CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Kullanicilar]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Poliklinikler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Poliklinikler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] DROP CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Poliklinikler]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] DROP CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Sehirler]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Tedaviler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Tedaviler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] DROP CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Tedaviler]
GO
/****** Object:  ForeignKey [FK_Tbl_Hastalar_Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Hastalar_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]'))
ALTER TABLE [dbo].[Tbl_Hastalar] DROP CONSTRAINT [FK_Tbl_Hastalar_Tbl_Sehirler]
GO
/****** Object:  ForeignKey [FK_Tbl_Hastalar_Tbl_Tedaviler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Hastalar_Tbl_Tedaviler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]'))
ALTER TABLE [dbo].[Tbl_Hastalar] DROP CONSTRAINT [FK_Tbl_Hastalar_Tbl_Tedaviler]
GO
/****** Object:  ForeignKey [FK_Tbl_Kullanicilar_Tbl_Yetkiler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Kullanicilar_Tbl_Yetkiler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]'))
ALTER TABLE [dbo].[Tbl_Kullanicilar] DROP CONSTRAINT [FK_Tbl_Kullanicilar_Tbl_Yetkiler]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Branslar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Branslar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] DROP CONSTRAINT [FK_Tbl_Personeller_Tbl_Branslar]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Kullanicilar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] DROP CONSTRAINT [FK_Tbl_Personeller_Tbl_Kullanicilar]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Kullanicilar1]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Kullanicilar1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] DROP CONSTRAINT [FK_Tbl_Personeller_Tbl_Kullanicilar1]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] DROP CONSTRAINT [FK_Tbl_Personeller_Tbl_Sehirler]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Ameliyatlar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Ameliyatlar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Ameliyatlar]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Ilaclar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Ilaclar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Ilaclar]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Kurumlar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Kurumlar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Kurumlar]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Rontgenler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Rontgenler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Rontgenler]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Tahliller]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Tahliller]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Tahliller]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Teshisler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Teshisler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Teshisler]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] DROP CONSTRAINT [FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Doktorlar]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Hastalar]
GO
/****** Object:  Table [dbo].[Tbl_Personeller]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Personeller]
GO
/****** Object:  Table [dbo].[Tbl_Tedaviler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Tedaviler]
GO
/****** Object:  Table [dbo].[Tbl_Kullanicilar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Kullanicilar]
GO
/****** Object:  Table [dbo].[Tbl_Kurumlar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Kurumlar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Kurumlar]
GO
/****** Object:  Table [dbo].[Tbl_Teshisler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Teshisler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Teshisler]
GO
/****** Object:  Table [dbo].[Tbl_YatanHastaOdalari]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_YatanHastaOdalari]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_YatanHastaOdalari]
GO
/****** Object:  Table [dbo].[Tbl_Yetkiler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Yetkiler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Yetkiler]
GO
/****** Object:  Table [dbo].[Tbl_Poliklinikler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Poliklinikler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Poliklinikler]
GO
/****** Object:  Table [dbo].[Tbl_Rontgenler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Rontgenler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Rontgenler]
GO
/****** Object:  Table [dbo].[Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Sehirler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Sehirler]
GO
/****** Object:  Table [dbo].[Tbl_Tahliller]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Tahliller]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Tahliller]
GO
/****** Object:  Table [dbo].[Tbl_Ilaclar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Ilaclar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Ilaclar]
GO
/****** Object:  Table [dbo].[Tbl_KanserHastaliklariListesi]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_KanserHastaliklariListesi]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_KanserHastaliklariListesi]
GO
/****** Object:  Table [dbo].[Tbl_Ameliyatlar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Ameliyatlar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Ameliyatlar]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 05/02/2013 19:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Branslar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Branslar]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Branslar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Branslar](
	[BransKodu] [int] NOT NULL,
	[BransAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Branslar] PRIMARY KEY CLUSTERED 
(
	[BransKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Ameliyatlar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Ameliyatlar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Ameliyatlar](
	[AmeliyatKodu] [int] NOT NULL,
	[AmeliyatAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Ameliyatlar] PRIMARY KEY CLUSTERED 
(
	[AmeliyatKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_KanserHastaliklariListesi]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_KanserHastaliklariListesi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_KanserHastaliklariListesi](
	[KanserKodu] [int] NOT NULL,
	[KanserAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TeshisKodu] [int] NULL,
 CONSTRAINT [PK_Tbl_KanserHastaliklariListesi] PRIMARY KEY CLUSTERED 
(
	[KanserKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Ilaclar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Ilaclar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Ilaclar](
	[IlacKodu] [int] NOT NULL,
	[IlacAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IlacFiyati] [int] NULL,
	[IlacAdedi] [int] NULL,
 CONSTRAINT [PK_Tbl_Ilaclar] PRIMARY KEY CLUSTERED 
(
	[IlacKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Tahliller]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Tahliller]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Tahliller](
	[TahlilKodu] [int] NOT NULL,
	[TahlilAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TahlilFiyati] [int] NULL,
 CONSTRAINT [PK_Tbl_Tahliller] PRIMARY KEY CLUSTERED 
(
	[TahlilKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Sehirler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Sehirler](
	[SehirKodu] [int] NOT NULL,
	[SehirAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Sehirler] PRIMARY KEY CLUSTERED 
(
	[SehirKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Rontgenler]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Rontgenler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Rontgenler](
	[RontgenKodu] [int] NOT NULL,
	[RontgenAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[RontgenFiyati] [int] NULL,
 CONSTRAINT [PK_Tbl_Rontgenler] PRIMARY KEY CLUSTERED 
(
	[RontgenKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Poliklinikler]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Poliklinikler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Poliklinikler](
	[PoliklinikKodu] [int] NOT NULL,
	[PoliklinikAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Poliklinikler] PRIMARY KEY CLUSTERED 
(
	[PoliklinikKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Yetkiler]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Yetkiler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Yetkiler](
	[YetkiKodu] [int] NOT NULL,
	[YetkiAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Yetkiler] PRIMARY KEY CLUSTERED 
(
	[YetkiKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_YatanHastaOdalari]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_YatanHastaOdalari]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_YatanHastaOdalari](
	[OdaKodu] [int] NOT NULL,
	[OdaAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Birimi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_YatanHastaOdalari] PRIMARY KEY CLUSTERED 
(
	[OdaKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Teshisler]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Teshisler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Teshisler](
	[TeshisKodu] [int] NOT NULL,
	[TeshisAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Teshisler] PRIMARY KEY CLUSTERED 
(
	[TeshisKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Kurumlar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Kurumlar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Kurumlar](
	[KurumKodu] [int] NOT NULL,
	[KurumAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Kurumlar] PRIMARY KEY CLUSTERED 
(
	[KurumKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Kullanicilar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Kullanicilar](
	[KullaniciKodu] [int] NOT NULL,
	[YetkiKodu] [int] NULL,
	[Adi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Soyadi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[KullaniciAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sifre] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Tedaviler]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Tedaviler](
	[TedaviKodu] [int] NOT NULL,
	[HastaKodu] [int] NULL,
	[DoktorID] [int] NULL,
	[TeshisKodu] [int] NULL,
	[KurumKodu] [int] NULL,
	[KanserKodu] [int] NULL,
	[IlacKodu] [int] NULL,
	[TahlilKodu] [int] NULL,
	[RontgenKodu] [int] NULL,
	[AmeliyatKodu] [int] NULL,
	[YatanHastaKodu] [int] NULL,
	[TahlilTarihi] [datetime] NULL,
	[AmeliyatTarihi] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Tedaviler] PRIMARY KEY CLUSTERED 
(
	[TedaviKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Personeller]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Personeller](
	[SicilNo] [int] NULL,
	[TcNo] [int] NOT NULL,
	[BransID] [int] NULL,
	[KullaniciKodu] [int] NULL,
	[PersonelAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PersonelSoyadi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adres] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telefon] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SehirID] [int] NULL,
	[DogumYeri] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DogumTarihi] [date] NULL,
 CONSTRAINT [PK_Tbl_Personeller] PRIMARY KEY CLUSTERED 
(
	[TcNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Hastalar](
	[TcNo] [int] NOT NULL,
	[HastaKodu] [int] NULL,
	[HastaAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HastaSoyadi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adres] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SehirID] [int] NULL,
	[DogumYeri] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DogumTarihi] [date] NULL,
 CONSTRAINT [PK_Tbl_Hastalar] PRIMARY KEY CLUSTERED 
(
	[TcNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 05/02/2013 19:07:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[SicilNo] [int] NULL,
	[TcNo] [int] NOT NULL,
	[BransID] [int] NULL,
	[KullaniciKodu] [int] NULL,
	[PoliklinikKodu] [int] NULL,
	[DoktorID] [int] NULL,
	[DoktorAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DoktorSoyadi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Adres] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telefon] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SehirID] [int] NULL,
	[DogumYeri] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DogumTarihi] [date] NULL,
 CONSTRAINT [PK_Tbl_Doktorlar] PRIMARY KEY CLUSTERED 
(
	[TcNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Branslar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Branslar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Branslar] FOREIGN KEY([BransID])
REFERENCES [dbo].[Tbl_Branslar] ([BransKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Branslar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] CHECK CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Branslar]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Kullanicilar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Kullanicilar] FOREIGN KEY([KullaniciKodu])
REFERENCES [dbo].[Tbl_Kullanicilar] ([KullaniciKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] CHECK CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Kullanicilar]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Poliklinikler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Poliklinikler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Poliklinikler] FOREIGN KEY([PoliklinikKodu])
REFERENCES [dbo].[Tbl_Poliklinikler] ([PoliklinikKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Poliklinikler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] CHECK CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Poliklinikler]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Tbl_Sehirler] ([SehirKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] CHECK CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Sehirler]
GO
/****** Object:  ForeignKey [FK_Tbl_Doktorlar_Tbl_Tedaviler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Tedaviler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Tedaviler] FOREIGN KEY([DoktorID])
REFERENCES [dbo].[Tbl_Tedaviler] ([TedaviKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Doktorlar_Tbl_Tedaviler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Doktorlar]'))
ALTER TABLE [dbo].[Tbl_Doktorlar] CHECK CONSTRAINT [FK_Tbl_Doktorlar_Tbl_Tedaviler]
GO
/****** Object:  ForeignKey [FK_Tbl_Hastalar_Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Hastalar_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]'))
ALTER TABLE [dbo].[Tbl_Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Hastalar_Tbl_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Tbl_Sehirler] ([SehirKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Hastalar_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]'))
ALTER TABLE [dbo].[Tbl_Hastalar] CHECK CONSTRAINT [FK_Tbl_Hastalar_Tbl_Sehirler]
GO
/****** Object:  ForeignKey [FK_Tbl_Hastalar_Tbl_Tedaviler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Hastalar_Tbl_Tedaviler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]'))
ALTER TABLE [dbo].[Tbl_Hastalar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Hastalar_Tbl_Tedaviler] FOREIGN KEY([HastaKodu])
REFERENCES [dbo].[Tbl_Tedaviler] ([TedaviKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Hastalar_Tbl_Tedaviler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Hastalar]'))
ALTER TABLE [dbo].[Tbl_Hastalar] CHECK CONSTRAINT [FK_Tbl_Hastalar_Tbl_Tedaviler]
GO
/****** Object:  ForeignKey [FK_Tbl_Kullanicilar_Tbl_Yetkiler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Kullanicilar_Tbl_Yetkiler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]'))
ALTER TABLE [dbo].[Tbl_Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kullanicilar_Tbl_Yetkiler] FOREIGN KEY([KullaniciKodu])
REFERENCES [dbo].[Tbl_Yetkiler] ([YetkiKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Kullanicilar_Tbl_Yetkiler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]'))
ALTER TABLE [dbo].[Tbl_Kullanicilar] CHECK CONSTRAINT [FK_Tbl_Kullanicilar_Tbl_Yetkiler]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Branslar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Branslar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Personeller_Tbl_Branslar] FOREIGN KEY([BransID])
REFERENCES [dbo].[Tbl_Branslar] ([BransKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Branslar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] CHECK CONSTRAINT [FK_Tbl_Personeller_Tbl_Branslar]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Kullanicilar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Personeller_Tbl_Kullanicilar] FOREIGN KEY([KullaniciKodu])
REFERENCES [dbo].[Tbl_Kullanicilar] ([KullaniciKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] CHECK CONSTRAINT [FK_Tbl_Personeller_Tbl_Kullanicilar]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Kullanicilar1]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Kullanicilar1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Personeller_Tbl_Kullanicilar1] FOREIGN KEY([KullaniciKodu])
REFERENCES [dbo].[Tbl_Kullanicilar] ([KullaniciKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Kullanicilar1]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] CHECK CONSTRAINT [FK_Tbl_Personeller_Tbl_Kullanicilar1]
GO
/****** Object:  ForeignKey [FK_Tbl_Personeller_Tbl_Sehirler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Personeller_Tbl_Sehirler] FOREIGN KEY([SehirID])
REFERENCES [dbo].[Tbl_Sehirler] ([SehirKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Personeller_Tbl_Sehirler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Personeller]'))
ALTER TABLE [dbo].[Tbl_Personeller] CHECK CONSTRAINT [FK_Tbl_Personeller_Tbl_Sehirler]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Ameliyatlar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Ameliyatlar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Ameliyatlar] FOREIGN KEY([AmeliyatKodu])
REFERENCES [dbo].[Tbl_Ameliyatlar] ([AmeliyatKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Ameliyatlar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Ameliyatlar]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Ilaclar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Ilaclar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Ilaclar] FOREIGN KEY([IlacKodu])
REFERENCES [dbo].[Tbl_Ilaclar] ([IlacKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Ilaclar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Ilaclar]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi] FOREIGN KEY([KanserKodu])
REFERENCES [dbo].[Tbl_KanserHastaliklariListesi] ([KanserKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_KanserHastaliklariListesi]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Kurumlar]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Kurumlar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Kurumlar] FOREIGN KEY([KurumKodu])
REFERENCES [dbo].[Tbl_Kurumlar] ([KurumKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Kurumlar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Kurumlar]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Rontgenler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Rontgenler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Rontgenler] FOREIGN KEY([RontgenKodu])
REFERENCES [dbo].[Tbl_Rontgenler] ([RontgenKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Rontgenler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Rontgenler]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Tahliller]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Tahliller]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Tahliller] FOREIGN KEY([TahlilKodu])
REFERENCES [dbo].[Tbl_Tahliller] ([TahlilKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Tahliller]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Tahliller]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_Teshisler]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Teshisler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Teshisler] FOREIGN KEY([TeshisKodu])
REFERENCES [dbo].[Tbl_Teshisler] ([TeshisKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_Teshisler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_Teshisler]
GO
/****** Object:  ForeignKey [FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]    Script Date: 05/02/2013 19:07:40 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari] FOREIGN KEY([YatanHastaKodu])
REFERENCES [dbo].[Tbl_YatanHastaOdalari] ([OdaKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Tedaviler]'))
ALTER TABLE [dbo].[Tbl_Tedaviler] CHECK CONSTRAINT [FK_Tbl_Tedaviler_Tbl_YatanHastaOdalari]
GO
