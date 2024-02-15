-- Author: Antti Venetjoki <antti.venetjoki@tuni.fi>
-- Date: 2024-02-15
-- File: 104-multiple-tables-self-join.sql

SELECT
    d.loc AS Location,
    d.dname AS Department,
    e.ename AS Employee,
    m.ename AS Manager
FROM
    emp AS e
JOIN emp AS m ON e.mgr = m.empno
JOIN dept AS d ON e.deptno = d.deptno
JOIN salgrade AS s ON m.sal BETWEEN s.losal AND s.hisal
WHERE
    UPPER(m.ename) IN ('BLAKE', 'FORD', 'JONES')
    AND s.grade > 3
ORDER BY
    d.loc ASC,
    m.ename ASC,
    e.ename ASC;

-- End of file
