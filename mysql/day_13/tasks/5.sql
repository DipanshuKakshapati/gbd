USE Day_13;

-- query to get average order value for 10th October 2016
SELECT AVG(purch_amt) AS Avg_amt
FROM [order]
WHERE order_date = '2016-10-10'
GROUP BY order_date

-- query to display all the orders which values are greater than the average order value for 10th October 2016
SELECT order_no, purch_amt
FROM [order] 
WHERE purch_amt > (
    SELECT AVG(purch_amt) AS Avg_amt
    FROM [order]
    WHERE order_date = '2016-10-10'
    GROUP BY order_date
)
