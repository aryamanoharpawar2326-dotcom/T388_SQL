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