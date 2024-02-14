-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 083-group.sql

WITH sal_data AS (
    SELECT
        sal
    FROM
        emp
    WHERE
        deptno = 10 OR deptno = 30
)

SELECT
    MAX(sal) AS high,
    MIN(sal) AS low
FROM
    sal_data;

-- End of file
