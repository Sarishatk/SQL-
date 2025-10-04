create database bk;
use bk;
create table bookss(id int auto_increment primary key,
				   title varchar(23),
                   author varchar(20),
                   price int,
                   published_date date,
                   stock int );
                   
create table users(id int auto_increment primary key,
				   username varchar(20),
                   place varchar(20),
                   bookss_id int,
                   foreign key (bookss_id) references  bookss(id));
                   
-- insert 2 records in to the table--
insert into  bookss(title,author,price, published_date , stock,bookss_id)values('ramayanam','moulavi',180,'2025-10-04',4),
																	("adu_jeevitham","ramayyar",140,"2025-11-04",6);


insert into users(username,place,bookss_id)values("arun","otp",1),
                                               ("varun","pkd",2);
                                                                    

                                                                    
-- display all note books--
select * from bookss;



 
 

	