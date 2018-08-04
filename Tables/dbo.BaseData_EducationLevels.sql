CREATE TABLE [dbo].[BaseData_EducationLevels]
(
[EducationLevelID] [int] NOT NULL,
[EducationLevelName] [nvarchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[BaseData_EducationLevels] ADD CONSTRAINT [PK__BaseData__6F6237AD8B1F34B0] PRIMARY KEY CLUSTERED  ([EducationLevelID])
GO
