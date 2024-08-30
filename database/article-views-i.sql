# Write your MySQL query statement below
# Want: authors that viewed at least one of their own

SELECT DISTINCT author_id as id
FROM Views
WHERE author_id = viewer_id
ORDER BY id ASC