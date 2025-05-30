## 1683. Invalid Tweets
## https://leetcode.com/problems/invalid-tweets/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: find the IDs of tweets with content consisting of strictly greater than 15 characters

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15

## use WHERE to filter for tweets where the length of the content field exceeds 15 characters
