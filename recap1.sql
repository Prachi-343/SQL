use recap;
create table employee(emp_id int auto_increment,
f_name varchar(30),
l_name varchar(30),
salary integer,
primary key(emp_id));
select * from employee;
describe employee;
insert into employee(f_name,l_name,salary)values
("prachi","mate",50000),
("siddarth","gadge",100000),
("harsh","mate",60000),
("samruddhi","gadge",70000);
select *from employee;
update employee set salary=80000 where emp_id=1;
update employee set f_name="chipruuuu" where emp_id=1;
update employee set f_name="prachi" where emp_id=1;
alter table employee
add city varchar(20) ;
alter table employee drop column city;
alter table employee rename column f_name to name ;
alter table employee modify column name varchar(20);

create table customer(id int auto_increment ,
f_name varchar(30)not null,
l_name varchar(30),
phone varchar(10)unique,
city varchar(30),
primary key(id));

insert into customer (f_name,l_name,phone,city)values
("prachi","mate",8010187730,"pune");

select * from customer;
insert into customer (f_name,l_name,phone,city)values
("siddarth","gadge",8625874209,"mumbai");
alter table customer add adhar varchar(12);
alter table customer add constraint unique (adhar);
alter table customer add constraint uk unique (f_name,l_name);
insert into customer (f_name,l_name,phone,city)values
("harsh","mate",8010187731,"nashik");






