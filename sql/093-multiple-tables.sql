-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 093-multiple-tables.sql

SELECT
    e.ename,
    d.dname,
    d.loc
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    e.comm > 0
ORDER BY
    e.ename ASC;

-- End of file
