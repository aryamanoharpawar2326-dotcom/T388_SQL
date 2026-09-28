use t388;
select distinct age from employee;
select * from arya;
insert into arya values(
4, 110,"dam","shawn",23
);
use t388;
select exp(9);
select pow(6,2);
select sqrt(64);
select salary,sqrt(salary) from employee;
select concat("g","m");
select concat("g","m","w") as concat;
select * from employee;
select concat(title,fullname) as full from employee ;
select concat(title,"he/she",fullname) from employee;
select concat(fullname,"@gmail.com") from employee;
alter table employee add gmail varchar(220);
update employee set gmail = concat(fullname,"@gmail.com");
select replace("good morning","good","happy");
select fullname,replace(fullname,"John","roy") from employee;
select salary,length(salary) from employee;
select substring("rashtra",2,1);
select salary from employee where EmployeeId=1005;
select * from employee where department in(select Department from employee where department="IT");

select Department from employee where department="IT";

select salary+100 from employee where employeeid=1002;


use t388;
select prac_location.id,name,subject,location,marks,total_percent from Prac_location right join prac_percent on prac_location.id = prac_percent.id;


