USE Day_11;

-- query to find average salary of employees in each department
SELECT d.Name, AVG(e.Salary) AS Avg_Salary
FROM EMPLOYEE e
INNER JOIN DEPARTMENT d 
ON e.DepartmentId = d.Name
GROUP BY d.Name
