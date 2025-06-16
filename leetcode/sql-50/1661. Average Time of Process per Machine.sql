## 1661. Average Time of Process per Machine
## https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

## Problem: Find the average processing time each machine takes to complete a task using the start and end timestamps, rounded to 3 decimal
            places

SELECT machine_id,
       ROUND(AVG(processing_time), 3) AS processing_time
FROM (SELECT machine_id, 
       process_id, 
       ROUND(MAX(timestamp) - MIN(timestamp), 3) AS processing_time
FROM Activity
GROUP BY machine_id, process_id) as subquery
GROUP BY machine_id

## use a subquery to create a table containing the processing time for each process, grouped by machine and process id, and then use this
## to calculate the average processing time of all the processes per machine by grouping by machine_id
