-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 104-multiple-tables-self-join.sql

SELECT
    d.loc AS Location,
    d.dname AS Department,
    e.ename AS Employee,
    m.ename AS Manager
FROM
    emp e
JOIN emp m ON e.mgr = m.empno
JOIN dept d ON e.deptno = d.deptno
WHERE
    m.ename IN ('BLAKE', 'FORD', 'JONES') AND m.sal > ALL (SELECT sal FROM emp WHERE deptno = 3)
ORDER BY
    Location, Manager, Employee;

-- End of file
