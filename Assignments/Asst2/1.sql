.print Question 1 - rbrooks
SELECT users.email, users.name
FROM users, sales, bids
WHERE bids.bidder = sales.lister
AND sales.sid = bids.sid
AND users.email = bids.bidder;