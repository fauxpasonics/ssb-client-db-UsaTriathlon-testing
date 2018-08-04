CREATE TABLE [dbo].[WebService_OneDayLicense]
(
[LicenseId] [int] NOT NULL,
[LicenseCode] [varchar] (200) COLLATE Latin1_General_BIN NULL,
[FirstName] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[MiddleName] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[LastName] [varchar] (100) COLLATE Latin1_General_BIN NULL,
[Email] [varchar] (200) COLLATE Latin1_General_BIN NULL,
[PhoneNumber] [varchar] (13) COLLATE Latin1_General_BIN NULL,
[Address] [varchar] (500) COLLATE Latin1_General_BIN NULL,
[Address2] [varchar] (500) COLLATE Latin1_General_BIN NULL,
[City] [varchar] (500) COLLATE Latin1_General_BIN NULL,
[StateId] [int] NULL,
[ZipCode] [varchar] (10) COLLATE Latin1_General_BIN NULL,
[BirthDate] [datetime] NULL,
[Gender] [char] (1) COLLATE Latin1_General_BIN NULL,
[LicenseType] [varchar] (5) COLLATE Latin1_General_BIN NULL,
[SignedWaiver] [bit] NULL,
[WaiverDate] [datetime] NULL,
[UpgradedMembershipId] [int] NULL,
[UpgradeDate] [datetime] NULL,
[CountryId] [int] NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[WebService_OneDayLicense] ADD CONSTRAINT [pk_LicenseId] PRIMARY KEY CLUSTERED  ([LicenseId])
GO
CREATE NONCLUSTERED INDEX [IX_OneDayLicense] ON [dbo].[WebService_OneDayLicense] ([LicenseCode])
GO
