## 570. Managers with at Least 5 Direct Reports
## https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50

## Problem: Find managers who have at least 5 direct reports

SELECT emp2.name
FROM Employee AS emp1
JOIN Employee AS emp2
    ON emp1.managerId = emp2.id
GROUP BY emp1.managerID
HAVING COUNT(emp1.managerId) >=5

## solution involves a self join to have a table that contains the id and name of each employee and the id and name of their manager - 
## from here you can group by managerId (not name as different managers can have the same name) and filter for rows that have 5 or more
## instances of that managerId
