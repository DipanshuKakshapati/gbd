USE Day_11;

-- query to find the department with highest salary expenditure

-- creating a CTE of departments and their salary
WITH SalarySums AS (
    SELECT DepartmentId, SUM(Salary) AS Total_Salary
    FROM EMPLOYEE
    GROUP BY DepartmentId
),

-- finding out the maximum salary of the department from the created CTE
MaxSalary AS (
    SELECT MAX(Total_Salary) AS Max_Salary
    FROM SalarySums
)

-- joining both the views and finding out which department has the maximum salary
SELECT s.DepartmentId, m.Max_Salary
FROM SalarySums s 
INNER JOIN MaxSalary m 
ON s.Total_Salary = m.Max_Salary;


