USE Day_16;

-- query to assign a unique row number to each sale ordered by Sale Date
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

ROW_NUMBER() OVER(ORDER BY SaleDate) AS row_num

FROM orders;
 
