-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 074-functions.sql

SELECT
    ename,
    CASE
        WHEN ename LIKE 'a%' THEN LOWER(job)
        WHEN ename LIKE 'm%' THEN LOWER(job)
        WHEN ename LIKE 'j%' THEN LOWER(job)
        ELSE job
    END AS job
FROM
    emp
ORDER BY
    ename ASC,
    job ASC;

-- End of file
