## 1068. Product Sales Analysis I
## https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: return a table reporting the product_name, year and price for each sale_id in the Sales table

SELECT p.product_name, s.year, s.price
FROM Sales s
LEFT JOIN Product p
ON s.product_id = p.product_id

## join the two tables together using the product_id key and then select relevant fields, use left join to ensure all sales are included in the table
