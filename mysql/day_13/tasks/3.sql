USE Day_13;

-- query to get customers and salesman who do not live in the same city
SELECT c.customer_name AS customer_name, c.city AS customer_city, s.name AS salesman_name, s.city AS salesman_city
FROM customer c 
INNER JOIN salesman s 
ON c.salesman_id = s.salesman_id
WHERE c.city != s.city;

-- query to display all those orders by the customers not located in the same cities where their salesmen live.
SELECT DISTINCT c.customer_name, o.order_no
FROM customer c
INNER JOIN [order] o 
ON c.customer_id = o.customer_id
WHERE c.customer_name IN(
    SELECT c.customer_name AS customer_name
    FROM customer c 
    INNER JOIN salesman s 
    ON c.salesman_id = s.salesman_id
    WHERE c.city != s.city
);


