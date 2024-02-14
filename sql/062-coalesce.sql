-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 06-coalesce.sql

SELECT
    ename AS Name,
    (sal - sal * 0.31) + COALESCE((comm - comm * 0.20), 0) AS Net_Income,
    sal * 0.31 AS Tax
FROM
    emp
ORDER BY
    Net_Income ASC;

-- End of file
