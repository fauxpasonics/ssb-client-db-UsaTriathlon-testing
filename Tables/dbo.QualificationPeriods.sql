CREATE TABLE [dbo].[QualificationPeriods]
(
[PeriodId] [int] NOT NULL,
[StartDate] [date] NULL,
[EndDate] [date] NULL,
[QualifyingYear] [int] NULL,
[ETL_Sync_DeltaHashKey] [binary] (32) NULL
)
GO
ALTER TABLE [dbo].[QualificationPeriods] ADD CONSTRAINT [PK_QualificationPeriods] PRIMARY KEY CLUSTERED  ([PeriodId])
GO
