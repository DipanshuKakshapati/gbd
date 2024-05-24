USE Day_11;

-- query to total salary expenditure for each department
SELECT d.Name, SUM(e.Salary) AS Total_Salary
FROM EMPLOYEE e 
INNER JOIN DEPARTMENT d
ON e.DepartmentId = d.Name 
GROUP BY d.Name