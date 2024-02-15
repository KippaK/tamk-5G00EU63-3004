-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 104-multiple-tables-self-join.sql

SELECT
    d.loc AS Location,
    d.dname AS Department,
    e1.ename AS Employee,
    e2.ename AS Manager
FROM
    emp AS e1
JOIN emp AS e2 ON e1.mgr = e2.empno
JOIN dept AS d ON e1.deptno = d.deptno
WHERE
	UPPER(e2.ename) IN ('BLAKE', 'FORD', 'JONES')
	AND m.sal > (SELECT hisal FROM salgrade WHERE grade = 3)
ORDER BY
    d.loc ASC,
    e2.ename ASC,
    e1.ename ASC;

-- End of file
