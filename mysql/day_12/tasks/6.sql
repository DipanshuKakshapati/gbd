USE Day_12;

-- creating a CTE to get employees, their department, and salary
WITH DepartmentAverage AS (
    SELECT d.Name, AVG(e.Salary) AS AvgSalary
    FROM EMPLOYEE e 
    
    INNER JOIN DEPARTMENT d 

    ON e.DepartmentId = d.Name

    GROUP BY d.Name
)

-- query using the above created CTE to list the employees who have a salary above the average salary of their department along with their departments.
SELECT e.Name, d.Name AS DepartmentName, e.Salary
FROM EMPLOYEE e

INNER JOIN DepartmentAverage da
ON e.DepartmentId = da.Name

INNER JOIN DEPARTMENT d 
ON e.DepartmentId = d.Name

WHERE e.Salary > da.AvgSalary
ORDER BY DepartmentName, e.Salary DESC;

