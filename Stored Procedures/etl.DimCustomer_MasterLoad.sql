SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/* Note: DO NOT INCLUDE TM or Ticketing data in this proc currently */

CREATE PROCEDURE [etl].[DimCustomer_MasterLoad]

AS
BEGIN

SELECT 1
-- Members
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'USATriathlon', @LoadView = 'etl.vw_Load_DimCustomer_Membership', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'

-- licenses
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'USATriathlon', @LoadView = ' etl.vw_Load_DimCustomer_Licenses', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'

-- results 
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'USATriathlon', @LoadView = 'etl.vw_Load_DimCustomer_Results', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'


-- licenses_upgraded
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'USATriathlon', @LoadView = ' etl.vw_Load_DimCustomer_Licenses_upgraded', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'

-- Marketo
EXEC mdm.etl.LoadDimCustomer @ClientDB = 'USATriathlon', @LoadView = ' etl.vw_Load_DimCustomer_Marketo', @LogLevel = '0', @DropTemp = '1', @IsDataUploaderSource = '0'


END
 
GO
