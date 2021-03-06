if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_KAMPANYALAR]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_KAMPANYALAR]
GO

CREATE TABLE [dbo].[MBT_KAMPANYALAR] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[BARKODURUN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKKODUURUN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKADIURUN] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BIRIMURUN] [int] NULL ,
	[BIRIMURUNADI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MIKTARURUN] [float] NULL ,
	[BARKODHEDIYE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKKODUHEDIYE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKADIHEDIYE] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BIRIMHEDIYE] [int] NULL ,
	[BIRIMHEDIYEADI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MIKTARHEDIYE] [float] NULL ,
	[ISKONTO] [float] NULL ,
	[BASLANGICTARIHI] [datetime] NULL ,
	[BITISTARIHI] [datetime] NULL ,
	[TABANFIYAT] [float] NULL ,
	[KATEGORIKODU] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KATEGORIISMI] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KATEGORIMI] [bit] NULL ,
	[AKTIF] [bit] NULL 
) ON [PRIMARY]
GO

