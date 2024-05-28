USE Day_16;

-- query to rank sales by ale Amount (Highest Sale First)
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

DENSE_RANK() OVER(ORDER BY SaleAmount DESC) AS rank

FROM orders;
