.print Question 10 - rbrooks
SELECT u.email
FROM product_info pi, users u, sales s
WHERE pi.rating > 4
AND pi.salecnt > (SELECT AVG(pri.salecnt)
FROM product_info pri)
AND pi.pid = s.pid
AND s.lister = u.email;