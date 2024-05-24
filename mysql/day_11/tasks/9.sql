USE Day_11;

-- query to find the departments that have more than one employee with the same salary
SELECT d.Name AS DepartmentName, e.Salary, COUNT(*) AS NumberOfEmployees
FROM EMPLOYEE e
JOIN DEPARTMENT d 
ON e.DepartmentId = d.Name
GROUP BY d.Name, e.Salary
HAVING COUNT(*) > 1

