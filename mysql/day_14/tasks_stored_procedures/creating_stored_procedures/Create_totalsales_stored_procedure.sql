-- query to create CalculateTotalSales stored procedure to calculate totoal sales by product_id
CREATE PROCEDURE CalculateTotalSales
    @ProductID INT,
    @TotalSales INT OUTPUT
AS
BEGIN
    SELECT @TotalSales = SUM(quantity)
    FROM sales
    WHERE product_id = @ProductID;
END;