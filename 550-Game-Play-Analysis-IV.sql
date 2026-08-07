# Write your MySQL query stat
select 
round(sum(if(DATEDIFF(nextLog,event_date )=1 , 1 , 0))/count(player_id),2) as fraction
from (
select player_id ,min(event_date) as event_date, nextLog from (
select player_id ,event_date  ,
lead(event_date) over (partition by player_id order by  event_date) as nextLog
from Activity) t
group by player_id) b
