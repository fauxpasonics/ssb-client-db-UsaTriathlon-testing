CREATE TABLE [dbo].[Results_Distance]
(
[DistanceId] [int] NOT NULL,
[Value] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_Distance] ADD CONSTRAINT [pk_Distance_DistanceId] PRIMARY KEY CLUSTERED  ([DistanceId])
GO
