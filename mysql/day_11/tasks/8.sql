USE Day_11;

-- query to find departments that have employees with salaries above the average salary of all employees
SELECT e.Name AS Employee_Name, d.Name AS Department_Name, e.Salary
FROM EMPLOYEE e 
INNER JOIN DEPARTMENT d 
ON
e.DepartmentId = d.Name 
WHERE e.Salary > (
    SELECT AVG(Salary)
    FROM EMPLOYEE
)
