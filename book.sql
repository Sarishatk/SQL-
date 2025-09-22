
create database book;
use book;
create table details(id int,title varchar(20), price int, genre varchar(20));
show tables;
describe details;
insert into details(id,title,price, genre)values(1,"thudarum", 150, "feel good"),
                                               (2,"ARM", 150, "action");
select * from details;