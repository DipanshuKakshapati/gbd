USE Day_15;

-- VIEW to show each salesman’s customers and their total purchase amounts
CREATE VIEW CustomerOrderSalesman AS (
    SELECT o.salesman_id, c.customer_id, c.customer_name, ROUND(SUM(o.purch_amt),2) AS total_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id 
    WHERE o.salesman_id IS NOT NULL
    GROUP BY c.customer_id, c.customer_name, o.salesman_id
);

-- checking the result
SELECT *
FROM CustomerOrderSalesman;







