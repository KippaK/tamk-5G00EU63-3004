-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-14
-- File: 043-like.sql

SELECT
    ename
FROM
    emp
WHERE
    (LENGTH(ename) - LENGTH(REPLACE(ename, 'L', ''))) = 2
    AND (deptno = 10 OR mgr = 7782);

-- End of file
