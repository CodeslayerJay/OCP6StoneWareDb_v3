-- ============================================================
-- Get all issues/versions for product by daterange and status
-- ============================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByDateForProduct(@product_name nvarchar(50), @status nvarchar(20) = 'Outstanding',
	@start_date date = '2010-01-01', @end_date date = null)
AS
BEGIN
	SET NOCOUNT ON;

	IF @end_date IS NULL
	BEGIN
		SET @end_date = GETDATE()
	END

	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
	AND product = @product_name
	AND created_at BETWEEN @start_date AND @end_date
END
GO
