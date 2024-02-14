-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 052-case.sql

UPDATE emp
SET comm = CASE
    WHEN deptno = 30 AND (comm IS NULL OR comm = 0) THEN 100
    WHEN deptno = 30 THEN comm * 1.05
    ELSE comm
END;

;

SELECT
    ename,
    comm
FROM
    emp
ORDER BY
    comm ASC,
    ename ASC;

-- End of file
