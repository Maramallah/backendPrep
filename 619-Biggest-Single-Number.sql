# Write your MySQL query statement below
#thats how you make it return null values if not found you select scaler always produces one row.
select (
select num  from MyNumbers
group by num 
having count(num) =1
order by num desc
limit 1) num