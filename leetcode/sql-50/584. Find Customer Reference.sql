## 584. Find Customer Reference
## https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: Find names of all customers that were not referred by customer with id = 2

SELECT name
FROM Customer
WHERE referee_id <> 2 OR referee_id IS NULL
