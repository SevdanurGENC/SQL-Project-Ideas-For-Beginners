if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_ISKONTOLAR]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_ISKONTOLAR]
GO

CREATE TABLE [dbo].[MBT_ISKONTOLAR] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[STOKKODU] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[STOKADI] [nvarchar] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BARKOD] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ISKONTO1] [float] NULL ,
	[ISKONTO2] [float] NULL ,
	[ISKONTO3] [float] NULL ,
	[BASLANGICTARIHI] [datetime] NULL ,
	[BITISTARIHI] [datetime] NULL ,
	[AKTIF] [bit] NULL 
) ON [PRIMARY]
GO

