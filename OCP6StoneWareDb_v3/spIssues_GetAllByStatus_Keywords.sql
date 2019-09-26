--==============================================
-- Get all issues by status and keywords
-- Searches Problem and Resolution Description
-- for keywords
--==============================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetAllByStatus_Keywords(
		@status nvarchar(50) = 'Outstanding', 
		@keywords nvarchar(MAX))
AS
BEGIN
	SELECT * FROM VWIssues_GetAll AS vw
		WHERE status = @status
	AND 
	(
		EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.resolution_description LIKE '%'+Keyword+'%')
		OR EXISTS (SELECT Keyword FROM dbo.fnSplitList(@keywords) WHERE vw.problem_description LIKE '%'+Keyword+'%')
	)
END

--==========================================
--DIFFERENT APPROACH
--SAVE RESULTS INTO A TEMP TABLE, THEN
--QUERY/FILTER TABLE BASED ON PARAMS?
--NEEDS TWEAKED TO REMOVE DUPLICATE RESULTS
--==========================================

--DROP TABLE IF EXISTS #queryResultsTemp
--GO

--CREATE TABLE #queryResultsTemp
--	(
--		issue_id int,
--		product_id int,
--		product nvarchar(50),
--		status nvarchar(20),
--		version numeric(2,1),
--		operating_system nvarchar(20),
--		problem_description nvarchar(max),
--		resolution_description nvarchar(max),
--		created_at datetime,
--		date_resolved datetime,
--		keyword varchar(50)
--	)
--GO

--DECLARE @keywordList varchar(max)
--SET @keywordList = 'User, Day Trader Wannabe, 3G, Buying, Linux';

--INSERT INTO #queryResultsTemp 
--SELECT * FROM VWIssueGetAll
--INNER JOIN
--    dbo.fnSplitList(@keywordList) ON (problem_description LIKE '%'+Keyword+'%')
--	OR
--	(resolution_description LIKE '%'+Keyword+'%')
--WHERE status = 'Resolved'
