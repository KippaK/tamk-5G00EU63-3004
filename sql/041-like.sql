-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-14
-- File: 041-like.sql

SELECT
    ename
FROM
    emp
WHERE
    SUBSTRING(ename, 3, 1) LIKE '%a%';

-- End of file

