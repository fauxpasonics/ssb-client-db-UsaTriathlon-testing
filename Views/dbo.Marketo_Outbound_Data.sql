SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Marketo_Outbound_Data]
AS
SELECT m.SSB_CRMSYSTEM_CONTACT_ID AS [SSB ID], SourceSystem, SSID AS [Member Number],
FirstName, LastName, PhonePrimary, m.PhoneHome, m.PhoneCell, m.PhoneBusiness, 
EmailPrimary, t.IsTerminated, t.Ethnicity, t.region, t.[Income Level], t.[Education Level], t.[Marital Status], t.occupationname,
AddressPrimaryStreet, AddressPrimaryCity, AddressPrimaryState, AddressPrimaryZip, Gender, Birthday, DATEDIFF(yy,Birthday,GETDATE()) AS [Age],
t.[Profile Termination Date], t.[PU Termination Date], t.[Membership Date], DATEDIFF(dd,t.[Membership Date],GETDATE()) AS [Days As Member], ISNULL(lic.[Number of Licenses],0) AS [Number of Licenses],
CASE WHEN ISNULL(lic.[Number of Licenses],0) > 0 THEN 1 ELSE 0 END AS [License Holder who upgraded]
FROM dbo.vwDimCustomer_ModAcctId m
LEFT OUTER JOIN 
(
SELECT pro.UserID, pro.TerminationDT AS [Profile Termination Date], pu.TerminationDT AS [PU Termination Date], pro.CreationDT AS [Membership Date],
pu.IsTerminated, pro.ERelationship, r.[regionname] AS [Region], e.ethnicityname AS [Ethnicity],
CONCAT(MinLevel,'-',MaxLevel) AS [Income Level], edu.EducationLevelName AS [Education Level], m.MaritalStatusName AS [Marital Status], o.occupationname
FROM dbo.MMS_Profile pro WITH (NOLOCK)
INNER JOIN dbo.Portal_Users pu WITH (NOLOCK)
	ON pro.UserID = pu.UserID
LEFT JOIN dbo.BaseData_Regions r ON r.regionid = pro.RegionID
LEFT JOIN dbo.BaseData_Ethnicities e ON e.ethnicityId = pro.EthnicityID
LEFT JOIN dbo.BaseData_IncomeLevels i ON i.IncomeLevelID = pro.IncomeLevelID
LEFT JOIN dbo.BaseData_EducationLevels edu ON edu.EducationLevelID = pro.EducationLevelID
LEFT JOIN dbo.BaseData_MaritalStatus m ON m.MaritalStatusId = pro.MaritalStatusID
LEFT JOIN dbo.BaseData_Occupations o ON o.occupationId = pro.OccupationID
) t ON m.SSID = t.UserID
LEFT OUTER JOIN 
(
SELECT m.SSB_CRMSYSTEM_CONTACT_ID, COUNT(ssid) AS [Number of Licenses]
FROM dbo.vwDimCustomer_ModAcctId m
WHERE m.SourceSystem = 'Licenses' OR m.SourceSystem = 'Licenses_upgraded'
GROUP BY m.SSB_CRMSYSTEM_CONTACT_ID
) lic ON lic.SSB_CRMSYSTEM_CONTACT_ID = m.SSB_CRMSYSTEM_CONTACT_ID
WHERE SourceSystem = 'Membership'
AND m.EmailPrimary <> ''
GO
