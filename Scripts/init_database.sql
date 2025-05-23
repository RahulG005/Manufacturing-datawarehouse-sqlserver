

USE master;
GO

-- Drop and recreate the 'Manufacturing_datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Manufacturing_datawarehouse')
BEGIN
    ALTER DATABASE Manufacturing_datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Manufacturing_datawarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE Manufacturing_datawarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
