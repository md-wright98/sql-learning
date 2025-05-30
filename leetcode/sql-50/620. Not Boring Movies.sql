## 620. Not Boring Movies
## https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: report on all movies in the database that have an odd-numbered id and have a description that is not "boring", return results in descending rating order

SELECT *
FROM Cinema
WHERE id % 2 != 0
AND description != 'boring'
ORDER BY rating DESC

# filter table for rows where id modulo 2 does not = 0 (odd numbers), and where description does not equal 'boring' and then order
