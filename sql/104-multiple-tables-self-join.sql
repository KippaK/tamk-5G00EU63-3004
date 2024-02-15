-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 104-multiple-tables-self-join.sql

SELECT
    d.loc AS Location,
    d.dname AS Department,
    e.ename AS Employee,
    m.ename AS Manager
FROM
    emp AS e
JOIN emp AS m ON e.mgr = m.empno
JOIN dept AS d ON e.deptno = d.deptno
WHERE
    UPPER(m.ename) IN ('BLAKE', 'FORD', 'JONES') AND m.sal > ALL (SELECT sal FROM emp WHERE deptno = 3)
ORDER BY
    Location ASC, 
	Manager ASC,
	Employee ASC;

-- End of file
