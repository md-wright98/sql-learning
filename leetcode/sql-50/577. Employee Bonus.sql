## 577. Employee Bonus
## https://leetcode.com/problems/employee-bonus/?envType=study-plan-v2&envId=top-sql-50

## Problem: return a table containing the name and bonus amount of every employee who got a bonus less than 1,000

SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empID = b.empID
WHERE b.bonus < 1000 OR b.bonus IS NULL

## join tables on empID and then filter for people who got no bonus (null) or a bonus less than 1000
