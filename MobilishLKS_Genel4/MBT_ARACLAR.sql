if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_ARACLAR]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_ARACLAR]
GO

CREATE TABLE [dbo].[MBT_ARACLAR] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[PLAKA] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[DEPONO] [int] NULL ,
	[ACIKLAMA] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

