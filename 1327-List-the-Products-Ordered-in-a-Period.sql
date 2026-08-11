# Write your MySQL query statement below
select p.product_name , sum(r.unit) as unit
from Orders r join Products p
on r.product_id    = p.product_id  
where EXTRACT(year_month FROM r.order_date) = 202002    
group by r.product_id   
having sum(r.unit) >= 100