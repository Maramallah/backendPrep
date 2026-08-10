# Write your MySQL query statement below
WITH CumulativeWeight AS (
    SELECT 
        person_name,
        SUM(weight) OVER(ORDER BY turn ASC) AS Total_Weight
    FROM 
        Queue
)
SELECT 
    person_name
FROM 
    CumulativeWeight
WHERE 
    Total_Weight <= 1000
ORDER BY 
    Total_Weight DESC
LIMIT 1;