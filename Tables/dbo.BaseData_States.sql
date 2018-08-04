CREATE TABLE [dbo].[BaseData_States]
(
[StateID] [int] NOT NULL,
[StateCode] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[StateName] [varchar] (35) COLLATE Latin1_General_BIN NOT NULL,
[CountryID] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[BaseData_States] ADD CONSTRAINT [PK_BaseData_States] PRIMARY KEY CLUSTERED  ([StateID])
GO
CREATE NONCLUSTERED INDEX [CountryID] ON [dbo].[BaseData_States] ([CountryID])
GO
