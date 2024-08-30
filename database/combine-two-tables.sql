# Write your MySQL query statement below
SELECT firstName, lastName, a.city, a.state
from Person
LEFT JOIN Address AS a
USING(personId)
