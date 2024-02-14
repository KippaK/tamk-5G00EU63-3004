-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 061-coalesce.sql

SELECT
    deptno,
    ename,
    COALESCE(comm, 0) AS comm
FROM
    emp
WHERE
    deptno = 30
ORDER BY
    ename ASC,
    comm ASC;

-- End of file
