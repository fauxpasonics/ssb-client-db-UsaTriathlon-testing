CREATE TABLE [dbo].[Rankings_RegionState]
(
[RegionStateId] [int] NOT NULL,
[RegionId] [int] NOT NULL,
[StateId] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_RegionState] ADD CONSTRAINT [pk_RegionState_RegionStateId] PRIMARY KEY CLUSTERED  ([RegionStateId])
GO
