-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 051-case.sql

UPDATE emp
SET job = 'SALES PERSON'
WHERE UPPER(job) = 'SALESMAN';

;

SELECT
    ename AS Name,
    job AS 'New Job Name'
FROM
    emp
ORDER BY
    job ASC,
    ename ASC;

-- End of file
