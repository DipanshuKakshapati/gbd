USE Day_9;

WITH DepartmentsEmployeeCount AS (
    SELECT DepartmentId, COUNT(*) AS Employee_Count
    FROM EMPLOYEE
    GROUP BY DepartmentId
)

SELECT DepartmentId, Employee_Count
FROM DepartmentsEmployeeCount
WHERE Employee_Count = (SELECT MAX(Employee_Count) FROM DepartmentsEmployeeCount);

