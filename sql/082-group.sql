-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 082-group.sql

SELECT
    COUNT(*) AS "Count of Dept 30"
FROM
    emp
WHERE
    deptno = 30;

-- End of file
