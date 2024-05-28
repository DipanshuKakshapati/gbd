USE Day_15;

-- query to calculate total purch amt of individual customers
SELECT c.customer_id, c.city, ROUND(SUM(o.purch_amt), 2) AS total_purch_amt
FROM customer c 
INNER JOIN [order] o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.city;

-- CTE to calculate total purch amt of individual customers
WITH CustomerTotalPurchAmtCity AS (
    SELECT c.customer_id, c.customer_name, c.city, ROUND(SUM(o.purch_amt), 2) AS total_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name, c.city
),

-- CTE to rank customers in city based on their total purch amt
RankedCustomer AS(
    SELECT customer_id, customer_name, city, total_purch_amt,
    RANK() OVER (PARTITION BY city ORDER BY total_purch_amt DESC) AS rank
    FROM CustomerTotalPurchAmtCity
)

-- querry to find the top 3 customers by purchase amount in each city.
SELECT customer_id, customer_name, city, total_purch_amt, rank
FROM RankedCustomer
WHERE rank < = 3
ORDER BY city, rank;

