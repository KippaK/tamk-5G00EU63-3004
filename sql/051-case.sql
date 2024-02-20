-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 051-case.sql

WITH updated_emp AS (
    SELECT
        empno,
        ename,
        CASE
            WHEN UPPER(job) = 'SALESMAN' THEN 'SALES PERSON'
            ELSE job
        END AS updated_job
    FROM
        emp
)

SELECT
    ename AS Name,
    updated_job AS 'New Job Name'
FROM
    updated_emp
ORDER BY
    updated_job ASC,
    ename ASC;

-- End of file
