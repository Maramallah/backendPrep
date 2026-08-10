# Write your MySQL query statement below
select 
d.name as Department , 
e.name   as Employee  ,
e.salary as Salary  
from (
select departmentId , name   , salary   ,
DENSE_RANK() over (partition by departmentId order by Salary desc ) as r
from Employee ) e 
join Department  d 
on d.id = e.departmentId  
where e.r <=3