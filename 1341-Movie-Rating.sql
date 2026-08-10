# Write your MySQL query statement below
(select u.name as results from 
Users u join MovieRating m
on u.user_id = m.user_id
group by u.user_id
order by count(m.user_id) desc , u.name
limit 1)
union all 
(select u.title  as results from 
Movies u join MovieRating m
on u.movie_id     = m.movie_id 
WHERE EXTRACT(year_month FROM created_at) = 202002
group by u.movie_id    
order by avg(m.rating) desc , u.title
limit 1)