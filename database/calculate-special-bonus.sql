# Write your MySQL query statement below
Select employee_id,
case
when (employee_id %2= 1  and name not like 'M%') then salary
else 0
END AS bonus

From Employees order by employee_id;
