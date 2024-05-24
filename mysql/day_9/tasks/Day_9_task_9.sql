USE Day_9;

SELECT d.Id, d.Name
FROM Department d
LEFT JOIN Employee e on d.Name = e.DepartmentId
WHERE e.DepartmentId IS NULL;