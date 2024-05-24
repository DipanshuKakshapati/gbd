-- query to execute CalculateTotalSales stored procedure
DECLARE @SalesCount INT;
EXEC CalculateTotalSales @ProductID = 2, @TotalSales = @SalesCount OUTPUT;
SELECT @SalesCount AS TotalSales;