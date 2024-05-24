USE Day_11;

-- query to get the names of employees who have the same salary as the maximum salary in the 'HR' department
SELECT Name, Salary
FROM EMPLOYEE
WHERE Salary IN (
    SELECT MAX(Salary)
    FROM EMPLOYEE
    WHERE DepartmentId = 'HR'
)

