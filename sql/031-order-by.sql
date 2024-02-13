-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 031-ordeer-by.sql

SELECT 	
		e.ename,
		e.sal,
		ROUND(e.sal * 1.15, 2) AS "new salary"
FROM 
		emp e
JOIN 
		emp m ON e.mgr = m.empno
WHERE 
		UPPER(m.ename) = 'BLAKE'
ORDER BY 	
		"new salary" ASC,
		e.ename ASC;
	

-- End of file
