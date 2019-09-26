--=========================================================================
-- Get all issues for a product by status, date range, version and keywords
--==========================================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusKeywordsDate_ForProductSingleVersion(
		@product_name nvarchar(50),
		@version numeric(2,1), 
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX),
		@start_date date = '2010-01-01',
		@end_date date = null)
AS
BEGIN
	IF @end_date IS NULL
	BEGIN
		SET @end_date = GetDate()
	END

	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
		AND product = @product_name
		AND version = @version
		AND created_at BETWEEN @start_date AND @end_date
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END
