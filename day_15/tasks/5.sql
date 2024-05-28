USE Day_15;

-- query to create a stored procedure to insert a new customer into the customer table
CREATE PROCEDURE InsertNewCustomer
    @CustomerId INT,
    @CustomerName VARCHAR(255),
    @City VARCHAR(255),
    @Grade INT,
    @SalesmanID INT
AS
BEGIN
    INSERT INTO Customer(customer_id, customer_name, city, grade, salesman_id)
    VALUES (@CustomerId, @CustomerName, @City, @Grade, @SalesmanID);
END

-- query to execute the stored procedure
EXEC InsertNewCustomer @CustomerId = 3006, @CustomerName = 'Harvey Specter', @City = 'Tokyo', @Grade = 200, @SalesmanID = 5006;

-- validating the result
SELECT *
FROM Customer;
