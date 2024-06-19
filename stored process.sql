create database pm;
use pm;
create table students(id int not null,
f_name varchar(30),
l_name varchar(30),
marks integer);
insert into students values
(1,"prachi","mate",80),
(2,"siddarth","gadge",95),
(3,"sam","gadge",87),
(4,"harsh","mate",86),
(5,"omkar","thorat",90),
(6,"monika","datir",85);
select * from students;
call ranker(@prachi);
set @prachi=90;