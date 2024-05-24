USE Day_10;

--filtering departments, their total salary, and total number of employes there
SELECT Department_Id, SUM(Salary) AS Total_Salary, COUNT(Id) AS Total_Employee
FROM Employees
GROUP BY Department_Id
ORDER BY Total_Employee DESC;

--filtering positions, their total salary, and total number of employes there
SELECT Position, SUM(Salary) AS Total_Salary, COUNT(Id) AS Total_Employee
FROM Employees
GROUP BY Position
ORDER BY Total_Employee DESC;