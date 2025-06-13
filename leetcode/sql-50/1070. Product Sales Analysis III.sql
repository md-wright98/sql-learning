## 1070. Product Sales Analysis III
## https://leetcode.com/problems/product-sales-analysis-iii/?envType=study-plan-v2&envId=top-sql-50

## Problem: For each product_id, find the earliest year it appears in the Sales table and then return all sales entries for the product
## in that year

SELECT product_id,
       year AS first_year,
       quantity,
       price
FROM (SELECT sale_id, 
       product_id,
       year,
       RANK() OVER (PARTITION BY product_id ORDER BY year ASC) AS year_rank,
       quantity,
       price
FROM sales) AS ranked_sales
WHERE year_rank = 1
  
## use RANK() window function to assign each year a rank, with 1 being for the earliest year. Filter the result to contain all the rows 
##  where the year is ranked 1, and show all sales records for these years
