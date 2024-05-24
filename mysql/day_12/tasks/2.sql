USE Day_12;

-- query to get the employee where no department is assigned to them along with the activity status
SELECT e.Name, 

CASE WHEN d.Name IS NULL THEN 'No Department' END AS Department_Name,

CASE WHEN e.active IS NULL THEN 'Inactive' ELSE 'Active' END AS Activity_Status

FROM EMPLOYEE e
FULL OUTER JOIN DEPARTMENT d
ON e.DepartmentId = d.Name
WHERE d.Name IS NULL;


