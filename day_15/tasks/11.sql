USE Day_15;

-- query to calculate individual commisson amount based on individual orders for each salesman 
SELECT s.salesman_id, s.name, o.purch_amt, s.commission, (s.commission * o.purch_amt) AS commission_earned, o.order_no
FROM salesman s
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id;

-- query to calculate total commission amount for each salesman
SELECT s.salesman_id, s.name, SUM(s.commission * o.purch_amt) AS total_commission
FROM salesman s
INNER JOIN [order] o 
ON s.salesman_id = o.salesman_id
GROUP BY s.salesman_id, s.name;

-- CTE to calculate individual commisson amount based on individual orders for each salesman 
WITH SalesmanCommission AS (
    SELECT s.salesman_id, s.name, o.purch_amt, s.commission, (s.commission * o.purch_amt) AS commission_earned, o.order_no
    FROM salesman s
    INNER JOIN [order] o 
    ON s.salesman_id = o.salesman_id
)

-- CTE to calculate total commission amount for each salesman
, TotalCommission AS (
    SELECT s.salesman_id, s.name, SUM(s.commission * o.purch_amt) AS total_commission
    FROM salesman s
    INNER JOIN [order] o ON 
    s.salesman_id = o.salesman_id
    GROUP BY s.salesman_id, s.name
)

-- query to rank salesmen by their total commission earned from orders, including the commission percentage from the Salesman table
SELECT sc.salesman_id, sc.name, sc.purch_amt, sc.commission, 
    
    -- query to calculate the running total
    SUM(sc.commission_earned) OVER (PARTITION BY sc.salesman_id ORDER BY sc.order_no) AS running_total_commission,

    tc.total_commission,

    -- query to calculate the rank based on total commission earned by the salesman
    DENSE_RANK() OVER (ORDER BY tc.total_commission DESC) AS rank
    
FROM SalesmanCommission sc
INNER JOIN TotalCommission tc 
ON sc.salesman_id = tc.salesman_id
ORDER BY rank;
