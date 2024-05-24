-- query to create GetProductDetails stored procedure to get product details by product_id
CREATE PROCEDURE GetProductDetails
    @ProductID INT
AS 
BEGIN
    SELECT *
    FROM products
    WHERE product_id = @ProductID;
END;