CREATE TABLE [dbo].[WebService_AccountCreationResult]
(
[ResultId] [int] NOT NULL,
[EventId] [int] NULL,
[LicenseId] [int] NULL,
[MemberId] [int] NULL,
[System] [varchar] (200) COLLATE Latin1_General_BIN NOT NULL,
[ConfirmationCode] [varchar] (500) COLLATE Latin1_General_BIN NULL,
[ResultDate] [datetime] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[WebService_AccountCreationResult] ADD CONSTRAINT [pk_ResultId] PRIMARY KEY CLUSTERED  ([ResultId])
GO
CREATE NONCLUSTERED INDEX [IX_AccountCreationResult] ON [dbo].[WebService_AccountCreationResult] ([EventId])
GO
