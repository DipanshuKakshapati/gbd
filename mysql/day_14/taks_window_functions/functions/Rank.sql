USE Day_14_a;

-- query to rank by salary within each department:
SELECT employee_id, name, department, salary, RANK() OVER(PARTITION BY department ORDER BY salary) AS rank
FROM employees

