-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 026-where.sql

SELECT  ename AS "Employee"
		, sal AS "Monthly Salary"
FROM emp
WHERE sal > 1500 AND (deptno = 10 OR deptno = 30);

-- End of file
