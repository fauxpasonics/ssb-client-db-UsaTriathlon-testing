CREATE TABLE [dbo].[Portal_Roles]
(
[RoleID] [smallint] NULL,
[PortalID] [smallint] NULL,
[RoleName] [varchar] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoleDescription] [varchar] (42) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RoleEmail] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SportID] [smallint] NULL,
[isSportRole] [smallint] NULL,
[EnableForRegistration] [smallint] NULL,
[EnableForProfile] [smallint] NULL,
[CanAccessDocuments] [smallint] NULL
)
GO
