create database student;
show databases;
use student;
create table details(id int,name varchar(20),place varchar(30),age int,course char(20));
show tables;
describe details;
insert into details(id,name,place,age,course)values(1, "sarisha", "ottapalam", 21, "python"),
												   (2, "maneesh", "ottapalam", 20, "ds"),
                                                   (3,"anu", "palakkd", 18, "cs");
select * from details;
select name, place from details;

