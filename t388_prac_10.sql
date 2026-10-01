                                            -- 10th Practical --
                                            -- foreign key --

create database t388_2;
use t388_2;
create table students
(ID int primary key auto_increment,
Name varchar(20));
insert into students values
(101,"Kunal");
insert into students(name) values
("Suman");
create table info(
ID int,
Scores int,
foreign key (ID) references students(ID));

insert into info values (101,300),(102,400);
select * from info;



create database practice;
use practice;
create table member
(ID int primary key auto_increment,
Name varchar(20),
Salary int,
Martial_Status varchar(20));
insert into member values
(101,"Arya",50000,"Unmarried"),
(102,"Heramb",550000,"Unmarried");
insert into member values
(103,"Megha",70000,"married"),
(104,"Manohar",60000,"married");
select * from member;
select * from job;


create table job
(ID int,
Job varchar(20),
foreign key (ID) references member(ID));
insert into job values
(101,"Data Sci"),
(102,"Real Estate");
insert into job values(103,"Advocate");
insert into job values(104,"Advocate");
update job set  job = "Real Estate" where id = 104;
delete from job where id = 103;
update member set id = 201 where id = 101;