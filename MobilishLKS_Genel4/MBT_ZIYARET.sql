if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_ZIYARET]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_ZIYARET]
GO

CREATE TABLE [dbo].[MBT_ZIYARET] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[TARIH] [datetime] NULL ,
	[CARIKODU] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEMSILCIKODU] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BASLANGICSAATI] [datetime] NULL ,
	[BITISSAATI] [datetime] NULL ,
	[KM] [float] NULL ,
	[TAMAMLANDIMI] [bit] NULL ,
	[YETKILIISMI] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ACIKLAMA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GONDERILDIMI] [bit] NULL 
) ON [PRIMARY]
GO

