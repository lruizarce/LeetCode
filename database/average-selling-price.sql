-- Write your PostgreSQL query statement below
-- 


SELECT  p.product_id, COALESCE(round(sum(u.units*p.price)::decimal/sum(u.units),2), 0) as average_price
FROM    prices p
LEFT JOIN   UnitsSold u on p.product_id = u.product_id AND u.purchase_date BETWEEN p.start_date and p.end_date
GROUP BY    p.product_id
ORDER BY    p.product_id;