-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 102-multiple-tables-self-join.sql

SELECT
    e.deptno AS "Dept",
    e1.ename AS "Employee",
    e2.ename AS "Colleague"
FROM
    emp e
JOIN
    emp e1 ON e.deptno = e1.deptno
JOIN
    emp e2 ON e.deptno = e2.deptno
WHERE
    e1.empno <> e2.empno
ORDER BY
    "Dept" ASC,
    "Employee" ASC,
    "Colleague" ASC;

-- End of file
