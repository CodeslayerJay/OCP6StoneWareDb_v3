-- ========================================================================
-- Get all issues for product by status, product name, and version number
-- ========================================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatus_ForProductAndVersion(
	@product_name nvarchar(50), @version numeric(2,1), @status nvarchar(20) = 'Outstanding')
AS
BEGIN
	SET NOCOUNT ON;
	
	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
	AND version = @version
END
GO
