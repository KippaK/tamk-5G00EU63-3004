-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 024-where.sql

SELECT  ename, hiredate
FROM emp
WHERE hiredate BETWEEN '1981-02-20' AND '1981-05-01';

-- End of file
