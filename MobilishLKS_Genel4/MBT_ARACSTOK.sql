if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_ARACSTOK]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_ARACSTOK]
GO

CREATE TABLE [dbo].[MBT_ARACSTOK] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[STOKID] [int] NULL ,
	[STOKKODU] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKADI] [nvarchar] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BARKOD] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MIKTAR] [float] NULL ,
	[BIRIM] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BIRIMID] [int] NULL ,
	[TARIH] [datetime] NULL ,
	[PLASIYERID] [int] NULL 
) ON [PRIMARY]
GO

