-- 6 practical --
-- auto increment --
use t388;
select exp(2);
select power(2,4);
select pow(2,4);
select sqrt(16);
select *,sqrt(salary) from employee;

-- String Functions --
select concat("Good","Morning");
select *,concat(fullname, "-", department) as code from employee;
select *,concat(fullname, "@email.com") as email from employee;
select *,lower(fullname) as newname, upper(fullname) as Capitalname from employee;
alter table employee add EMAIL varchar(50);
update employee set EMAIL = concat(fullname, "@gmail.com");
select * from employee;
select replace("good morning","good","happy") as remark;
select fullname,replace(fullname,"Mohanty","Patil") from employee;
select fullname,replace(fullname,"Mohanty","Patil"),reverse(fullname) from employee;
select fullname,reverse(fullname) from employee;
select salary, length(salary) from employee;
select substring("Maharashtra",5,3);
select fullname,length(fullname),ltrim(fullname),length(ltrim(fullname)) as LTRIM from trimmer;
select fullname,length(fullname),rtrim(fullname),length(rtrim(fullname)) AS RTRIM from trimmer;
select fullname,trim(fullname) as trim_together from trimmer;

select age from employee where employeeID = 1002 ;

select age,count(*) from employee group by age;
select * from employee where salary =(select salary from employee where fullname="John Doe");   -- single row sub-query --
select age,count(*) from employee group by age;
select * from employee where department =(select department from employee where fullname="John Doe");
select max(salary) from employee;
select max(salary) from employee where salary <(select max(salary) from employee where salary<(select max(salary) from employee));