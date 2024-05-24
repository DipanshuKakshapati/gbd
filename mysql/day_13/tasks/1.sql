USE Day_13;
 
-- Joining customer and salesman table using salesman_id column.
-- query to find the name and city of those customers and salesmen who lives in the same city.
SELECT c.customer_name AS Customer_name, s.name AS Salesman_name, c.city
FROM customer c
INNER JOIN salesman s
ON c.salesman_id = s.salesman_id
WHERE c.city = s.city;

-- Joining customer and salesman table using city column.
-- query to find the name and city of those customers and salesmen who lives in the same city.
SELECT c.customer_name, s.name, c.city
FROM customer c 
INNER JOIN salesman s 
ON c.city = s.city;