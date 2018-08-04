CREATE TABLE [dbo].[Results_Race]
(
[RaceId] [int] NOT NULL,
[EventId] [int] NOT NULL,
[RaceTypeId] [int] NOT NULL,
[DistanceId] [int] NULL,
[Name] [varchar] (200) COLLATE Latin1_General_BIN NOT NULL,
[Date] [datetime] NOT NULL,
[TextResult] [varchar] (max) COLLATE Latin1_General_BIN NULL,
[ResultsType] [varchar] (10) COLLATE Latin1_General_BIN NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_Race] ADD CONSTRAINT [pk_Race_RaceId] PRIMARY KEY CLUSTERED  ([RaceId])
GO
CREATE NONCLUSTERED INDEX [idx_InitialEvents] ON [dbo].[Results_Race] ([EventId], [RaceTypeId], [ResultsType])
GO
CREATE NONCLUSTERED INDEX [idx_Races] ON [dbo].[Results_Race] ([RaceTypeId], [EventId])
GO
