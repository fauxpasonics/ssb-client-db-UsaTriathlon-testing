CREATE TABLE [dbo].[Results_PaceSetterConfiguration]
(
[PaceSetterConfigurationId] [int] NOT NULL,
[Year] [int] NOT NULL,
[TriathlonMinimumNumberOfRaces] [int] NOT NULL,
[DuathlonMinimumNumberOfRaces] [int] NOT NULL,
[AquathlonMinimumNumberOfRaces] [int] NOT NULL,
[TriathlonOffRoadMinimumNumberOfRaces] [int] NOT NULL,
[AquabikeMinimumNumberOfRaces] [int] NOT NULL,
[ExcludeElites] [bit] NOT NULL,
[RequireMembershipActive] [bit] NOT NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[Results_PaceSetterConfiguration] ADD CONSTRAINT [pk_PaceSetterConfiguration_PaceSetterConfigurationId] PRIMARY KEY CLUSTERED  ([PaceSetterConfigurationId])
GO
