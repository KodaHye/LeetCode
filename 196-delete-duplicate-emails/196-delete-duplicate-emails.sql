# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below

# DELETE FROM person
# WHERE id NOT IN (
#     SELECT sub.min_id
#     FROM (
#     SELECT email, MIN(id) AS min_id
#     FROM person
#     GROUP BY email
#     ) sub
# )

DELETE p1
FROM person AS p1
    INNER JOIN person AS p2 ON p1.email = p2.email
WHERE p1.id > p2.id
