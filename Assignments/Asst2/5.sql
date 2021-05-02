.print Question 5 - rbrooks
SELECT s.sid, s.lister, p.pid, MAX(b.amount) AS lbid
FROM sales s, products p, bids b
WHERE s.descr LIKE '%xbox%'
AND s.pid = p.pid
GROUP BY s.sid, s.lister, p.pid
HAVING 2 * lbid < (SELECT MAX(bi.amount)
FROM sales sa, products pr, bids bi
WHERE p.pid = sa.pid 
AND sa.sid = bi.sid);