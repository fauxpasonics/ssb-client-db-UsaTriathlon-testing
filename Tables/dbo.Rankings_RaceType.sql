CREATE TABLE [dbo].[Rankings_RaceType]
(
[RaceTypeId] [int] NOT NULL,
[Value] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_RaceType] ADD CONSTRAINT [pk_RaceType_RaceTypeId] PRIMARY KEY CLUSTERED  ([RaceTypeId])
GO
