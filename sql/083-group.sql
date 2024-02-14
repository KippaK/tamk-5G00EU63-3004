-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 083-group.sql

SELECT
    deptno,
    MAX(sal) AS high,
    MIN(sal) AS low
FROM
    emp
WHERE
    deptno IN (10, 30)
GROUP BY
    deptno;

-- End of file
