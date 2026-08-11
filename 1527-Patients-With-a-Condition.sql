# Write your MySQL query statement below
select * from Patients  
-- ^ → DIAB1 is at the beginning of the string
-- → DIAB1 is preceded by a space
WHERE conditions REGEXP '(^| )DIAB1';