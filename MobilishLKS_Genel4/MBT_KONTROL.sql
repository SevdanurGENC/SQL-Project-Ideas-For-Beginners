if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[MBT_KONTROL]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[MBT_KONTROL]
GO

CREATE TABLE [dbo].[MBT_KONTROL] (
	[ID] [int] IDENTITY (1, 1) NOT NULL 
) ON [PRIMARY]
GO

