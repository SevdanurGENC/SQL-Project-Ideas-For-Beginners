/****** Object:  ForeignKey [FK_Tbl_Kullanicilar_Tbl_Yetkiler]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Kullanicilar_Tbl_Yetkiler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]'))
ALTER TABLE [dbo].[Tbl_Kullanicilar] DROP CONSTRAINT [FK_Tbl_Kullanicilar_Tbl_Yetkiler]
GO
/****** Object:  ForeignKey [FK_Tbl_Sikayetler_Tbl_Kullanicilar]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Sikayetler_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]'))
ALTER TABLE [dbo].[Tbl_Sikayetler] DROP CONSTRAINT [FK_Tbl_Sikayetler_Tbl_Kullanicilar]
GO
/****** Object:  ForeignKey [FK_Tbl_Sikayetler_Tbl_Onaylar]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Sikayetler_Tbl_Onaylar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]'))
ALTER TABLE [dbo].[Tbl_Sikayetler] DROP CONSTRAINT [FK_Tbl_Sikayetler_Tbl_Onaylar]
GO
/****** Object:  Table [dbo].[Tbl_Sikayetler]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Sikayetler]
GO
/****** Object:  Table [dbo].[Tbl_Kullanicilar]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Kullanicilar]
GO
/****** Object:  Table [dbo].[Tbl_Onaylar]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Onaylar]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Onaylar]
GO
/****** Object:  Table [dbo].[Tbl_Yetkiler]    Script Date: 08/09/2013 18:00:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Yetkiler]') AND type in (N'U'))
DROP TABLE [dbo].[Tbl_Yetkiler]
GO
/****** Object:  Table [dbo].[Tbl_Yetkiler]    Script Date: 08/09/2013 18:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Yetkiler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Yetkiler](
	[YetkiKodu] [int] IDENTITY(1,1) NOT NULL,
	[Yetki] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Yetkiler] PRIMARY KEY CLUSTERED 
(
	[YetkiKodu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yetkiler] ON
INSERT [dbo].[Tbl_Yetkiler] ([YetkiKodu], [Yetki]) VALUES (1, N'Admin')
INSERT [dbo].[Tbl_Yetkiler] ([YetkiKodu], [Yetki]) VALUES (2, N'Guest')
SET IDENTITY_INSERT [dbo].[Tbl_Yetkiler] OFF
/****** Object:  Table [dbo].[Tbl_Onaylar]    Script Date: 08/09/2013 18:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Onaylar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Onaylar](
	[OnayID] [int] IDENTITY(1,1) NOT NULL,
	[Onay] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Onaylar] PRIMARY KEY CLUSTERED 
(
	[OnayID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Tbl_Onaylar] ON
INSERT [dbo].[Tbl_Onaylar] ([OnayID], [Onay]) VALUES (1, N'Beklemede')
INSERT [dbo].[Tbl_Onaylar] ([OnayID], [Onay]) VALUES (2, N'Cevaplandi')
SET IDENTITY_INSERT [dbo].[Tbl_Onaylar] OFF
/****** Object:  Table [dbo].[Tbl_Kullanicilar]    Script Date: 08/09/2013 18:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Kullanicilar](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[YetkiID] [int] NULL,
	[KullaniciAdi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Sifre] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Isim] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Soyadi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telefon] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kullanicilar] ON
INSERT [dbo].[Tbl_Kullanicilar] ([KullaniciID], [YetkiID], [KullaniciAdi], [Sifre], [Isim], [Soyadi], [Email], [Telefon]) VALUES (100, 1, N'Admin', N'Admin', N'SYSAdmin', N'SYSAdmin', N'admin@admin.com.tr', N'02123457676')
SET IDENTITY_INSERT [dbo].[Tbl_Kullanicilar] OFF
/****** Object:  Table [dbo].[Tbl_Sikayetler]    Script Date: 08/09/2013 18:00:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tbl_Sikayetler](
	[SikayetID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[SikayetKonu] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SikayetMesaj] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Tarih] [datetime] NULL,
	[Onay] [int] NULL,
	[OnayMesaji] [nvarchar](300) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tbl_Sikayetler] PRIMARY KEY CLUSTERED 
(
	[SikayetID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  ForeignKey [FK_Tbl_Kullanicilar_Tbl_Yetkiler]    Script Date: 08/09/2013 18:00:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Kullanicilar_Tbl_Yetkiler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]'))
ALTER TABLE [dbo].[Tbl_Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Kullanicilar_Tbl_Yetkiler] FOREIGN KEY([YetkiID])
REFERENCES [dbo].[Tbl_Yetkiler] ([YetkiKodu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Kullanicilar_Tbl_Yetkiler]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Kullanicilar]'))
ALTER TABLE [dbo].[Tbl_Kullanicilar] CHECK CONSTRAINT [FK_Tbl_Kullanicilar_Tbl_Yetkiler]
GO
/****** Object:  ForeignKey [FK_Tbl_Sikayetler_Tbl_Kullanicilar]    Script Date: 08/09/2013 18:00:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Sikayetler_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]'))
ALTER TABLE [dbo].[Tbl_Sikayetler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Sikayetler_Tbl_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Tbl_Kullanicilar] ([KullaniciID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Sikayetler_Tbl_Kullanicilar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]'))
ALTER TABLE [dbo].[Tbl_Sikayetler] CHECK CONSTRAINT [FK_Tbl_Sikayetler_Tbl_Kullanicilar]
GO
/****** Object:  ForeignKey [FK_Tbl_Sikayetler_Tbl_Onaylar]    Script Date: 08/09/2013 18:00:09 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Sikayetler_Tbl_Onaylar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]'))
ALTER TABLE [dbo].[Tbl_Sikayetler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Sikayetler_Tbl_Onaylar] FOREIGN KEY([Onay])
REFERENCES [dbo].[Tbl_Onaylar] ([OnayID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tbl_Sikayetler_Tbl_Onaylar]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tbl_Sikayetler]'))
ALTER TABLE [dbo].[Tbl_Sikayetler] CHECK CONSTRAINT [FK_Tbl_Sikayetler_Tbl_Onaylar]
GO
