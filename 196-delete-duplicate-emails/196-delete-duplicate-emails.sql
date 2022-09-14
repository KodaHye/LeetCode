# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

DELETE FROM person
WHERE id NOT IN (
SELECT sub.min_id
FROM (
SELECT email, MIN(id) AS min_id
FROM person
GROUP BY email
) sub

)
