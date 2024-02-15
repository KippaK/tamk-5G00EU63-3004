-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 092-multiple-tables.sql

SELECT DISTINCT
    e.job
FROM
    emp AS e
JOIN
    dept AS d ON e.deptno = d.deptno
WHERE
    UPPER(d.loc) IN ('BOSTON', 'NEW YORK')
ORDER BY
    job_name ASC;

-- End of file
