-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 093-multiple-tables.sql

SELECT
    e.ename AS employee_name,
    d.dname AS department_name,
    d.loc AS location
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    e.comm IS NOT NULL
ORDER BY
    e.ename ASC;

-- End of file
