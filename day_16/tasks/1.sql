USE Day_16;

-- query to calculate the running total of SaleAmount for each row ordered by SaleDate
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

SUM(SaleAmount) OVER(ORDER BY SaleDate) AS running_saleamount_total

FROM orders;
