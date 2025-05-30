## 1148. Article Views I
## https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: find all the authors that viewed at least one of their own articles and return results sorted in ascending id order

SELECT DISTINCT author_id as id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id

## select all the unique author IDs that appear in a row where author id matches viewer id, and then alias and order according to problem specs
