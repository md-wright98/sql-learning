## 595. Big Countries
## https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: Find the name, population and area of countries classed as 'big' - area of at least 3,000,000 square km or population of at least 25,000,000

SELECT name, population, area
FROM World
WHERE area >= 3000000 OR population >= 25000000

## use WHERE to filter for both conditions, maiking sure to use >= as solution demands 'at least' not 'greater than'
