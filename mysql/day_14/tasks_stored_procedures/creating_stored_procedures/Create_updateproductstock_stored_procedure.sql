-- query to create UpdateProductStock stored procedure to update the stock level of a product by product_id
CREATE PROCEDURE UpdateProductStock
    @ProductID INT,
    @NewStock INT
AS 
BEGIN
    UPDATE products
    SET stock = @NewStock
    WHERE product_id = @ProductID;
END;