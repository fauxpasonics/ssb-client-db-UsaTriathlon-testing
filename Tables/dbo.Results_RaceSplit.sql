CREATE TABLE [dbo].[Results_RaceSplit]
(
[RaceSplitId] [int] NOT NULL,
[RaceId] [int] NOT NULL,
[SplitId] [int] NOT NULL,
[LegOrder] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_RaceSplit] ADD CONSTRAINT [pk_RaceSplit_RaceSplitId] PRIMARY KEY CLUSTERED  ([RaceSplitId])
GO
