.echo on
DROP VIEW product_info;
-- Question 1
SELECT users.email, users.name
FROM users, sales, bids
WHERE bids.bidder = sales.lister
AND sales.sid = bids.sid
AND users.email = bids.bidder;
-- Question 2
SELECT DISTINCT s.sid, s.lister, s.cond, s.rprice
FROM sales s, bids b, users u
WHERE s.descr LIKE '%voucher%'
OR s.descr LIKE '%ticket%'
AND b.bidder = u.email
AND u.city = 'Edmonton';
-- Question 3
SELECT sales.sid, sales.lister
FROM sales
WHERE DATE('now', '+3 day') = sales.edate
EXCEPT
SELECT sales.sid, sales.lister
FROM sales, bids
WHERE sales.rprice >= bids.amount
AND sales.sid = bids.sid;
-- Question 4
SELECT sales.sid, sales.descr, sales.cond, COUNT(bids.bid), MAX(bids.amount), (JULIANDAY(sales.edate) - JULIANDAY('now')) AS dateDiff
FROM sales
LEFT JOIN bids ON sales.sid = bids.sid
WHERE sales.edate > DATE('now')
GROUP BY sales.sid;
--Question 5
SELECT s.sid, s.lister, p.pid, MAX(b.amount) AS lbid
FROM sales s, products p, bids b
WHERE s.descr LIKE '%xbox%'
AND s.pid = p.pid
GROUP BY s.sid, s.lister, p.pid
HAVING 2 * lbid < (SELECT MAX(bi.amount)
FROM sales sa, products pr, bids bi
WHERE p.pid = sa.pid 
AND sa.sid = bi.sid);
--Question 6
SELECT s.sid
FROM sales s, reviews r
WHERE s.descr LIKE '%PS4%'
AND 3 <= (SELECT COUNT(*)
FROM users u, reviews re, sales sa
WHERE u.email = re.reviewee
AND sa.lister = u.email)
GROUP BY s.sid
HAVING AVG(r.rating) > 4;  
-- Question 7 
-- Question 8
SELECT u.email, AVG(r.rating)
FROM users u, reviews r
GROUP BY u.email
HAVING COUNT(*) >= 3
ORDER BY u.email DESC
LIMIT 5;
-- Question 9
CREATE VIEW product_info(pid, descr, revcnt, rating, rating6, salecnt)
AS SELECT p.pid, p.descr, COUNT(r.pid), AVG(r.rating), AVG(rs.rating), COUNT(s.sid)
FROM products p, previews r, previews rs, sales s, items i
INNER JOIN sales sa ON sa.pid = i.pid
WHERE p.pid = s.pid
OR p.pid = i.pid
AND rs.rdate >= DATE('now', '-6 months');
-- Question 10
SELECT u.email
FROM product_info pi, users u, sales s
WHERE pi.rating > 4
AND pi.salecnt > (SELECT AVG(pri.salecnt)
FROM product_info pri)
AND pi.pid = s.pid
AND s.lister = u.email;