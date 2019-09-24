--=====================================
-- CREATE VIEW FOR GETTING ISSUES AND
-- JOINING RELATED TABLES
--=====================================
USE [OCP6StoneWareDB_V3]
GO

CREATE VIEW VWIssues_GetAll
AS
SELECT 
		_i.id as issue_id,
		_pd.id AS product_id,
		_pd.name AS product,
		_is.status,
		_v.version,
		_os.name AS operating_system,
		_i.problem_description,
		_ir.resolution_description,
		_i.created_at,
		_ir.date_resolved
	FROM [Issues] _i
		JOIN [Issue_Status] _is ON _is.id = _i.status_id
		JOIN [Products] _p ON _p.id = _i.product_id
		JOIN [Product_Detail] _pd ON _pd.id = _p.product_detail_id
		JOIN [Operating_Systems] _os ON _os.id = _p.os_id
		JOIN [Versions] _v ON _v.id = _p.version_id
		LEFT JOIN [Issue_Resolution] _ir ON _ir.issue_id = _i.id