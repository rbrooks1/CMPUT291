.print Question 8 - rbrooks
SELECT u.email, AVG(r.rating)
FROM users u, reviews r
GROUP BY u.email
HAVING COUNT(*) >= 3
ORDER BY u.email DESC
LIMIT 5;