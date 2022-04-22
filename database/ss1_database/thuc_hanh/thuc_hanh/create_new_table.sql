-- create new database
create database my_table_database;
use my_table_database;
-- create new table
create table students(
	id int,
    `name` varchar(45),
    age int,
    coutry varchar(45)
);
-- insert table
insert into students (id, name, age, coutry) values (1, "Chien", 24, "Quang Binh"), (2, "Hoang", 24, "Quang Binh");
-- edit table
update students set name = "Chien1", age = 23, coutry = "Da Nang" where id = 1;
-- delete
delete from students where id = 1;
-- display table
select * from students;

