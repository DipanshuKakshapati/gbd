USE Day_12;

-- query to get find the total salary expenditure and the average salary for each department, including departments without any employees
SELECT 

d.Name, 

CASE WHEN SUM(e.Salary) IS NULL THEN 'No Salary' ELSE CONVERT(VARCHAR, SUM(e.Salary)) END AS Total_Salary, 

CASE WHEN AVG(e.Salary) IS NULL THEN 'No Salary' ELSE CONVERT(VARCHAR, AVG(e.Salary)) END AS AVG_Salary

FROM DEPARTMENT d 
FULL OUTER JOIN EMPLOYEE e 
ON d.Name = e.DepartmentId
WHERE d.Name IS NOT NULL
GROUP BY d.Name;