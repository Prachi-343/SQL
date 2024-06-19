create database recap;
use recap;
create table student(roll_no int,
f_name varchar(30),
l_name varchar(30),
marks int,
contact varchar(10));
insert into student values(1,"prachi","mate",80,8010187730);
select * from student;	
insert into student values(2,"siddarth","gadge",90,8625874209),
(3,"harsh","mate",85,9699057379),
(4,"sam","gadge",87,9561384209),
(5,"monika","datir",95,8054726388);
select f_name from student where l_name="gadge";
select * from student where l_name="mate";
select*from student where l_name="datir" or l_name="mate";
select* from student where  marks>85;
select * from student order by marks asc;
select*from student order by f_name desc;
describe student;
alter table student 



