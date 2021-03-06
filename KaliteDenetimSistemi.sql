/****** Object:  Table [dbo].[Tbl_DenetimPlani]    Script Date: 10/14/2012 04:03:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_DenetimPlani]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_DenetimPlani]
GO
/****** Object:  Table [dbo].[Tbl_DurumBilgisi]    Script Date: 10/14/2012 04:03:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_DurumBilgisi]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_DurumBilgisi]
GO
/****** Object:  Table [dbo].[Tbl_Gorevler]    Script Date: 10/14/2012 04:03:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Gorevler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Gorevler]
GO
/****** Object:  Table [dbo].[Tbl_Personel]    Script Date: 10/14/2012 04:03:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Personel]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Personel]
GO
/****** Object:  Table [dbo].[Tbl_Personel]    Script Date: 10/14/2012 04:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Personel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Personel](
	[ID] [int] NOT NULL,
	[KullaniciAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sifre] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Isim] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Soyisim] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Gorevi] [int] NULL
)
END
GO
INSERT [dbo].[Tbl_Personel] ([ID], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [Gorevi]) VALUES (1, N'Nano1', N'123', N'Sevdanur', N'GENC', 2)
INSERT [dbo].[Tbl_Personel] ([ID], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [Gorevi]) VALUES (2, N'Sam', N'Selcuk', N'Selcuk', N'GENC', 1)
INSERT [dbo].[Tbl_Personel] ([ID], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [Gorevi]) VALUES (3, N'Akcay', N'12', N'Liman', N'AKCAY GENC', 2)
INSERT [dbo].[Tbl_Personel] ([ID], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [Gorevi]) VALUES (4, N'NaGE', N'N12', N'Naim', N'GENC', 1)
INSERT [dbo].[Tbl_Personel] ([ID], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [Gorevi]) VALUES (5, N'FaOz', N'F11', N'Fadime', N'OZGER', 2)
INSERT [dbo].[Tbl_Personel] ([ID], [KullaniciAdi], [Sifre], [Isim], [Soyisim], [Gorevi]) VALUES (6, N'BuTu', N'Bus12', N'Busra', N'TUNCER', 2)
/****** Object:  Table [dbo].[Tbl_Gorevler]    Script Date: 10/14/2012 04:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Gorevler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Gorevler](
	[ID] [int] NOT NULL,
	[Gorevi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[Tbl_Gorevler] ([ID], [Gorevi]) VALUES (1, N'Denetlenen')
INSERT [dbo].[Tbl_Gorevler] ([ID], [Gorevi]) VALUES (2, N'Denetleyen')
/****** Object:  Table [dbo].[Tbl_DurumBilgisi]    Script Date: 10/14/2012 04:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_DurumBilgisi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_DurumBilgisi](
	[ID] [int] NOT NULL,
	[DurumBilgisi] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[Tbl_DurumBilgisi] ([ID], [DurumBilgisi]) VALUES (1, N'Devam Ediyor')
INSERT [dbo].[Tbl_DurumBilgisi] ([ID], [DurumBilgisi]) VALUES (2, N'Onaylandi')
INSERT [dbo].[Tbl_DurumBilgisi] ([ID], [DurumBilgisi]) VALUES (3, N'Duzenleme Gerekiyor')
/****** Object:  Table [dbo].[Tbl_DenetimPlani]    Script Date: 10/14/2012 04:03:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_DenetimPlani]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_DenetimPlani](
	[ID] [int] NOT NULL,
	[DenetimIsmi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DenetmenIsim] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DenetlenenIsim] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Durum] [int] NULL,
	[Tarih] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
END
GO
INSERT [dbo].[Tbl_DenetimPlani] ([ID], [DenetimIsmi], [DenetmenIsim], [DenetlenenIsim], [Durum], [Tarih]) VALUES (1, N'Denetleme001', N'Liman AKCAY GENC', N'Fadime OZGER', 1, N'123')
