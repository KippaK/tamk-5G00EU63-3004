-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 102-multiple-tables-self-join.sql

SELECT
    e.deptno AS Dept,
    e.ename AS Employee,
    c.ename AS Colleague
FROM
    emp e
JOIN emp c ON e.deptno = c.deptno AND e.empno <> c.empno
ORDER BY
    Dept, Employee, Colleague;

-- End of file
