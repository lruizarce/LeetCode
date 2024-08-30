-- Write your PostgreSQL query statement below
-- confirmation rate = # confirmed/ total requested confirmation
SELECT
    s.user_id,
    ROUND(AVG(CASE WHEN c.action = 'confirmed' THEN 1 ELSE 0 END)::NUMERIC, 2) AS confirmation_rate
FROM
    signups s
LEFT JOIN
    Confirmations c ON s.user_id = c.user_id
GROUP BY
    s.user_id;
