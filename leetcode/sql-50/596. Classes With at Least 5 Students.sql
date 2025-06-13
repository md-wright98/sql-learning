## 596. Classes With at Least 5 Students
## https://leetcode.com/problems/classes-with-at-least-5-students/?envType=study-plan-v2&envId=top-sql-50

## Problem: Select all of the classes from the Courses table that have at least 5 students

## My original solution:
SELECT class
FROM (SELECT class,
       COUNT(student) AS student_count
FROM Courses
GROUP BY (class)) AS students_per_class
WHERE student_count >= 5
  
## Use a subquery to create a version of the table that is grouped by class and has the number of students counted, and then select class
## from the table and filter for courses where count >= 5

## After reviewing some other solutions I realised that in my quest to master more advanced SQL topics I was massively overcomplicating it 
## by forgetting the existence of HAVING, which lets you filter on aggregated rows

SELECT class
FROM courses
GROUP BY class
HAVING COUNT(student) >= 5
