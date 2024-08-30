# Write your MySQL query statement below
# find the percentage of the users registered in each contest round 2 # dec

# Output: order by percent in DESC and Contest_id in ASC
SELECT contest_id
    , ROUND(COUNT(user_id) * 100 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Register 
GROUP BY contest_id
    ORDER BY percentage DESC, contest_id