## 1141. User Activity for the Past 30 Days I
## https://leetcode.com/problems/user-activity-for-the-past-30-days-i/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: Return a table containing the number of distinct users for each day, for a period of 30 days ending on 2019-07-27

SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date <= '2019-07-27'
AND DATEDIFF('2019-07-27', activity_date) < 30
GROUP BY activity_date

## use COUNT DISTINCT on user_id to find the number of distinct users, grouping by each day, use WHERE to filter for the end date and then
## use DATEDIFF to filter for dates that are less than 30 days before the given end date
