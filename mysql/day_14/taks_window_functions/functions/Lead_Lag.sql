USE Day_14_a;

-- query to use LEAD and LAG to compare salarie
SELECT name, department, salary, 
LEAD(salary, 1) OVER(PARTITION BY department ORDER BY join_date) AS next_employee_salary,
LAG(salary, 1) OVER(PARTITION BY department ORDER BY join_date) AS previous_employee_salary
FROM employees


