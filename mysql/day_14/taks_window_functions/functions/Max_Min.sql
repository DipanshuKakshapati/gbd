USE Day_14_a;

-- query to find highest and lowest salary in each department
SELECT name, department, salary, 
MAX(salary) OVER(PARTITION BY department ORDER BY join_date) AS moving_average_salary,
MIN(salary) OVER(PARTITION BY department ORDER BY join_date) AS moving_average_salary
FROM employees

