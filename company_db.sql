create database company_db;
use company_db; 
create table Employee(id int auto_increment primary key,
                     name varchar(20) not null,
                     dept enum("hr","it","intern"),
                     salary int check(salary > 8000) default 8001,
                     age int check(age > 18),
                     email varchar(50) unique,
                     phone_no varchar(10),
                     gender enum("Female", "Male", "Others"));
show tables;
describe Employee;
insert into Employee(name,dept, salary, age, email, phone_no, gender)values("sarisha", "hr", 25000, 21, "sarisha@gmail.com", "5678453289", "Female"),
                                                                            ("dona", "it", 12000,21, "dona@gmail.com", "6789765423","Female"),
                                                                            ("anagha","intern",18000,21, "anagha@gmail.com","1234567896","Female");
insert into Employee(name,dept, age, email, phone_no, gender)values("arun", "hr", 21, "arun@gmail.com","8769042356","Male"); 

