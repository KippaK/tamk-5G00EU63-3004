-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 092-multiple-tables.sql

SELECT DISTINCT
    e.job AS job_name
FROM
    emp e
JOIN
    dept d ON e.deptno = d.deptno
WHERE
    d.loc IN ('BOSTON', 'NEW YORK')
ORDER BY
    job_name ASC;

-- End of file
