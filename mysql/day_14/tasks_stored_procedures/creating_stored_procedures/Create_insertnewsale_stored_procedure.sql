-- query to create InsertNewSale stored procedure to insert new sales record
CREATE PROCEDURE InsertNewSale
    @ProductID INT,
    @Quantity INT,
    @SaleDate DATE
AS
BEGIN
    INSERT INTO sales (product_id, quantity, sale_date)
    VALUES (@ProductID, @Quantity, @SaleDate);
END;
