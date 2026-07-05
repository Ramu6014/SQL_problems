//problem link: https://leetcode.com/problems/classes-with-at-least-5-students/

# Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY (class)
HAVING COUNT(class)>=5;