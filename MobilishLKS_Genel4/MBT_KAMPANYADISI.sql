if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_KAMPANYADISI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_KAMPANYADISI]
GO

CREATE TABLE [dbo].[MBT_KAMPANYADISI] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[KAMPANYAREF] [int] NULL ,
	[STOCKREF] [int] NULL ,
	[BARKOD] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO

