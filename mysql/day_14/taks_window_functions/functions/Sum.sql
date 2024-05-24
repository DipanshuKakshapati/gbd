USE Day_14_a;

-- query to calculate running total of salaries in each department
SELECT name, department, salary, SUM(salary) OVER(PARTITION BY department ORDER BY join_date) AS total_department_running_salary
FROM employees


