CREATE TABLE [dbo].[BaseData_Ethnicities]
(
[EthnicityID] [int] NOT NULL,
[EthnicityName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[BaseData_Ethnicities] ADD CONSTRAINT [PK__BaseData__A243ECE04B534886] PRIMARY KEY CLUSTERED  ([EthnicityID])
GO
