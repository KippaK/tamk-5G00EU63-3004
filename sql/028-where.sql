-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 028-where.sql

SELECT ename, sal, comm
FROM emp
WHERE comm IS NOT NULL AND comm > 0;

-- End of file
