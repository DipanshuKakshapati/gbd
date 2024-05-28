USE Day_16;

-- query to divide sales into 4 Quartiles by Sale Amount
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

-- NTILE funciton here groups rows into specified number of tiers (e.g., 4 tiers) based on the SaleAmount
NTILE(4) OVER(ORDER BY SaleAmount) AS salary_tier,

-- PERCENTILE_CONT funciton here calculates the quartile values (Q1, Q2, Q3, Q4) for the entire dataset and assigns these values to each row
PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY SaleAmount) OVER () AS Q1,

PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY SaleAmount) OVER () AS Q2,

PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY SaleAmount) OVER () AS Q3,

PERCENTILE_CONT(1) WITHIN GROUP (ORDER BY SaleAmount) OVER () AS Q4

FROM orders;