//problem link: https://leetcode.com/problems/swap-sex-of-employees/

# Write your MySQL query statement below
UPDATE Salary
SET sex=
    CASE
        WHEN sex='f' THEN 'm'
        ELSE 'f'
    END;