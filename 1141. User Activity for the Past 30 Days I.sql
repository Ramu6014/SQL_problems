//problem link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/

# Write your MySQL query statement below
SELECT activity_date as day ,COUNT(DISTINCT user_id) AS active_users
FROM Activity
where activity_date between '2019-06-28' and '2019-07-27' 
GROUP BY activity_date