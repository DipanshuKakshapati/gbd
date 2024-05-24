USE Day_12;

-- creating a CTE to get avg salary of all employees
WITH CompanyAverage AS (
    SELECT AVG(Salary) AS AvgSalary
    FROM Employee
)

--- query to find the employees who earn more than the average salary of all employees in the company
SELECT e.Name, d.Name AS DepartmentName, e.Salary, ca.AvgSalary
FROM Employee e

JOIN Department d 
ON e.DepartmentId = d.Name

-- cross join is here to make sure we can easily compare their actual salary with the average salary of all employees
CROSS JOIN CompanyAverage ca

WHERE e.Salary > ca.AvgSalary

ORDER BY e.Salary DESC;
