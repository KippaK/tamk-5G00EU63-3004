-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 071-functions.sql

SELECT
    LOWER(ename) AS Name,
    LENGTH(ename) AS Characters
FROM
    emp
ORDER BY
    Characters ASC,
    Name ASC;

-- End of file
