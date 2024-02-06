-- Author: Antti Venetjoki <antti.venetjoki@gmail.com>
-- Date: 2024-02-06
-- File: 011-list-tables.sql

SELECT  empno
        , ename
        , sal * 12 AS "ANNUAL SALARY"
FROM    emp
;

-- End of file

