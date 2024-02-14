-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 032-ordeer-by.sql

SELECT 	
		empno,
		ename,
		deptno,
		hiredate
FROM 
		emp
WHERE
		empno > 7900 OR empno < 7600
ORDER BY 	
		empno ASC;

-- End of file
