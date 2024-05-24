USE Day_12;

-- query to get the department name which have more than one employee earning above the average salary of their department
SELECT d1.Name
FROM DEPARTMENT d1
WHERE d1.Name IN(

    -- query to find out which department has more than 1 employee earning more than avg salary of their department
    SELECT d2.Name
    FROM EMPLOYEE e1
    INNER JOIN DEPARTMENT d2
    ON e1.DepartmentId = d2.Name
    WHERE Salary > (
        
        -- query to find out avg salary of each department
        SELECT d3.Name, AVG(Salary) AS Avg_Salary
        FROM EMPLOYEE e2

        INNER JOIN DEPARTMENT d3
        ON e2.DepartmentId = d3.Name

        WHERE e2.DepartmentId = d3.Name
        GROUP BY d3.Name
    )
    GROUP BY d2.Name
    HAVING COUNT(*) > 1
);



