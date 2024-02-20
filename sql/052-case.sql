-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 052-case.sql

WITH updated_emp AS (
    SELECT
        empno,
        ename,
        CASE
            WHEN deptno = 30 AND (comm IS NULL OR comm = 0) THEN 100
            WHEN deptno = 30 THEN comm * 1.05
            ELSE comm
        END AS updated_comm
    FROM
        emp
)

SELECT
    ename,
    updated_comm AS comm
FROM
    updated_emp
ORDER BY
    updated_comm ASC,
    ename ASC;

-- End of file

