-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 081-group.sql

SELECT
    job AS Job_Title,
    COUNT(*) AS "Count of Managers"
FROM
    emp
WHERE
    job IN ('MANAGER', 'PRESIDENT')
GROUP BY
    job;

-- End of file
