USE Day_9;

SELECT COUNT(Name) AS Active_Employee, Active
FROM EMPLOYEE
WHERE Active = 1
GROUP BY Active;