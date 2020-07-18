if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_TAHSILATLISTESI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_TAHSILATLISTESI]
GO

CREATE TABLE [dbo].[MBT_TAHSILATLISTESI] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[LOGICALREF] [int] NULL ,
	[DEFINITION_] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[RISKTOTAL] [float] NULL 
) ON [PRIMARY]
GO

