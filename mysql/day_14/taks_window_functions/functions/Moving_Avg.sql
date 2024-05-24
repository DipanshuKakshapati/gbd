USE Day_14_a;

-- query to calculate moving average of salaries across all employees
SELECT name, department, salary, AVG(salary) OVER(PARTITION BY department ORDER BY join_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_average_salary
FROM employees