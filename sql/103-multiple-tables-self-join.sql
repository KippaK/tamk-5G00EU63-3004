-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 103-multiple-tables-self-join.sql

SELECT
    e.ename
FROM
    emp e
JOIN emp AS m ON e.mgr = m.empno
WHERE
    e.sal > m.sal
ORDER BY
    e.ename ASC;

-- End of file
