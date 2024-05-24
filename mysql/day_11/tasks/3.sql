USE Day_11;

-- query to get list of employees who are in the same department as 'John'
SELECT Name, DepartmentId
FROM EMPLOYEE
WHERE DepartmentId IN (
    SELECT DepartmentId
    FROM EMPLOYEE
    WHERE Name = 'John'
)

