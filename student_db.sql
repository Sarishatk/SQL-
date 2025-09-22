create database school_db;
use school_db; 
create table student(id int auto_increment primary key,
                    name varchar(20) not null,
                    gender enum("female", "male", "others"),
                    email varchar(20) unique,
                    mark int check(mark > 40),
                    place varchar(20),
                    phone_num varchar(12));
show tables;
describe student;
insert into student(name,gender,email,mark,place,phone_num)values("sarisha","female","sarisha@gmail,com",100,"ottapalam","1245684562");
select * from student;