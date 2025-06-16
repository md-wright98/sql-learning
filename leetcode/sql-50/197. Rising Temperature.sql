## 197. Rising Temperature
## https://leetcode.com/problems/rising-temperature/?envType=study-plan-v2&envId=top-sql-50

## Problem: return the IDs of all the dates where the temperature was higher than the day before

SELECT w1.id AS Id
FROM weather AS w1
JOIN weather AS w2
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature

## use DATEDIFF to perform a self join, joining rows that are one day apart and then filtering for days where the temperature is
## larger than the day before
