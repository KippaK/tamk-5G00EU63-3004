-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 062-coalesce.sql

SELECT
    ename AS Name,
    COALESCE(COALESCE(sal, 0) * 0.69 + COALESCE(comm, 0) * 0.8, 0) AS "Net Income",
    COALESCE(COALESCE(sal, 0) * 0.31 + COALESCE(comm, 0) * 0.2, 0) AS Tax
FROM
    emp
ORDER BY
    "Net Income" ASC;

-- End of file
