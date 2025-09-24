create database luminar_db;
use luminar_db;
create table trainer(id int auto_increment primary key,
                    name varchar(20),
                    course varchar(20),
                    email varchar(50) unique,
                    age int check(age >18),
                    gender enum("male","female","others"),
                    salary int check(salary>=18000) default 18000,
                    qualification varchar(30),
                    experience int);
create table student_details(id int auto_increment primary key,
							 name varchar(20) not null,
                             email varchar(50) unique,
                              age int check(age >16),
                              trainer_id int,
                              gender enum("male","female","others"),
                              foreign key( trainer_id ) references trainer(id));
describe trainer;
describe student_details;

insert into trainer(name,course,email,age,gender,salary,qualification,experience)values("sajay","python fullstack","sajay@gmail.com",30,"male",30000,"MCA",5),
																					("surya","mern stack","surya@gmail.com",28,"female",25000,"MSC",3),
                                                                                    ("vikram","DS","vikram@gmail.com",30,"male",40000,"MSC",8);
                                                                                    
select * from trainer;

insert into student_details(name,email,age,trainer_id ,gender)values("anu","anu@gmail.com",17,18,"female"),
                                                                    ("manu","manu@gmail.com",19,19,"male"),
                                                                    ("kiran","kiran@gmail.com",20,20,"male"),
                                                                    ("manju","manju@gmail.com",21,18,"female"),
                                                                    ("anagha","anagha@gmail.com",21,19,"female");
select name from student_details where gender="male";

select name,salary from trainer where experience>1;

select trainer.name , student_details.name from  trainer join student_details on trainer.id = student_details.trainer_id;

-- display the trainer name ,trainer course and student name--

select trainer.name, trainer.course, student_details.name from trainer join student_details on trainer.id = student_details.trainer_id;

-- name of trainers and students who having course DS-- 

select trainer.name , student_details.name from trainer join student_details on trainer.id = student_details.trainer_id where trainer.course = "DS";

select student_details.name, trainer.course,trainer.qualification from  student_details join trainer on trainer.id = student_details.trainer_id;

select trainer.name,(count(student_details.id)) as total_students from student_details join trainer on trainer.id = student_details.trainer_id group by trainer.name;










                              
                              
                             
                             