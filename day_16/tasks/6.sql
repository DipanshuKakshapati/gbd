USE Day_16;

-- query to rank sales within each Salesperson by Sale Amount (Highest Sale First)
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

DENSE_RANK() OVER(PARTITION BY Saleperson ORDER BY SaleAmount DESC) AS rank

FROM orders;
 
