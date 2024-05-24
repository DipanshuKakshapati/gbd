USE Day_10;

--seeing total number of employees and toal salary
SELECT COUNT(*) AS Total_Employees, SUM(Salary) AS Total_Salary
FROM Employees;

--calculating avg salary--
SELECT AVG(Salary) AS Avg_Employee_Salary
FROM Employees;

--filtering employees having salary more thant the average salary
SELECT Id, Employee_Name, Salary
FROM Employees
WHERE Salary >
(
    SELECT AVG(Salary) AS Avg_Employee_Salary
    FROM Employees
)
