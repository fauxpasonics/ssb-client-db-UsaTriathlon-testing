CREATE TABLE [dbo].[Results_Division]
(
[DivisionId] [int] NOT NULL,
[MinimumAge] [int] NOT NULL,
[MaximumAge] [int] NOT NULL,
[RaceId] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_Division] ADD CONSTRAINT [pk_Division_DivisionId] PRIMARY KEY CLUSTERED  ([DivisionId])
GO
CREATE NONCLUSTERED INDEX [idx_Divisions] ON [dbo].[Results_Division] ([DivisionId], [RaceId], [MinimumAge], [MaximumAge])
GO
