CREATE TABLE [dbo].[BaseData_IncomeLevels]
(
[IncomeLevelID] [int] NOT NULL,
[MinLevel] [int] NULL,
[MaxLevel] [int] NULL
)
GO
ALTER TABLE [dbo].[BaseData_IncomeLevels] ADD CONSTRAINT [PK__BaseData__57635F7EF3444FBC] PRIMARY KEY CLUSTERED  ([IncomeLevelID])
GO
