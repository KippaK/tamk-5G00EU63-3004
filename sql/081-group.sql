-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 081-group.sql

SELECT
    COUNT(*) AS "count of m"
FROM
    emp
WHERE
    UPPER(job) IN ('MANAGER', 'PRESIDENT')

-- End of file
