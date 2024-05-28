USE Day_15;

-- query to write a stored procedure to update a customer's grade based on their total purchase amount. 
CREATE PROCEDURE UpdateCustomerGrade
AS
BEGIN 
    UPDATE c 
    SET c.grade = 300
    FROM customer c
    INNER JOIN (
        SELECT customer_id, SUM(purch_amt) AS total_purch_amt
        FROM [order]
        GROUP BY customer_id
    ) o 
    ON c.customer_id = o.customer_id
    WHERE o.total_purch_amt > 1000;
END;

-- query to execute the stored procedure
EXEC UpdateCustomerGrade;


