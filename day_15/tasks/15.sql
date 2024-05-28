USE Day_15;

-- query to see the total number of orders for each salesman
SELECT s.salesman_id, COUNT(o.order_no) AS total_orders
FROM salesman s 
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id
GROUP BY s.salesman_id;

-- CTE to get total number of orders for each salesman
WITH SalesmanTotalOrders AS (
    SELECT s.salesman_id, COUNT(o.order_no) AS total_orders
    FROM salesman s 
    INNER JOIN [order] o 
    ON s.salesman_id = o.salesman_id
    GROUP BY s.salesman_id
)

-- query to find the salesman with the highest number of orders and display their details
SELECT salesman_id, name, city, commission
FROM salesman

-- query to match the salesman_id with the one having highest number of orders
WHERE salesman_id IN (
    SELECT salesman_id
    FROM SalesmanTotalOrders

-- query to match the total_orders number with the one that is highest
    WHERE total_orders IN (
        SELECT MAX(total_orders) as max_orders
        FROM SalesmanTotalOrders
    )
)



