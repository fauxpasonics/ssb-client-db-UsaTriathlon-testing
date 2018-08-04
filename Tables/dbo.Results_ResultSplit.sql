CREATE TABLE [dbo].[Results_ResultSplit]
(
[ResultSplitId] [int] NOT NULL,
[ResultId] [int] NOT NULL,
[SplitId] [int] NOT NULL,
[Time] [datetime] NULL,
[LegOrder] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_ResultSplit] ADD CONSTRAINT [pk_ResultSplit_ResultSplitId] PRIMARY KEY CLUSTERED  ([ResultSplitId])
GO
