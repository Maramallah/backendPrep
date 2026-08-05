# Write your MySQL query statement below
select s.student_id , s.student_name, ss.subject_name , count(e.student_id) as attended_exams
from Students s cross join Subjects ss
left join Examinations e
#join on the pair we want to get so the results won`t double
on s.student_id = e.student_id and  ss.subject_name  = e.subject_name 
group by ss.subject_name  , s.student_id
order by s.student_id  , ss.subject_name