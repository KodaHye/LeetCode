# Write your MySQL query statement below
SELECT d.name AS department
     , e.name AS employee
     , e.salary
FROM employee AS e
     INNER JOIN (
        -- 부서에서 가장 많이 벌 때에 그 임금과 부서 id
        SELECT departmentID, MAX(salary) AS max_salary
        FROM employee
        GROUP BY departmentID
        ) AS dh ON e.departmentId = dh.departmentID
                AND e.salary = dh.max_salary
     INNER JOIN department AS d ON d.id = e.departmentid