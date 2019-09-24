--=================================
--CREATE ROLE THAT HAS ONLY ACCESS
--TO EXECUTING STORE PROCEDURES
--=================================
USE [OCP6StoneWareDB_V3]
GO

CREATE ROLE dbStoredProceduresOnlyAccess
GRANT EXEC TO dbStoredProceduresOnlyAccess