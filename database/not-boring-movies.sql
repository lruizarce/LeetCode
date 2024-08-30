# Write your MySQL query statement below
# Want: odd num ID and description is not boring.

SELECT 
    *
FROM
    Cinema
WHERE id % 2 = 1 AND description <> 'boring'
ORDER BY rating DESC