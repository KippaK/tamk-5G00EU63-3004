-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 091-multiple-tables.sql

SELECT
    e.ename AS employee_name,
    e.deptno AS department_number,
    d.dname AS department_name
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    d.loc = 'DALLAS' OR UPPER(e.job) = 'SALESMAN'
ORDER BY
    e.ename ASC;

-- End of file
