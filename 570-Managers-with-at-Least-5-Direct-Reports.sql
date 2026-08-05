# Write your MySQL query statement below
select name from (
select  e.name as name , e.id 
from 
Employee m  join Employee e
on e.id = m.managerId
group by name , id
having  count(*)  >=5)t
