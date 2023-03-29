--DDL=data defintion language


drop table zomato;
create table zomato (
order_id integer,
order_date date,
item_name varchar(20),
payment_method varchar (50)
);
--DML=data manipulation language
insert into zomato values(1,'2023-03-22','cool_drinks','UPI');
--alter first datetime
alter table zomato alter column order_date datetime;
--alter first price user name with null
alter table zomato add price decimal (4,2), user_name varchar(20);
--drop column
alter table zomato drop column user_name;

--NOT NULL Constraint
drop table zomato;
create table zomato (
order_id integer NOT NULL unique,
order_date date,
item_name varchar(20),
payment_method varchar (50),
check (payment_method in ('UPI','CREDIT CARD'))
);
insert into zomato values(1,'2023-03-22','cool_drinks','UPI');
insert into zomato values(2,'2023-03-22','cool_drinks','UPI');
insert into zomato values(3,'2023-03-22','cool_drinks','INTERNET BANK');
alter table zomato add price decimal (4,2), user_name varchar(20);


--Default constraints
drop table zomato;
create table zomato (
order_id integer NOT NULL unique,
order_date date,
item_name varchar(20),
payment_method varchar (50),
catagory varchar (20) default 'biryani'
);
insert into zomato values(3,'2023-03-22','cool_drinks','UPI', default);



--primary key constraints
drop table zomato;
create table zomato (
order_id integer NOT NULL unique,
order_date date,
item_name varchar(20),
payment_method varchar (50),
catagory varchar (20) default 'biryani',
primary key (item_name)
);

insert into zomato values(3,'2023-03-22',null,'UPI', default);

--DQL=data querry language
select * from zomato;