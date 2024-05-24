USE Day_13;

-- query to find all orders attributed to salesmen in Paris.
SELECT s.name, s.city, o.order_no
FROM salesman s 
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id
WHERE s.city = 'Paris'

