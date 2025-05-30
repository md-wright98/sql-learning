## 1378. Replace Employee ID With The Unique Identifier
## https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50

## Problem: return the name of each user from the Employees table and their unique id from the EmployeeUNI table

SELECT u.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI u
ON u.id = e.id

## join the tables together and show both the name and unique ID of each employee, using a LEFT JOIN from the employee table ensures that every eomployee is shown even if their ID null
