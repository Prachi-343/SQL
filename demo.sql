create database sales;
use sales;
create table employee(emp_id int auto_increment,
f_name varchar(30),
l_name varchar(30),
salary integer,
primary key(emp_id));
describe employee;
insert into employee(f_name,l_name,salary)values
("prachi","mate",50),
("siddarth","gadge",100000),
("omkar","thorat",90000);
select*from employee;
update employee set salary= 50000 where emp_id=1;

create table students(roll_no int auto_increment,
f_name varchar(30),
l_name varchar(30),
marks integer,
primary key(roll_no));
describe students;
insert into students(f_name,l_name,marks)values
("prachi","mate",50),
("siddarth","gadge",95),
("omkar","thorat",90);
select *from students;
update students set marks=70 where roll_no=1;

create table jcoe(id int auto_increment,
f_name varchar(30),
l_name varchar(30),
subjet_name varchar(30),
primary key(id));
describe jcoe;
insert into jcoe(f_name,l_name,subjet_name)values
("srutika","buttepatil","hci"),
("monali","sinhalkar","ai"),
("shital","mandalik","dbms");
select *from jcoe;
update jcoe set subjet_name="cn" where id=1;
select subjet_name from jcoe where l_name="buttepatil";
select * from jcoe where id=2;
select f_name from jcoe;
select l_name  from jcoe order by l_name asc;
select subjet_name from jcoe where id=2 or id=3 order by subjet_name desc;
update jcoe set f_name="supriya" ,l_name="pawar" where id=1;
select* from jcoe;
alter table jcoe add enail varchar(30);
alter table jcoe drop column email;
alter table jcoe rename column enail to email;
alter table jcoe modify column email varchar(50);
use sales;
create table ig(roll_no int auto_increment,f_name varchar(30),l_name varchar(30),marks integer not null, primary key(roll_no));
describe ig;
insert into ig(f_name,l_name,marks)values("prachi","mate",70);
select*from ig;
insert into ig(f_name,l_name)values("siddarth","gadge");
alter table ig
modify column l_name varchar(30)not null;
use sales;
create table dmjc(id int auto_increment,
f_name varchar(30),
l_name varchar(30),
adhar varchar(30)unique,
contact varchar(30)unique,
primary key(id));
describe dmjc;
insert into dmjc(f_name,l_name,adhar,contact)values("prachi","mate",753145366552,9561384209);
insert into dmjc(f_name,l_name,adhar,contact)values("siddarth","gadge",876082270041,8625874209);
select *from dmjc;
alter table dmjc
add constraint uk unique(f_name);
describe dmjc;
alter table dmjc drop primary key;



 







-- select f_name from customer_info;

-- select f_name from customer_info where l_name="gadge";
-- select * from customer_info where l_name="gadge";
-- select * from customer_info where l_name="gadge"or l_name="mate";
-- select * from customer_info where l_name="gadge" and salary>200000;

-- select * from customer_info order by f_name asc;
-- select salary from customer_info order by f_name desc;


















