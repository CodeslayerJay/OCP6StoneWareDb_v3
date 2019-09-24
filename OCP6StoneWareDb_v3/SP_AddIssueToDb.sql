--===================================
-- Stored Procedure to Seed Issues
--===================================

USE [OCP6StoneWareDB_V3]
GO

CREATE OR ALTER PROCEDURE [dbo].[AddIssueToDb](
	@product_id int, @status_id int, @problem_description varchar(3000), @created_at datetime, 
		@issue_resolution varchar(3000) = null, @date_resolved datetime = null)
AS
BEGIN
	INSERT INTO [Issues](product_id, status_id, problem_description, created_at)
		VALUES(@product_id, @status_id, @problem_description, @created_at)

	IF @issue_resolution IS NOT NULL
	BEGIN
		INSERT INTO [Issue_Resolution]
			VALUES(
				(SELECT SCOPE_IDENTITY()),
				@issue_resolution,
				@date_resolved
			)
	END
END