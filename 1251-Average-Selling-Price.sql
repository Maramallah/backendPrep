# Write your MySQL query statement below
select product_id ,round(ifnull((sum(price*units)/sum(units)),0), 2) as average_price
 from (
select p.product_id , u.units , p.price 
from
 Prices p left join UnitsSold u 
 on p.product_id = u.product_id
 and u.purchase_date between p.start_date and p.end_date) t

group by product_id