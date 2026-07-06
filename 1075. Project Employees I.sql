//problem link: https://leetcode.com/problems/project-employees-i/

# Write your MySQL query statement below
SELECT p.project_id,ROUND(AVG(experience_years),2)as average_years
FROM project p LEFT JOIN Employee e
ON p.employee_id=e.employee_id
GROUP BY (project_id);
