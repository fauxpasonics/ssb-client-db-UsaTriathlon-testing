CREATE TABLE [dbo].[Rankings_Gender]
(
[GenderId] [int] NOT NULL,
[Value] [varchar] (6) COLLATE Latin1_General_BIN NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_Gender] ADD CONSTRAINT [pk_Gender_GenderId] PRIMARY KEY CLUSTERED  ([GenderId])
GO
