-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-14
-- File: 033-ordeer-by.sql

SELECT
	deptno AS Dept,
    ename AS Employee,
    sal * 0.31 AS Taxes
FROM
    emp
WHERE
    deptno = 10
ORDER BY
    deptno ASC,
    ename ASC;

-- End of file
