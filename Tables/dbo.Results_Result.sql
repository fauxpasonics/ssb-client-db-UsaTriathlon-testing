CREATE TABLE [dbo].[Results_Result]
(
[ResultId] [int] NOT NULL,
[RaceId] [int] NOT NULL,
[MemberId] [int] NULL,
[FirstName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[LastName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[City] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[State] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[BirthDate] [datetime] NULL,
[Age] [int] NULL,
[Gender] [varchar] (10) COLLATE Latin1_General_BIN NULL,
[Email] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[Category] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[Time] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[Score] [float] NULL,
[IsPaceSetter] [bit] NOT NULL,
[ExcludePaceSetter] [bit] NOT NULL,
[ZipCode] [varchar] (50) COLLATE Latin1_General_BIN NULL,
[Address] [varchar] (max) COLLATE Latin1_General_BIN NULL,
[CongratsEmailIsSent] [bit] NULL,
[CongratsEmailSentDT] [datetime] NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_Result] ADD CONSTRAINT [pk_Result_ResultId] PRIMARY KEY CLUSTERED  ([ResultId])
GO
