USE [OCP6StoneWareDB_V3]
GO

DROP TABLE IF EXISTS #queryResultsTemp
GO

CREATE TABLE #queryResultsTemp
	(
		issue_id int,
		product_id int,
		product nvarchar(50),
		status nvarchar(20),
		version numeric(2,1),
		operating_system nvarchar(20),
		problem_description nvarchar(max),
		resolution_description nvarchar(max),
		created_at datetime,
		date_resolved datetime
	)
GO

DECLARE @keywordList varchar(max)
SET @keywordList = '3g';

SELECT * FROM VWIssueGetAll
INNER JOIN
    dbo.fnSplitList(@keywordList) ON (problem_description LIKE '%'+Keyword+'%')
UNION ALL
SELECT * FROM VWIssueGetAll
INNER JOIN
    dbo.fnSplitList(@keywordList) ON (product LIKE '%'+Keyword+'%')
UNION ALL
SELECT * FROM VWIssueGetAll
INNER JOIN
    dbo.fnSplitList(@keywordList) ON (resolution_description LIKE '%'+Keyword+'%')