if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_TAHSILATLAR]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_TAHSILATLAR]
GO

CREATE TABLE [dbo].[MBT_TAHSILATLAR] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[FATURANO] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CARIKODU] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CARIADI] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[MAKBUZNO] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TARIH] [datetime] NULL ,
	[EVRAKSERI] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[EVRAKSERINO] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KESIDEEDEN] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[BANKA] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[SUBE] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[CEKNO] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[VADE] [datetime] NULL ,
	[TUTARI] [float] NULL ,
	[TIP] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[KEFIL] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[TEMSILCIKODU] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[GONDERILDIMI] [bit] NULL 
) ON [PRIMARY]
GO

