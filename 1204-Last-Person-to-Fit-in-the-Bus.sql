# Write your MySQL query statement below
select person_name from (
select person_name , 
sum(weight) over (order by turn) as TotalWeight
from Queue) t
where TotalWeight<= 1000
order by TotalWeight desc
limit 1
