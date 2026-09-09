use T388;
create table kisan_info
(Id int unique not null,
Name varchar(40) unique not null,
age int check (age>=18),
email_id varchar(40) default "dummy@gmail.com"
);
desc kisan_info;
insert into kisan_info
values
(101, "Bhagwandas",80,default),
(102,"sham",23,default);
select * from kisan_info;
alter table kisan_info modify age int check (age>=1);

insert into kisan_info
values
(103,"Bhagdas",2,default);
show create table kisan_info;
alter table kisan_info drop check kisan_info_chk_1;
employee
select distinct department from employee;
select distinct gender from employee;