-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 101-multiple-tables-self-join.sql

SELECT
    m.ename AS Manager,
    m.empno AS "Mgr#",
    e.ename AS Employee,
    e.empno AS "Emp#"
FROM
    emp m
JOIN emp e ON m.empno = e.mgr
WHERE
    UPPER(m.ename) IN ('BLAKE', 'FORD', 'SCOTT')
ORDER BY
    Manager, Employee;

-- End of file
