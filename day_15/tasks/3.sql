USE Day_15;

 -- VIEW to list the total purchase amount per customer along with customer details
CREATE VIEW CustomerTotalPurchAmt AS (
    SELECT c.customer_id, c.customer_name, c.city, ROUND(SUM(o.purch_amt), 2) AS total_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name, c.city
);

-- chekcing the result
SELECT *
FROM CustomerTotalPurchAmt
ORDER BY total_purch_amt DESC;



