# Write your MySQL query statement below
select  MAX(salary) as SecondHighestSalary from (
select dense_rank() over (order by salary desc ) as r , salary 
from Employee) t
where r=2