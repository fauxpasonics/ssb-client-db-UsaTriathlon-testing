CREATE TABLE [dbo].[BaseData_Countries]
(
[CountryID] [int] NOT NULL,
[CountryName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[2LCode] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[3LCode] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[IOCode] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[IsUSTerritory] [bit] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[BaseData_Countries] ADD CONSTRAINT [PK_BaseData_Countries] PRIMARY KEY CLUSTERED  ([CountryID])
GO
