## 1075. Project Employees I
https://leetcode.com/problems/project-employees-i/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: find the average years of experience of all the employees assigned to a project, rounded to 2 digits

SELECT p.project_id, ROUND(AVG(e.experience_years),2) AS average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id = e.employee_id
GROUP BY p.project_id

# left join employees to the project table, group by project and take the average of the experience years of each employee on the project, rounded to 2 decimal places
