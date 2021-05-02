.print Question 4 - rbrooks
SELECT sales.sid, sales.descr, sales.cond, COUNT(bids.bid), MAX(bids.amount), (JULIANDAY(sales.edate) - JULIANDAY('now')) AS dateDiff
FROM sales
LEFT JOIN bids ON sales.sid = bids.sid
WHERE sales.edate > DATE('now')
GROUP BY sales.sid;