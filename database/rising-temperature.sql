SELECT 
    w2.id
FROM 
    Weather w1
JOIN
    -- We do the INTERVAL '1 day' to compare the previous day to the current day
    Weather w2 ON w2.recordDate = w1.recordDate + INTERVAL '1 day'
WHERE 
    w2.temperature > w1.temperature;
