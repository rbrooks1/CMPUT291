.print Question 2 - rbrooks
SELECT DISTINCT s.sid, s.lister, s.cond, s.rprice
FROM sales s, bids b, users u
WHERE s.descr LIKE '%voucher%'
OR s.descr LIKE '%ticket%'
AND b.bidder = u.email
AND u.city = 'Edmonton';