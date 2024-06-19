create database chipru;
use chipru;
create table prachi(id int,
f_name varchar(30),
l_name varchar(30),
contact varchar(30),
city varchar(30),
location varchar(30));
alter table prachi
add primary key(id);
alter table prachi
add constraint unique(contact);
describe prachi;
insert into prachi values
(1,"prachi","mate",8010187730,"pune","narayagaon"),
(2,"siddarth","gadge",8625874209,"pune","sangavi"),
(3,"harsh","mate",8010187732,"pune","kalpataru"),
(4,"sam","gadge",9561384209,"pune","lonavala"),
(5,"omkar","thorat",7276420945,"mumbai","nerul");
select*from prachi;
update prachi set location="vallabh nagar" where id=2;
create table orders(order_id int,
order_no int,
id int,
primary key(order_id),
foreign key(id)references prachi(id));
describe orders;

select*from orders;
select*from prachi inner join orders on prachi.id=orders.id;
select*from prachi left join orders on prachi.id=orders.id;
select*from prachi right join orders on prachi.id=orders.id;
select *from orders;

use chipru;
create table voters(id int,
full_name varchar(30),
voter_id varchar(10)unique,
contact varchar(10),
age int,
primary key(id),
check(age>18));
insert into voters values(1,"siddarth gadge",101,8010187730,20);
insert into voters values(2,"prachi mate",102,9561384209,21);
select*from voters;
alter table voters
add constraint check(id<100);
alter table voters 
add constraint  check(voter_id>200);

use chipru;
create table shipping(id int,
full_name varchar(30),
contact varchar(10),
city varchar(30) default 'pune',
primary key(id));
insert into shipping values
(1,"prachi mate",8010187730,"pune");
select*from shipping;
insert into shipping(id,full_name,contact)values
(2,"siddarth gadge",8625874209);
alter table shipping alter contact set default '9561384209';
insert into shipping(id,full_name)values(4,"samruddhi gadge	






