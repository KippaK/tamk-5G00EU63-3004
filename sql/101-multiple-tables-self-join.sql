-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 101-multiple-tables-self-join.sql

SELECT
    mgr.ename AS "Manager",
    mgr.empno AS "Mgr#",
    emp.ename AS "Employee",
    emp.empno AS "Emp#"
FROM
    emp AS mgr
JOIN
    emp AS emp ON emp.mgr = mgr.empno
WHERE
    UPPER(mgr.ename) IN ('BLAKE', 'FORD', 'SCOTT')
ORDER BY
    "Manager" ASC,
    "Employee" ASC;

-- End of file
