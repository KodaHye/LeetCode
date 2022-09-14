SELECT today.id AS id
FROM weather AS today
     INNER JOIN weather AS yesterday ON DATE_ADD(yesterday.recordDate, INTERVAL 1 DAY) = today.recordDate
WHERE today.temperature > yesterday.temperature
