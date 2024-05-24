USE Day_12;

-- query to get max salary of each departments
CREATE VIEW MaxDeptSalaries AS
SELECT d1.Name, MAX(e1.Salary) AS Max_Salary
FROM EMPLOYEE e1
INNER JOIN DEPARTMENT d1
ON e1.DepartmentId = d1.Name
GROUP BY d1.Name;

-- running the folowing two queries gives the list of employees who have maximum salary in their department

-- query to get individual employee along with their department and salary
SELECT e2.Name AS Employee_Name, d2.Name AS Department_Name, e2.Salary AS Max_Salary
FROM Employee e2
INNER JOIN Department d2 
ON e2.DepartmentId = d2.Name

-- query to INNER JOIN the First result table with View table
INNER JOIN MaxDeptSalaries m 
ON e2.DepartmentId = m.Name AND e2.Salary = m.Max_Salary




