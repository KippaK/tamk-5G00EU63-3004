-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-14
-- File: 042-like.sql

SELECT
    ename AS Name,
    deptno AS Department
FROM
    emp
WHERE
    (UPPER(SUBSTRING(ename, 2, 1)) IN ('A', 'E', 'I', 'O', 'U', 'Y'))
    AND (UPPER(job) LIKE '%SALES%' OR UPPER(job) LIKE '%ANALYSIS%')
ORDER BY
    deptno ASC,
    ename ASC;


-- End of file
