CREATE TABLE [dbo].[Results_Split]
(
[SplitId] [int] NOT NULL,
[Value] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_Split] ADD CONSTRAINT [pk_Split_SplitId] PRIMARY KEY CLUSTERED  ([SplitId])
GO
