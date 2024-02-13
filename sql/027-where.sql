-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-13
-- File: 027-where.sql

SELECT ename, job, sal
FROM emp
WHERE (job = "CLERK" OR job = "ANALYST") AND (sal != 1000 AND sal != 5000);

-- End of file
