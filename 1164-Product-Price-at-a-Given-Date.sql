# Write your MySQL query statement below
select distinct p.product_id , (
case 
when 
n.new_price is null then 10 
else n.new_price
end ) as price
from Products p
left join (
select product_id , new_price from Products 
where (product_id,change_date ) in(
select product_id , max(change_date) as change_date from Products 
where change_date <= '2019-08-16'
group by product_id )
) n
on p.product_id = n.product_id


