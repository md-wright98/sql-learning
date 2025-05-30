## 1757. Recyclable and Low Fat Products  
## 🔗 [LeetCode #1757](https://leetcode.com/problems/recyclable-and-low-fat-products/)

## Problem: Write a solution to find the ids of products that are both low fat and recyclable.

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'

# simple problem - just need to filter for rows that meet both conditions using WHERE
