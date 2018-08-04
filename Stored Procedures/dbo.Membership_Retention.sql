SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[Membership_Retention]
AS

SELECT CASE WHEN a.member_year < 2018 THEN 'Previous Member' ELSE 'New Member This Year' END AS  'Membership Type',
a.member_year, COUNT(DISTINCT a.SSB_CRMSYSTEM_CONTACT_ID) AS [Total Count]
INTO #mem_summary
FROM 
(
	SELECT MIN(YEAR(SSCreatedDate)) AS member_year ,SSB_CRMSYSTEM_CONTACT_ID
	FROM dbo.vwDimCustomer_ModAcctId
	WHERE SourceSystem = 'Membership'
	GROUP BY SSB_CRMSYSTEM_CONTACT_ID
	HAVING MIN(YEAR(SSCreatedDate)) <= YEAR(GETDATE())
) a
GROUP BY a.member_year


SELECT MIN(YEAR(SSCreatedDate)) AS member_year ,SSB_CRMSYSTEM_CONTACT_ID
INTO #member
	FROM dbo.vwDimCustomer_ModAcctId
	WHERE SourceSystem = 'Membership'
	GROUP BY SSB_CRMSYSTEM_CONTACT_ID
	HAVING MIN(YEAR(SSCreatedDate)) <= YEAR(GETDATE())


SELECT CASE WHEN lic_sum.[year] < 2018 THEN 'Previous License Purchase' ELSE 'First Time License Purchase' END AS  'License Type',
lic_sum.[Year], COUNT(DISTINCT lic_sum.SSB_CRMSYSTEM_CONTACT_ID)
FROM 
(
	SELECT MIN(lic.[Year]) AS [Year], lic.SSB_CRMSYSTEM_CONTACT_ID 
	FROM 
	(
			SELECT YEAR(r.date) AS [Year] ,x.SSB_CRMSYSTEM_CONTACT_ID 
			FROM	dbo.WebService_AccountCreationResult a WITH(NOLOCK) 
			INNER JOIN dbo.WebService_OneDayLicense o WITH(NOLOCK)  ON o.LicenseId = a.LicenseId
			INNER JOIN dbo.Results_Race r WITH(NOLOCK)  ON a.EventId = r.EventId
			INNER JOIN 
			(SELECT SSID, SSB_CRMSYSTEM_CONTACT_ID
			FROM dbo.vwDimCustomer_ModAcctId
			WHERE SourceSystem LIKE 'Licenses' OR SourceSystem LIKE 'Licenses_upgraded'
			) x ON x.SSID = a.LicenseId
	) lic
	WHERE lic.SSB_CRMSYSTEM_CONTACT_ID NOT IN (SELECT DISTINCT SSB_CRMSYSTEM_CONTACT_ID FROM #member)
	GROUP BY lic.SSB_CRMSYSTEM_CONTACT_ID 
) lic_sum
GROUP BY lic_sum.[Year]
GO
