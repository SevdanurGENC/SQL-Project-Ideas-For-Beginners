if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_ARACSTOKDURUM]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_ARACSTOKDURUM]
GO

CREATE TABLE [dbo].[MBT_ARACSTOKDURUM] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[STOKID] [int] NULL ,
	[STOKKODU] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKADI] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BARKOD] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MIKTAR] [float] NULL ,
	[BIRIM] [char] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BIRIMID] [int] NULL ,
	[TARIH] [datetime] NULL ,
	[PLASIYERID] [int] NULL 
) ON [PRIMARY]
GO

