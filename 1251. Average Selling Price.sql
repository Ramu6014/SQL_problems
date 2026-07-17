//problem link: https://leetcode.com/problems/average-selling-price/

# Write your MySQL query statement below
SELECT p.product_id,
 IFNULL(ROUND(SUM(
    CASE 
        WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units*p.price
        ELSE 0
    END

 ) / SUM(
    CASE 
        WHEN u.purchase_date BETWEEN p.start_date AND p.end_date THEN u.units
        ELSE 0
        END
 ) , 2),0) AS average_price
 FROM Prices p LEFT JOIN UnitsSold u
 ON p.product_id = u.product_id
 GROUP BY p.product_id;