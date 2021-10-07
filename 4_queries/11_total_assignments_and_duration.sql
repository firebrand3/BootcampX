SELECT day, COUNT(content), SUM(duration)
FROM assignments
GROUP BY day
ORDER BY day;