-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 024-where.sql

SELECT  ename, job, hiredate
FROM emp
WHERE hiredate >= '1981-02-20' AND hiredate <= '1981-05-01';

-- End of file
