//problem link: https://leetcode.com/problems/biggest-single-number/

# Write your MySQL query statement below
select (
    SELECT num
    FROM MyNumbers
    GROUP BY (num)
    HAVING COUNT(num)=1
    ORDER BY num DESC
    LIMIT 1
)As num;