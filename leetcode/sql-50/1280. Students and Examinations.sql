## 1280. Students and Examinations
## https://leetcode.com/problems/students-and-examinations/?envType=study-plan-v2&envId=top-sql-50

## Problem: find the number of times each student attended each exam, order results by student_id and subject_name

## 1st Attempt:

SELECT st.student_id, st.student_name, su.subject_name, COUNT(*) AS attended_exams
FROM Students st
LEFT JOIN Examinations ex
ON st.student_id = ex.student_id
LEFT JOIN Subjects su
ON ex.subject_name = su.subject_name
GROUP BY st.student_name, ex.subject_name
ORDER BY student_id, subject_name

## ISSUE: every student took all three subjects, and this query does not return students who attended 0 exams for a subject, only those who did attend

## 2nd Attempt:

SELECT stu.student_id, 
       stu.student_name, 
       sub.subject_name,
       COUNT(exa.student_id) AS attended_exams
FROM Students AS stu
CROSS JOIN Subjects AS sub
LEFT JOIN Examinations AS exa
    ON stu.student_id = exa.student_id 
    AND sub.subject_name = exa.subject_name
GROUP BY stu.student_id, sub.subject_name
ORDER BY stu.student_id, sub.subject_name

## At the time I was not aware of CROSS JOIN, which facilitates creating a table that contains every combination of student and subject.
## Joining on two fields is then essential to get the right groupings in the GROUP BY clause
