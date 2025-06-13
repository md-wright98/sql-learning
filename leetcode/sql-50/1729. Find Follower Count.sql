## 1729. Find Follower Count
## https://leetcode.com/problems/classes-with-at-least-5-students/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: return the ID of each user and the count of their followers, order by user_id in ascending order

SELECT user_id,
       COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC

## Group by user, count the follower_ids for each user and then order by user_id in ascending order
