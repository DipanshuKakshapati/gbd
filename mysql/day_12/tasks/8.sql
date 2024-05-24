USE Day_12;

-- creating a CTE to find the department of Sean
WITH SeanDepartment AS (
    SELECT d.Name
    FROM Employee e

    INNER JOIN DEPARTMENT d 
    ON e.DepartmentId = d.Name

    WHERE e.Name = 'Sean'
)

-- query to list employees who are in the same department as Sean but exclude Sean from the results
SELECT e.Name, e.DepartmentId
FROM  Employee e

INNER JOIN SeanDepartment sd 
ON e.DepartmentId = sd.Name

WHERE e.Name != 'Sean'
ORDER BY e.Name;

