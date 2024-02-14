-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-14
-- File: 034-ordeer-by.sql

SELECT
    ename AS Employee,
    sal AS 'Monthly Salary',
    sal * 1.1 AS 'Sal 10%',
    comm AS Comm
FROM
    emp
WHERE
    comm > sal * 1.1
ORDER BY
    ename ASC,
    sal ASC,
    comm ASC;

-- End of file
