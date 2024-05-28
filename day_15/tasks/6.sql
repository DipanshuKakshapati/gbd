USE Day_15;

-- query to create a stored procedure to get all orders of a given customer by their customer_id
CREATE PROCEDURE CustomerOrderDetails
    @CustomerId INT
AS
BEGIN
    SELECT o.order_no, c.customer_id, c.customer_name, o.order_date, o.purch_amt
    FROM customer c 
    INNER JOIN [order] o 
    ON c.customer_id = o.customer_id
    WHERE c.customer_id = @CustomerId;
END

-- query to execute the stored procedure
EXEC CustomerOrderDetails @CustomerId = 3005;

-- query to execute the stored procedure
EXEC CustomerOrderDetails @CustomerId = 3002;