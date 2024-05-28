USE Day_15;

-- VIEW to calculate total purch amount for each individual salesman
CREATE VIEW SalesmanOrder AS(
    SELECT s.salesman_id, s.name, SUM(o.purch_amt) AS total_sales
    FROM salesman s 
    INNER JOIN [order] o 
    ON s.salesman_id = o.salesman_id
    GROUP BY s.salesman_id, s.name
)

-- query to rank salesmen based on their total sales amount in descending order
SELECT salesman_id, name, ROUND(total_sales, 2) AS rank_total_sales,
DENSE_RANK() OVER (ORDER BY total_sales DESC) AS rank
FROM SalesmanOrder;

