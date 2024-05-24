USE Day_13;

-- query to display all the orders issued by the salesman 'Paul Adam' from the orders table.
SELECT s.name, o.order_no
FROM salesman s 
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id
WHERE s.name = 'Paul Adam'

