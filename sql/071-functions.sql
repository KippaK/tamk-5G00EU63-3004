-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 071-functions.sql

SELECT
    LOWER(ename) AS Name,
    LOWER(job) AS Job,
    sal AS Salary
FROM
    emp
ORDER BY
    Name ASC,
    Job ASC;

-- End of file
