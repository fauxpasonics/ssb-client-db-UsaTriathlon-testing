CREATE TABLE [config].[Element]
(
[ElementID] [int] NOT NULL IDENTITY(1, 1),
[Element] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ElementType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ElementFieldList] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ElementUpdateStatement] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ElementIsCleanField] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Custom] [bit] NULL,
[IsDeleted] [bit] NULL,
[DateCreated] [date] NULL CONSTRAINT [DF__Element__DateCre__49BAA06D] DEFAULT (getdate()),
[DateUpdated] [date] NULL CONSTRAINT [DF__Element__DateUpd__4AAEC4A6] DEFAULT (getdate())
)
GO
ALTER TABLE [config].[Element] ADD CONSTRAINT [PK__Element__A429723A615B1CC1] PRIMARY KEY CLUSTERED  ([ElementID])
GO
