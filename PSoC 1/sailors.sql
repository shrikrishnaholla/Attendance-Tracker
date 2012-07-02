drop schema if exists sailors;
create schema sailors;
use sailors;

create table sailors(
	sid integer,
	sname varchar(45),
	rating integer,
	age real,
	primary key (sid)
);

create table boats(
	bid integer,
	bname varchar(45),
	color varchar(45),
	primary key(bid)
);

create table reserves(
	sid integer,
	bid integer,
	day date,
	primary key(sid, bid, day),
	foreign key(sid) references Sailors,
	foreign key(bid) references Boats
);

insert into sailors (sid, sname, rating, age) values (22, 'Dustin', 7, 45.0), (29, 'Brutus', 1, 33.0), (31, 'Lubber', 8, 55.5), (32, 'Andy', 8, 25.5), (58, 'Rusty', 10, 35.0), (64, 'Horatio', 7, 35.0), (71, 'Zorba', 10, 16.0), (74, 'Horatio', 9, 35.0), (85, 'Art', 3, 25.5), (95, 'Bob', 3, 63.5); commit;

insert into boats (bid, bname, color) values (101, 'Interlake', 'blue'), (102, 'Interlake', 'red'), (103, 'Clipper', 'green'), (104, 'Marine', 'red'); commit;

insert into reserves (sid, bid, day) values (22, 101, '1998-10-10'), (22, 102, '1998-10-10'), (22, 103, '1998-8-10'), (22, 104, '1998-7-10'), (31, 103, '1998-10-11'), (31, 103, '1998-6-11'), (31, 104, '1998-12-11'), (64, 101, '1998-5-9'), (64, 102, '1998-8-9'), (74, 103, '1998-8-9'); commit;
