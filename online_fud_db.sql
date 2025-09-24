create database online_fd_delivery;
use online_fd_delivery;
create table customer(id int auto_increment primary key,
                      name varchar(20),
                      age int check(age<21),
                      phone varchar(12),
                      city varchar(20),
                      date date);
create table order_products(id int auto_increment primary key,
                            title varchar(20),
                            price int,
                            restaurant_name varchar(50),
                            customer_id int,
                            status enum("pending","accepted","completed"),
                            foreign key (customer_id) references  customer(id)on delete cascade);
show tables;
describe customer;
describe order_products;
insert into customer(name,age,phone,city,date)values("savitha",18,"4568239047","otp","2025-09-24"),
													("dona",16,"1234567894","pkd","2025-05-14"),
                                                    ("haritha",20,"1243672098","pkd","2025-05-11");
insert into order_products(title,price,restaurant_name, customer_id, status)values("biriyani",120,"arabian",1,"pending"),
                                                                                  ("mandhi",540,"nila",2,"accepted"),
                                                                                  ("fried-rice",160,"nalanda",3,"completed");
select * from customer;

select * from order_products;

-- update the status of specific  order fromn table order_producst--

update  order_products set title ="kanji" where id = 1;

-- delete a customer from customer table--

delete customer from customer  where id = 2; 

-- get customer from a specific city--

select * from customer where city = "otp";

-- get customer name along with product title and restuarant name--  

select customer.name,order_products.title,order_products. restaurant_name from customer join order_products on order_products.customer_id = customer.id;

-- display customer name among with total count of orders--

select customer.name,count(order_products.title) as total_orders from customer join order_products on customer.id = order_products.customer_id group by customer.name;

-- display the customer name,order name of specific status--

select customer.name,order_products.title from customer join order_products on customer.id = order_products.customer_id where order_products.status = "pending";

update order_products set order_products.title = "chicekn65,kfc" where id = 1;

-- dispLy order details of specific status--

select customer.name,order_products.title,order_products.price from customer join order_products on customer.id = order_products.customer_id where order_products.status = "completed";

-- total amount of whole orders--

select sum(price)as total_price from order_products ;  






  
