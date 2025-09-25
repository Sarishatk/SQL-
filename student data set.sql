create database stud_details;
use stud_details;
create table stud(id int auto_increment primary key,
				 name varchar(20) not null,
                 age int ,
                 place varchar(50));
create table marks(id int auto_increment primary key,
                  marks int,
                  stud_id int,
                  foreign key ( stud_id) references stud(id) on delete cascade);
insert into stud(name,age,place)values("amal",22,"kochi"),
                                      ("varun",23,"pkd"),
                                      ("meera",24,"chennai");
select * from stud;
insert into marks(marks, stud_id)values(50,1),
                                       (55,2);
select stud.name,marks.marks from stud left join marks on stud.id = marks.stud_id;

                                         
