-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 073-functions.sql

SELECT
    empno,
    ename,
    ROUND(sal * 1.15) AS new_salary,
    ROUND(sal * 0.15) AS increase
FROM
    emp
ORDER BY
    ename ASC,
    new_salary ASC;

-- End of file
