CREATE TABLE [dbo].[BaseData_Regions]
(
[RegionID] [int] NOT NULL,
[RegionName] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsRanked] [bit] NULL
)
GO
ALTER TABLE [dbo].[BaseData_Regions] ADD CONSTRAINT [PK__BaseData__ACD84443A473EE47] PRIMARY KEY CLUSTERED  ([RegionID])
GO
