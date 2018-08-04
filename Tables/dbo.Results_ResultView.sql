CREATE TABLE [dbo].[Results_ResultView]
(
[ResultId] [int] NOT NULL,
[RaceId] [int] NOT NULL,
[FirstName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[LastName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[MemberId] [int] NULL,
[City] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[State] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[BirthDate] [datetime] NULL,
[Age] [int] NULL,
[Gender] [varchar] (10) COLLATE Latin1_General_BIN NULL,
[Email] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[Category] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[Leg] [varchar] (20) COLLATE Latin1_General_BIN NULL,
[LegTime] [datetime] NULL,
[LegOrder] [int] NULL,
[TotalTime] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[Score] [float] NULL,
[IsPaceSetter] [bit] NOT NULL,
[ExcludePaceSetter] [bit] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
CREATE NONCLUSTERED INDEX [idx_MemberResults] ON [dbo].[Results_ResultView] ([MemberId])
GO
CREATE NONCLUSTERED INDEX [idx_ResultsByRace] ON [dbo].[Results_ResultView] ([ResultId], [FirstName], [LastName], [MemberId], [City], [State], [BirthDate], [Age], [Gender], [Email], [Category], [Leg], [LegTime], [LegOrder], [TotalTime], [Score], [IsPaceSetter], [ExcludePaceSetter], [RaceId])
GO
