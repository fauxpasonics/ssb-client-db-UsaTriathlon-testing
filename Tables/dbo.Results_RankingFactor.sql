CREATE TABLE [dbo].[Results_RankingFactor]
(
[RankingFactorId] [int] NOT NULL,
[RaceTypeId] [int] NOT NULL,
[DistanceId] [int] NOT NULL,
[MinimumNumber] [int] NOT NULL,
[MaximumNumber] [int] NOT NULL,
[FactorPercent] [float] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_RankingFactor] ADD CONSTRAINT [pk_RankingFactor_RankingFactorId] PRIMARY KEY CLUSTERED  ([RankingFactorId])
GO
