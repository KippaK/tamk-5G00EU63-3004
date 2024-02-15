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
    e2.sal > e1.sal
    AND e2.ename IN ('BLAKE', 'FORD', 'JONES')
ORDER BY
    d.loc,
    e2.ename,
    e1.ename;

-- End of file
