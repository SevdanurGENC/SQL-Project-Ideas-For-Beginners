if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_KULLANICILAR]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_KULLANICILAR]
GO

CREATE TABLE [dbo].[MBT_KULLANICILAR] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[KULLANICIADI] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CODE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ADI] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SIFRE] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[YONETICIMI] [bit] NULL ,
	[AKTIF] [bit] NULL 
) ON [PRIMARY]
GO

