-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 094-multiple-tables.sql

SELECT
    e.ename AS employee_name,
    d.dname AS department_name
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    UPPER(e.ename) LIKE '%A%' AND e.sal > 1100 AND e.sal <= 2200
ORDER BY
    e.ename ASC;

-- End of file
