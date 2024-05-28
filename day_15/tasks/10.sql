USE Day_15;

-- query to calculate avg order amount 
SELECT AVG(o.purch_amt) AS avg_purch_amt
FROM customer c 
INNER JOIN [order] o 
ON c.customer_id = o.customer_id;

-- CTE to calculate avg order amount 
WITH CustomerPurchAmt AS (
    SELECT c.customer_id, c.customer_name, SUM(o.purch_amt) AS total_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name
)

-- query to find the customers who have placed orders worth more than the average order amount
SELECT customer_id, customer_name, total_purch_amt
FROM CustomerPurchAmt
WHERE total_purch_amt > (
    SELECT AVG(o.purch_amt) AS avg_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
);


