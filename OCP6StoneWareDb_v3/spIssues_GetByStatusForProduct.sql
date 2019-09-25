-- =======================================================
-- Get all issues for product by status and product name
-- =======================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusForProduct(
		@product_name nvarchar(50), 
		@status nvarchar(20) = null)
AS
BEGIN
	SET NOCOUNT ON;
	IF @status IS NULL
	BEGIN
		SET @status = 'Outstanding';
	END


	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
END
GO
