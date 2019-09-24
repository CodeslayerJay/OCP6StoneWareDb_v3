-- =======================================================
-- Get all issues for all products / versions by status
-- =======================================================
USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE spIssues_GetAllByStatus(@status nvarchar(20) = 'Outstanding')
AS
BEGIN
	SET NOCOUNT ON;
	
	--// GET RESULTS FROM VIEW
	SELECT * FROM [dbo].[vwIssues_GetAll]
	WHERE status = @status
END
GO