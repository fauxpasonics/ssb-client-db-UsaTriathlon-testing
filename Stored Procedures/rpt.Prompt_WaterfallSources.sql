SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [rpt].[Prompt_WaterfallSources] AS

SELECT 'Total' Value, 'Total' Label
UNION ALL
SELECT
	DISTINCT SourceSystem Value, SourceSystem Label
FROM rpt.Contacts_And_Email_Waterfall_History

GO
