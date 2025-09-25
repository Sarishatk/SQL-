create database Movies;
use Movies;
create table movie(id int auto_increment primary key,
				  movie_name varchar(40),
                  language varchar(30),
                  director varchar(40),
                  runtime int);
create table table_reviews(id int auto_increment primary key,
                          user_name varchar(20),
                          comment varchar(50),
                          movie_id int,
                          foreign key (movie_id) references movie(id) on delete cascade);
insert into movie(movie_name,language,director,runtime)values("udayananu thaaram","malayalam","mohankumar",260),
                                                              ("none","english","stephen",190);
insert into  table_reviews(user_name, comment ,  movie_id )values("arun","awsome",1),
                                                                 ("varum","feel good",2);
                                                                 
 insert into movie(movie_name,language,director,runtime)values("avesham","malayalam","mathu",360);
                                                                
-- fetch all movies--
select * from movie;
select movie_name from movie;

-- fetch all reviews--
select * from table_reviews;

-- fetch movies in specific language--
select  movie_name from movie where  language = "english"; 


select movie_name from movie where runtime = (select max(runtime) from movie);


-- total count of movies--

select count(movie_name) from movie ;


-- show movie name along with username and review -- 

select movie.movie_name,table_reviews.user_name,table_reviews.comment from movie join table_reviews on movie.id = table_reviews.movie_id;


-- show all movies even they dont have review (left join)--

select  movie_name,table_reviews.comment from movie  left join table_reviews on movie.id = table_reviews.movie_id;

-- display movie name along count of review for it --

select movie_name , count( table_reviews.comment)as count_of_reviews from movie join table_reviews on movie.id = table_reviews.movie_id group by movie_name;

-- display movie namw language review for a specific director--

select movie_name ,  language from movie where director = "mohankumar";

-- show movie name with runtime above 120-- 

select movie_name ,runtime from movie where runtime > 120;


 

 
                          
                          

                  
                  
                  