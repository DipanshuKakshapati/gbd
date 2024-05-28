USE Day_15;

-- CTE to list all salesmen and their total sales, including sales from customers managed by salesmen they supervise
WITH SalesmanSales AS (
    SELECT s.salesman_id, 

    CASE WHEN SUM(o.purch_amt) IS NULL THEN 'No Sales' ELSE CONVERT(VARCHAR, SUM(o.purch_amt)) END AS total_sales

    FROM salesman s 
    LEFT JOIN [order] o 
    ON s.salesman_id = o.salesman_id
    GROUP BY s.salesman_id
)

-- query to check the result
SELECT *
FROM SalesmanSales;