CREATE TABLE [dbo].[Rankings_State]
(
[StateId] [int] NOT NULL,
[StateName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[StateCode] [varchar] (5) COLLATE Latin1_General_BIN NULL,
[CountryId] [int] NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Rankings_State] ADD CONSTRAINT [pk_State_StateId] PRIMARY KEY CLUSTERED  ([StateId])
GO
