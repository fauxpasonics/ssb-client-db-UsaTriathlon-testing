CREATE TABLE [dbo].[Rankings_USATDivision]
(
[DivisionId] [int] NOT NULL,
[MinimumAge] [int] NOT NULL,
[MaximumAge] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_USATDivision] ADD CONSTRAINT [pk_USATDivision_DivisionId] PRIMARY KEY CLUSTERED  ([DivisionId])
GO
