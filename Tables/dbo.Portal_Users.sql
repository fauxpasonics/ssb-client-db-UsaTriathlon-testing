CREATE TABLE [dbo].[Portal_Users]
(
[UserID] [int] NOT NULL,
[Password] [nvarchar] (100) COLLATE Latin1_General_BIN NULL,
[Email] [nvarchar] (100) COLLATE Latin1_General_BIN NULL,
[EmailVerified] [bit] NOT NULL,
[BadEmail] [bit] NULL,
[HasEnteredSystem] [bit] NOT NULL,
[OldUserID] [int] NULL,
[SourceDB] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[CreationUserID] [int] NOT NULL,
[TerminationUserID] [int] NULL,
[CreationDT] [datetime] NOT NULL,
[TerminationDT] [datetime] NOT NULL,
[UserName] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[IsTerminated] [bit] NOT NULL,
[SecurityStamp] [nchar] (254) COLLATE Latin1_General_BIN NULL,
[PhoneNumber] [nvarchar] (50) COLLATE Latin1_General_BIN NULL,
[PhoneNumberConfirmed] [bit] NOT NULL,
[TwoFactorEnabled] [bit] NOT NULL,
[LockoutEnabled] [bit] NOT NULL,
[LockoutEndDateUtc] [datetime] NULL,
[AccessFailedCount] [int] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Portal_Users] ADD CONSTRAINT [pk_UserID_Portal_Users] PRIMARY KEY CLUSTERED  ([UserID])
GO
CREATE NONCLUSTERED INDEX [Idx_Email] ON [dbo].[Portal_Users] ([Email])
GO
CREATE NONCLUSTERED INDEX [ix_Portal_Users_CreationDT_TermainationDT] ON [dbo].[Portal_Users] ([UserID], [Password], [Email], [EmailVerified], [HasEnteredSystem], [CreationDT], [TerminationDT])
GO
CREATE NONCLUSTERED INDEX [IX_UserName] ON [dbo].[Portal_Users] ([UserName])
GO
