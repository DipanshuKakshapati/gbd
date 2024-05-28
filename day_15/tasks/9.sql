USE Day_15;

-- CTE to calculate total number of customers for each salesman
WITH CustomersNum AS (
    SELECT s.salesman_id, s.name, COUNT(c.customer_id) AS total_customers 
    FROM salesman s 
    INNER JOIN customer c 
    ON s.salesman_id = c.salesman_id
    GROUP BY s.salesman_id, s.name
)

-- query to find all salesmen who have more than one customer
SELECT salesman_id, name, total_customers
FROM CustomersNum
WHERE total_customers > 1


