## 2356. Number of Unique Subjects Taught by Each Teacher
## https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: Return a table containing the ID of each teacher and the total number of different subjects they teach

SELECT teacher_id, COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id

## simply done by grouping by each teacher and then counting the distinct subject ids
