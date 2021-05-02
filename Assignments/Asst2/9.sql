.print Question 9 - rbrooks
CREATE VIEW product_info(pid, descr, revcnt, rating, rating6, salecnt)
AS SELECT p.pid, p.descr, COUNT(r.pid), AVG(r.rating), AVG(rs.rating), COUNT(s.sid)
FROM products p, previews r, previews rs, sales s, items i
INNER JOIN sales sa ON sa.pid = i.pid
WHERE p.pid = s.pid
OR p.pid = i.pid
AND rs.rdate >= DATE('now', '-6 months');