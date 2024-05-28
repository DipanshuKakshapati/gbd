USE Day_16;

-- query to rank each sale based on the SaleAmount in descending order
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

DENSE_RANK() OVER(ORDER BY SaleAmount DESC) AS rank

FROM orders;
