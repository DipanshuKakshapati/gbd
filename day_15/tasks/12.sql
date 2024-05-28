USE Day_15;


-- query to create a view that lists each city's total sales and number of salesmen operating in that city.
CREATE VIEW CitySalesWithNum AS(
    SELECT c.city, COUNT(c.salesman_id) AS num_salesman, ROUND(SUM(o.purch_amt), 2) as total_sales
    FROM customer c
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    GROUP BY c.city
);

-- query to see the result
SELECT *
FROM CitySalesWithNum
ORDER BY total_sales DESC;