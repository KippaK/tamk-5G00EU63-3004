-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 095-multiple-tables.sql

SELECT
    e.ename,
    e.job,
    e.deptno,
    d.dname
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    (UPPER(d.dname) = 'ACCOUNTING' AND e.sal > 1000)
    OR (UPPER(d.dname) = 'SALES' AND e.sal > 1000)
    OR (UPPER(d.dname) = 'OPERATIONS' AND e.sal > 1000)
ORDER BY
    e.ename ASC;

-- End of file
