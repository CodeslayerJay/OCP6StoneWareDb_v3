--=============================================================
-- Get all issues for a product by status, version and keywords
--=============================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetByStatusKeywordsVersion_ForProduct(
		@product_name nvarchar(50), 
		@version numeric(2,1), 
		@status nvarchar(50) = 'Outstanding',
		@keywords nvarchar(MAX))
AS
BEGIN
	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
		AND product = @product_name
		AND version = @version
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END
