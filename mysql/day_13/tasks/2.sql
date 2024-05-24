USE Day_13;

-- query to find the names of all customers along with the salesmen who works for them.
SELECT

CASE WHEN c.customer_name IS NULL THEN 'No Customer' ELSE c.customer_name END AS Customer,

CASE WHEN s.name IS NULL THEN 'No Salesman' ELSE s.name END AS Salesman

FROM customer c 
FULL OUTER JOIN salesman s 
ON c.salesman_id = s.salesman_id

