USE Day_16;

-- query to assign a unique row number to each sale within each Salesperson, ordered by Sale Date
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

ROW_NUMBER() OVER(PARTITION BY Saleperson ORDER BY SaleDate) AS row_num

FROM orders;
 
