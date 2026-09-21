create table arya
(ID int primary key,
NAme varchar(30) not null,
Age int not null
);
insert into arya values
(101, "pawar", 21),
(102, "heramb", 26),
(103, "megha", 48),
(104,"manohar", 50);
use t388;
select * from arya;
alter table arya add sr_no int first;
alter table arya add surname varchar(30) after name ;
alter table arya modify surname varchar(50);
desc arya;
update arya set surname = "pawar";
alter table arya modify surname varchar(50) check (surname <> 'sharma'); 
insert into arya values
(1,105, "paw","arya", 21);
insert into arya values
(3,106,"aru","sharma",20);