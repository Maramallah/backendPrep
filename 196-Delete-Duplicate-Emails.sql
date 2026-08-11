# Write your MySQL query statement below
DELETE FROM Person
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               email,
               RANK() OVER (PARTITION BY email ORDER BY id) AS num
        FROM Person
    ) t
    WHERE num != 1
);