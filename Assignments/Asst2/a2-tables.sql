-- users(email, name, pwd, city, gender)
-- products(pid, descr)
-- sales(sid, lister, pid, edate, descr, cond, rprice)
-- bids(bid, bidder, sid, bdate, amount)
-- items(sid, no, pid, descr)
-- reviews(reviewer, reviewee, rating, rtext, rdate)
-- previews(rid, pid, reviewer, rating, rtext, rdate)
-- endorses(rid, endorser)

drop table if exists endorses;
drop table if exists previews;
drop table if exists reviews;
drop table if exists items;
drop table if exists bids;
drop table if exists sales;
drop table if exists products;
drop table if exists users;

PRAGMA foreign_keys = ON;

create table users (
  email char(20),
  name char(16),
  pwd char(4),
  city char(15),
  gender char(1),
  primary key (email)
);
create table products (
  pid char(4),
  descr char(20),
  primary key (pid)
);
create table sales (
  sid char(4),
  lister char(20) not null,
  pid char(4),
  edate date,
  descr char(25),
  cond char(10),
  rprice int,
  primary key (sid),
  foreign key (lister) references users,
  foreign key (pid) references products
);
create table bids (
  bid char(20), 
  bidder char(20) not null,
  sid char(4) not null, 
  bdate date, 
  amount float,
  primary key (bid),
  foreign key (bidder) references users,
  foreign key (sid) references sales
);
create table items (
  sid char(4),
  no int,
  pid char(4),
  descr char(25),
  primary key (sid,no),
  foreign key (sid) references sales on delete cascade,
  foreign key (pid) references products
);
create table reviews (
  reviewer char(20), 
  reviewee char(20), 
  rating float, 
  rtext char(20), 
  rdate date,
  primary key (reviewer, reviewee),
  foreign key (reviewer) references users,
  foreign key (reviewee) references users
);
create table previews (
  rid int,
  pid char(4),
  reviewer char(20) not null,
  rating float,
  rtext char(20),
  rdate date,
  primary key (rid),
  foreign key (pid) references products,
  foreign key (reviewer) references users
);
create table endorses (
  rid int,
  endorser char(20),
  primary key (rid, endorser),
  foreign key (rid) references previews,
  foreign key (endorser) references users
);