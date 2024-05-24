USE Day_11;

-- query to find employees who do not belong to the 'IT' department
SELECT e.Name, d.Name
FROM EMPLOYEE e
LEFT JOIN DEPARTMENT d ON e.DepartmentId = d.Name
WHERE e.DepartmentId != 'IT'