USE Day_12;

-- creating a view to get employees and their departments
CREATE VIEW Department_Employee AS
SELECT e.Name AS Employee_Name, d.Name AS Department_Name, e.Salary
FROM EMPLOYEE e 
INNER JOIN DEPARTMENT d 
ON e.DepartmentId = d.Name;

-- performing self join on the view table to find pairs of employees who work in the same department and have the same salary.
SELECT de1.Employee_Name, de2.Employee_Name, de2.Department_Name, de2.Salary
FROM Department_Employee de1
INNER JOIN Department_Employee de2 
ON de1.Department_Name = de2.Department_Name AND de1.Salary = de2.Salary
WHERE de1.Employee_Name < de2.Employee_Name

