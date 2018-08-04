CREATE TABLE [dbo].[Rankings_Region]
(
[RegionId] [int] NOT NULL,
[RegionName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_Region] ADD CONSTRAINT [pk_Region_RegionId] PRIMARY KEY CLUSTERED  ([RegionId])
GO
