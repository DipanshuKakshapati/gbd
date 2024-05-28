USE Day_15;

 -- VIEW to list the total purchase amount per customer along with customer details
CREATE VIEW CustomerOrder AS(
    SELECT c.customer_id, c.customer_name, c.city, ROUND(SUM(o.purch_amt), 2) AS total_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name, c.city
);

-- checking the result
SELECT *
FROM  CustomerOrder
ORDER BY total_purch_amt DESC;

-- query to rank customer with the highest purchase amount and their rank within their respective city
SELECT customer_id, customer_name, city, total_purch_amt,
DENSE_RANK() OVER(PARTITION BY city ORDER BY total_purch_amt DESC) AS rank_total_purch_amt
FROM CustomerOrder


