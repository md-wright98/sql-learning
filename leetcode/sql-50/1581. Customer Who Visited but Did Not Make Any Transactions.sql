## 1581. Customer Who Visited but Did Not Make Any Transactions
## https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/?envType=study-plan-v2&envId=top-sql-50

Problem: find the users who visited without completing a transcation and return a count of how many times they did so

SELECT v.customer_id, count(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id

## join both tables together to get a complete view of every visit, who it was made by and if there is an associated transaction, filter for rows where transaction id is NULL (no transaction completed),
## group by the customer_id and use count to find the number of times they visited without completing a transaction
