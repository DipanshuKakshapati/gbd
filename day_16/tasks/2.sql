USE Day_16;

-- query to calculate the cumulative sales amount for each salesperson over time
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

SUM(SaleAmount) OVER(PARTITION BY Saleperson ORDER BY SaleDate) AS individual_saleperson_cumulative_sales_amount

FROM orders;
