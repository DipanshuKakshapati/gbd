USE Day_16;

-- query to divide sales into 3 tiers by Sale Date
SELECT SaleID, Saleperson, SaleAmount, SaleDate,

-- NTILE funciton here groups rows into specified number of tiers (e.g., 4 tiers) based on the Sale Date
NTILE(3) OVER(ORDER BY SaleDate) AS salary_tier

FROM orders;

