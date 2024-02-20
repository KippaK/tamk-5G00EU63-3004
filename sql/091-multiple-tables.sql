-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 091-multiple-tables.sql

SELECT
    e.ename,
    e.deptno,
    d.dname
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    d.loc = 'DALLAS' OR UPPER(e.job) = 'SALESMAN'
ORDER BY
    e.ename ASC;

-- End of file
