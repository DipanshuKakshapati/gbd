USE Day_11;

-- query to list all employees and their departments, displaying 'No Department' for employees without a department
SELECT COALESCE(e.Name, 'No Employee') AS Employee_Name, d.Name
FROM EMPLOYEE e 
RIGHT JOIN DEPARTMENT d
ON e.DepartmentId = d.Name 



