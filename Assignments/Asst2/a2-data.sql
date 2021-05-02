-- Data prepared by Hyunseo Jho, hyunseo@ualberta.ca, and published on 2020-01-31
-- Revised on 2020-02-08 for Q1
-- Please set SQL's date as published date of 2020-01-31

-- users: email, name, pwd, city, gender
insert into users values ('reindeer23@gmail.com', 'Jane Doe', '4231', 'Edmonton', 'F');
insert into users values ('astro44@hotmail.com', 'Celestie Winnin', '1777', 'Calgary', 'F');
insert into users values ('mklee@naver.com', 'Michael Kim', '2947', 'Edmonton', 'M');
insert into users values ('dbals21@gmail.com', 'Joseph Stephens', '6909', 'Red Deer', 'M');
insert into users values ('coolaids@hotmail.com', 'Peter Parker', '1111', 'Sherwood Park', 'M');
insert into users values ('susanh@gmail.com', 'Susan Heims', '0324', 'Edmonton', 'F');
insert into users values ('dinocoth@ualberta.ca', 'Colin Cheung', '8848', 'Edmonton', 'M');
insert into users values ('idkemail@gmail.com', 'Hanna Montana', '6666', 'San Diego', 'F');
insert into users values ('pogo111@ualberta.ca', 'Pokemon Go', '3932', 'Kanto', 'M');

-- products: pid, description
insert into products values ('NK12', 'Nikon F100');
insert into products values ('GC37', 'Nintendo DS');
insert into products values ('TK01', 'HM Concert Ticket');
insert into products values ('AC66', 'Gucci Belt');
insert into products values ('FN24', 'LG TV');
insert into products values ('CP78', 'GTX 1070');
insert into products values ('GM00', 'Animal Crossing DS');
insert into products values ('GC99', 'Xbox');
insert into products values ('GC01', 'PS4 Pro');

-- sales: sid, lister (email), pid, end date, description, condition, registered price
insert into sales values ('S01', 'dinocoth@ualberta.ca', 'GC99', '2020-02-01', 'Good deal for xbox', 'New', 300);
insert into sales values ('S02', 'reindeer23@gmail.com', 'NK12','2020-02-20', 'Selling Nikon F100', 'Used', 350);
insert into sales values ('S03', 'astro44@hotmail.com', 'GC37', '2020-01-25', 'New DS for sale', 'New', 120);
insert into sales values ('S04', 'idkemail@gmail.com', 'TK01', '2020-02-28', 'Rare concert ticket', 'New', 300);
insert into sales values ('S05', 'mklee@naver.com', 'AC66', date('now','+2 day'), 'Gucci belt used once', 'Used', 500);
insert into sales values ('S06', 'dbals21@gmail.com', 'FN24', date('now','+2 day'), '40 inch LG TV for sale', 'Mint', 500);
insert into sales values ('S07', 'coolaids@hotmail.com', 'CP78', '2020-02-13', 'Latest GPU for good deal', 'Mint', 450);
insert into sales values ('S08', 'pogo111@ualberta.ca', 'GC99', '2020-01-30', 'Xbox mint condition', 'Mint', 350);
insert into sales values ('S09', 'susanh@gmail.com', 'GM00', date('now','+1 day'), 'Sell old DS game', 'Used', 30);
insert into sales values ('S10', 'pogo111@ualberta.ca', 'GC01', '2020-03-02', 'Package deal PS4 Pro', 'Used', 450);
insert into sales values ('S11', 'dinocoth@ualberta.ca', 'GC01', '2020-03-03', 'Cheap PS4 Pro', 'Mint', 380);
insert into sales values ('S12', 'coolaids@hotmail.com', 'TK01', '2020-01-23', 'Some concert ticket', 'New', 120);

-- bids: bid, bidder (email), sid, bid placed date, amount
insert into bids values ('B01', 'astro44@hotmail.com', 'S02', '2020-01-24', 320.00);
insert into bids values ('B02', 'pogo111@ualberta.ca', 'S03', '2020-01-17', 132.50);
insert into bids values ('B03', 'dbals21@gmail.com', 'S02', '2020-01-28', 480.00);
insert into bids values ('B04', 'mklee@naver.com', 'S01', '2020-01-15', 100.50);
insert into bids values ('B05', 'idkemail@gmail.com', 'S06', '2020-01-03', 420.50);
insert into bids values ('B06', 'dinocoth@ualberta.ca', 'S05', '2020-01-22', 580.12);
insert into bids values ('B07', 'mklee@naver.com', 'S04', '2020-01-24', 130.30);
insert into bids values ('B08', 'astro44@hotmail.com', 'S12', '2020-01-03', 50.50);
insert into bids values ('B09', 'susanh@gmail.com', 'S05', '2020-01-30', 600.00);
insert into bids values ('B10', 'susanh@gmail.com', 'S08', '2020-01-29', 255.00);
insert into bids values ('B11', 'pogo111@ualberta.ca', 'S04', '2020-01-25', 150.00);
insert into bids values ('B12', 'dinocoth@ualberta.ca', 'S01', '2019-02-03', 100.00);
insert into bids values ('B13', 'idkemail@gmail.com', 'S04', '2019-09-09', 50.00);

