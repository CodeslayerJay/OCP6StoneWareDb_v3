--====================================================
-- Get all issues for a product by status and keywords
--====================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetAllByStatus_KeywordsForProduct(
		@product_name nvarchar(50), 
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX))
AS
BEGIN
	SELECT * FROM VWIssueGetAll AS vw
		WHERE status = @status
		AND product = @product_name
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END
