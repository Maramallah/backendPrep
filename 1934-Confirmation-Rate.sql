# Write your MySQL query statement below
select u.user_id, 
ROUND(IFNULL(AVG(action = 'confirmed'), 0), 2) AS confirmation_rate
from Signups u left join Confirmations c
on u.user_id= c.user_id 
group by u.user_id
