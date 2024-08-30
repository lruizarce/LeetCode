# Write your MySQL query statement below
-- Want: id who are both low fat and recyclable

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'