-- items: sid, number?, pid, description
insert into items values ('S02', 1, 'NK12', 'Nikon F100 body');
insert into items values ('S02', 2, 'NK12', 'Nikon 50mm, f/1.4 lens');
insert into items values ('S02', 3, 'NK12', 'Kodak 35mm film');
insert into items values ('S03', 1, 'GC37', 'DS Lite');
insert into items values ('S03', 2, 'GC37', 'charger');
insert into items values ('S06', 1, 'FN24', '40inch LED LG TV');
insert into items values ('S06', 2, 'FN24', 'TV stand');
insert into items values ('S10', 1, 'GC01', 'PS4 Pro');
insert into items values ('S10', 2, 'GC01', 'Monster Hunter World');
insert into items values ('S10', 3, 'GC01', '32inch monitor');

-- reviews: reviewer (email), reviewee (email), rating, review text, review date
insert into reviews values ('reindeer23@gmail.com', 'astro44@hotmail.com', 2.3, 'rude', '2020-01-25');
insert into reviews values ('astro44@hotmail.com', 'pogo111@ualberta.ca', 9.0, 'polite and cute name', '2020-01-31');
insert into reviews values ('pogo111@ualberta.ca', 'astro44@hotmail.com', 8.5, 'friendly dealer', '2019-12-03');
insert into reviews values ('mklee@naver.com', 'dinocoth@ualberta.ca', 1.0, 'tried to scam me', '2020-01-25');
insert into reviews values ('reindeer23@gmail.com', 'dbals21@gmail.com', 7.5, 'negotiable bidder', '2020-01-30');
insert into reviews values ('idkemail@gmail.com', 'pogo111@ualberta.ca', 8.2, 'kind dealer', '2020-01-01');
insert into reviews values ('dbals21@gmail.com', 'idkemail@gmail.com', 2.2, 'crazy lady', '2019-07-22');
insert into reviews values ('susanh@gmail.com', 'pogo111@ualberta.ca', 9.7, 'very understanding', '2020-01-12');
insert into reviews values ('reindeer23@gmail.com', 'idkemail@gmail.com', 1.1, 'sing better', '2019-08-27');
insert into reviews values ('reindeer23@gmail.com', 'mklee@naver.com', 4.5, 'scary guy', '2020-01-08');
insert into reviews values ('astro44@hotmail.com', 'mklee@naver.com', 6.6, 'quite professional', '2019-12-25');
insert into reviews values ('astro44@hotmail.com', 'dbals21@gmail.com', 7.8, 'got a nice smile', '2020-01-19');
insert into reviews values ('astro44@hotmail.com', 'dinocoth@ualberta.ca', 1.0, 'ganged up on me', '2018-05-29');
insert into reviews values ('dbals21@gmail.com', 'coolaids@hotmail.com', 10.0, 'great personality', '2019-11-11');
insert into reviews values ('dbals21@gmail.com', 'dinocoth@ualberta.ca', 1.0, 'scammed me', '2019-09-11');
insert into reviews values ('dbals21@gmail.com', 'mklee@naver.com', 7.5, 'cool guy', '2020-01-29');
insert into reviews values ('susanh@gmail.com', 'coolaids@hotmail.com', 8.8, 'tough guy', '2019-10-23');
insert into reviews values ('susanh@gmail.com', 'dbals21@gmail.com', 3.7, 'weird accent', '2020-01-29');
insert into reviews values ('susanh@gmail.com', 'idkemail@gmail.com', 6.5, 'like her fashion', '2018-03-14');
insert into reviews values ('idkemail@gmail.com', 'reindeer23@gmail.com', 8.2, 'friendly gesture', '2019-05-16');
insert into reviews values ('idkemail@gmail.com', 'astro44@hotmail.com', 5.1, 'nice hat', '2020-01-23');
insert into reviews values ('idkemail@gmail.com', 'coolaids@hotmail.com', 9.9, 'I like coolaids', '2020-01-31');

-- previews: preview id, pid, reviewer (email), rating, review text, review date
insert into previews values ('1', 'NK12', 'reindeer23@gmail.com', 8.8, 'captures good photo', '2019-08-29');
insert into previews values ('2', 'AC66', 'mklee@naver.com', 6.5, 'kinda expensive', '2019-10-23');
insert into previews values ('3', 'GM00', 'susanh@gmail.com', 7.9, 'cute n fun game', '2019-12-01');
insert into previews values ('4', 'NK12', 'dbals21@gmail.com', 7.4, 'clear images', '2020-01-29');
insert into previews values ('5', 'GC37', 'pogo111@ualberta.ca', 10.0, 'Pokemon runs well', '2020-01-29');
insert into previews values ('6', 'CP78', 'dinocoth@ualberta.ca', 8.8, 'terrific graphics', '2019-10-02');
insert into previews values ('7', 'FN24', 'idkemail@gmail.com', 4.2, 'bad resolution', '2018-03-20');
insert into previews values ('8', 'GC01', 'pogo111@ualberta.ca', 10.0, 'I love MHW', '2019-09-23');
insert into previews values ('9', 'GC99', 'pogo111@ualberta.ca', 5.5, 'not many games', '2019-11-01');
insert into previews values ('10', 'GC01', 'coolaids@hotmail.com', 8.5, 'good fps', '2020-01-12');
insert into previews values ('11', 'NK12', 'coolaids@hotmail.com', 8.0, 'worth the price', '2019-08-11');
insert into previews values ('12', 'GC37', 'astro44@hotmail.com', 9.5, 'fun and nostalgic', '2019-07-30');
insert into previews values ('13', 'NK12', 'idkemail@gmail.com', 10.0, 'I look good in it', '2019-11-23');