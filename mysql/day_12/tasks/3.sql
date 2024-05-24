USE Day_12;

-- query to get a list of all departments, their employees, and activity status including the department where no employees are assigned
SELECT d.Name, 

CASE WHEN e.Name IS NULL THEN 'No Employee' ELSE e.Name END AS Employee_Name, 

CASE WHEN e.Active IS NULL THEN 'No Activity' ELSE 'Activity' END AS Employee_Activity
FROM DEPARTMENT d
FULL OUTER JOIN EMPLOYEE e 
ON d.Name = e.DepartmentId
WHERE d.Name IS NOT NULL;

