USE Day_9;

SELECT Name, Salary
FROM EMPLOYEE
WHERE Salary IN (
    SELECT Salary
    FROM EMPLOYEE
    GROUP BY Salary
    HAVING COUNT(Salary) > 1
)
ORDER BY Name;