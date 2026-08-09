# Write your MySQL query statement below
#to return all sales for product we won`t group by it 

select product_id,
 year  as first_year ,
   quantity , 
   price
  from Sales
  where (product_id, year) in (
    select product_id,min(year) from 
    Sales
    group by product_id
  )
