USE Day_16;

-- querty to calculate moving average of sale amount between the current row and 2 preceeding rows.
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

AVG(SaleAmount) OVER(ORDER BY SaleAmount ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) AS moving_saleamount_avg

FROM orders;

-- querty to calculate moving average of sale amount between all the rows.
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

AVG(SaleAmount) OVER(ORDER BY SaleAmount) AS moving_saleamount_avg

FROM orders;

