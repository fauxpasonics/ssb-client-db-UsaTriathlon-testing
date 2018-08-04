CREATE TABLE [dbo].[BaseData_MaritalStatus]
(
[MaritalStatusID] [int] NOT NULL,
[MaritalStatusName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[BaseData_MaritalStatus] ADD CONSTRAINT [PK__BaseData__C8B1BA5224D88946] PRIMARY KEY CLUSTERED  ([MaritalStatusID])
GO
