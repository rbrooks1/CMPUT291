.print Question 3 - rbrooks
SELECT sales.sid, sales.lister
FROM sales
WHERE DATE('now', '+3 day') = sales.edate
EXCEPT
SELECT sales.sid, sales.lister
FROM sales, bids
WHERE sales.rprice >= bids.amount
AND sales.sid = bids.sid;