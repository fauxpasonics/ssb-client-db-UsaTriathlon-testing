CREATE TABLE [dbo].[Rankings_OverallRanking]
(
[OverallRankingId] [int] NOT NULL,
[UserId] [int] NOT NULL,
[FirstName] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[LastName] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[StateId] [int] NULL,
[State] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[RegionId] [int] NULL,
[Region] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[Age] [int] NOT NULL,
[DivisionId] [int] NOT NULL,
[RaceTypeId] [int] NOT NULL,
[GenderId] [int] NOT NULL,
[Gender] [varchar] (1) COLLATE Latin1_General_BIN NOT NULL,
[Year] [int] NOT NULL,
[OverallScore] [float] NOT NULL,
[GenderOverallScore] [float] NULL,
[FinalOverallScore] [float] NOT NULL,
[HonorAchieved] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[HasEnoughRaces] [bit] NOT NULL,
[IsElite] [bit] NOT NULL,
[MembershipActive] [bit] NOT NULL,
[IsRanked] [bit] NOT NULL,
[NumberOfRaces] [int] NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_OverallRanking] ADD CONSTRAINT [pk_OverallRanking_OverallRankingId] PRIMARY KEY CLUSTERED  ([OverallRankingId])
GO
CREATE NONCLUSTERED INDEX [idx_OverallRankings] ON [dbo].[Rankings_OverallRanking] ([OverallRankingId], [UserId], [FirstName], [LastName], [StateId], [State], [RegionId], [Region], [Age], [GenderId], [Gender], [OverallScore], [GenderOverallScore], [FinalOverallScore], [HonorAchieved], [HasEnoughRaces], [IsElite], [MembershipActive], [NumberOfRaces], [DivisionId], [RaceTypeId], [Year], [IsRanked])
GO
