CREATE TABLE [dbo].[Results_Category]
(
[CategoryId] [int] NOT NULL,
[Value] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_Category] ADD CONSTRAINT [ok_Category_CategoryId] PRIMARY KEY CLUSTERED  ([CategoryId])
GO
