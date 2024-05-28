USE Day_15;

-- CTE to calcualte total purch amount for each individual customers based on individual city
WITH CustomerTotalPurchAmtCity AS (
    SELECT c.customer_id, c.customer_name, c.city, ROUND(SUM(o.purch_amt), 2) AS total_purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.customer_name, c.city
),

-- CTE to calculate avg purch amount for each individual customers based on individual city
CustomerAvgOrder AS (
    SELECT customer_id, customer_name, city, total_purch_amt,

    AVG(total_purch_amt) OVER (PARTITION BY city) AS city_avg_purch_amt

    FROM CustomerTotalPurchAmtCity
)

-- query to find the customers who exceed the avg purch amount on individual city
SELECT customer_id, customer_name, city, total_purch_amt, city_avg_purch_amt
FROM CustomerAvgOrder
WHERE total_purch_amt >= city_avg_purch_amt; 
