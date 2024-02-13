-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 012-correct-sql-statement.sql

SELECT  empno
        , ename
        , sal * 12 AS "ANNUAL SALARY"
FROM    emp
;

-- End of file
