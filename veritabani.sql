/****** Object:  Table [dbo].[tblKur]    Script Date: 10/01/2013 02:51:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblKur]') AND type in (N'U'))
DROP TABLE [dbo].[tblKur]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/01/2013 02:51:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/01/2013 02:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserName] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[Password] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[RememberMe] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Users] ([UserName], [Password], [RememberMe]) VALUES (N'admin', N'12345', 1)
/****** Object:  Table [dbo].[tblKur]    Script Date: 10/01/2013 02:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblKur]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblKur](
	[Kod] [nvarchar](10) COLLATE Turkish_CI_AS NOT NULL,
	[Isim] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[CurrencyName] [nvarchar](50) COLLATE Turkish_CI_AS NOT NULL,
	[ForexBuying] [float] NULL,
	[ForexSelling] [float] NULL,
	[BanknoteBuying] [float] NULL,
	[BanknoteSelling] [float] NULL,
	[CrossRateUSD] [float] NULL,
	[CrossRateEuro] [float] NULL,
	[CrossRateOther] [float] NULL,
 CONSTRAINT [PK_tblKur] PRIMARY KEY CLUSTERED 
(
	[Kod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
ALTER TABLE [dbo].[tblKur] SET (LOCK_ESCALATION = AUTO)
GO
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'AUD', N'AVUSTRALYA DOLARI', N'AUSTRALIAN DOLL', 1.404, 1.9068, 1.8857, 1.9182, 1.0725, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'CAD', N'KANADA DOLARI', N'CANADIAN DOLLAR', 1.9738, 1.9827, 1.9665, 1.9902, 1.0304, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'CHF', N'İSVİÇRE FRANGI', N'SWISS FRANK', 2.2445, 2.2589, 2.2411, 2.2623, 0.9053, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'DKK', N'DANİMARKA KRONU', N'DANISH KRONE', 0.36818, 0.36998, 0.36792, 0.37083, 5.5228, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'EUR', N'EURO', N'EURO', 2.7502, 2.7552, 2.7483, 2.7593, 0, 0, 1.3505)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'JPY', N'JAPON YENİ', N'YEN', 2.078, 2.0917, 2.0703, 2.0996, 97.77, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'KWD', N'KUVEYT DİNARI', N'KUWAITI DINAR', 7.1516, 7.2452, 7.0443, 7.3539, 0, 0, 3.5315)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'NOK', N'NORVEÇ KRONU', N'NORWEGIAN KRONE', 0.33821, 0.34049, 0.33797, 0.34127, 6.0066, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'SAR', N'SUUDİ ARAB. RİYALİ', N'SAUDI RIYAL', 0.54304, 0.54402, 0.53897, 0.5481, 3.7502, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'SEK', N'İSVEÇ KRONU', N'SWEDISH KRONA', 0.31608, 0.31935, 0.31586, 0.32008, 6.4157, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'USD', N'AMERİKAN DOLARI', N'US DOLLAR', 2.0365, 2.0402, 2.0351, 2.0433, 1, 0, 0)
INSERT [dbo].[tblKur] ([Kod], [Isim], [CurrencyName], [ForexBuying], [ForexSelling], [BanknoteBuying], [BanknoteSelling], [CrossRateUSD], [CrossRateEuro], [CrossRateOther]) VALUES (N'XDR', N'ÖZEL ÇEKME HAKLARI', N'SPECIAL D.RIGHT', 3.1273, 0, 0, 0, 0, 0, 1.53423)
