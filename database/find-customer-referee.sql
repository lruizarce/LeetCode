# Write your MySQL query statement below
-- Want: not reffered by customer with id = 2

SELECT
    name
FROM Customer
WHERE referee_id <> 2 OR referee_id is NULL