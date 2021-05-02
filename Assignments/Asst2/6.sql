.print Question 6 - rbrooks
SELECT s.sid
FROM sales s, reviews r
WHERE s.descr LIKE '%PS4%'
AND 3 <= (SELECT COUNT(*)
FROM users u, reviews re, sales sa
WHERE u.email = re.reviewee
AND sa.lister = u.email)
GROUP BY s.sid
HAVING AVG(r.rating) > 4;