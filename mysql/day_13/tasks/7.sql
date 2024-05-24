USE Day_13;

-- query to see which salesman earned the maximum commission
SELECT s.salesman_id, SUM(s.commission) AS Total_Commission
FROM salesman s 
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id
GROUP BY s.salesman_id;

-- creating a CTE containing salesman and their total commissions
WITH Sumcommission AS(
    SELECT s.salesman_id, SUM(s.commission) AS Total_Commission
    FROM salesman s 
    INNER JOIN [order] o 
    ON s.salesman_id = o.salesman_id
    GROUP BY s.salesman_id
)

-- query to extract the data from the orders table for the salesman who earned the maximum commission
SELECT o.order_no, s.salesman_id, s.name, s.commission, o.purch_amt, o.order_date, o.customer_id
FROM salesman s 
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id
WHERE s.salesman_id IN (
    SELECT salesman_id
    FROM Sumcommission
    WHERE Total_Commission = (
    SELECT MAX(Total_Commission)
    FROM Sumcommission
)
GROUP BY salesman_id
);

