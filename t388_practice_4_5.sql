use t388;
show tables;
select * from employee order by age;
select * from employee where gender = "female" order by age;
-- W H G O--CLAUSES
-- WHERE, GROUP BY [-HAVING], ORDER BY

select * from employee limit 5;
select department from employee group by department;
select gender,count(department) from employee group by gender;
select gender,sum(salary) from employee group by gender;
select department,sum(salary) from employee group by department;
select department,max(salary) from employee group by department;
select max(salary) from employee;
select avg(salary) from employee;
select avg(salary) as Average,sum(salary) as Sum from employee;

-- having clause --
select department,avg(age),count(*) from employee group by department having avg(age) <27;

CREATE TABLE Projects (
 ProjectId INT PRIMARY KEY AUTO_INCREMENT,
    ProjectName VARCHAR(200) NOT NULL,
 EmployeeId INT,
    StartDate DATETIME,
    EndDate DATETIME);
    INSERT INTO Projects VALUES 
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 10 DAY));

select * from Projects;
select now();
select *,datediff(enddate, startdate) as DUration from projects;
select * from Projects where datediff(enddate, startdate) = 45;
alter table projects add Duration varchar(20);
update projects set duration = datediff(enddate,startdate);
select duration,count(*) from projects group by duration;
select duration,count(*) from projects group by duration having count(*)>=2 limit 3;
select duration,count(*) from projects where duration>=20 group by duration having count(*)>=2 order by duration;

select * from employee order by EmployeeId desc limit 5;
select * from employee limit 2,3;

-- 5th practical continuation --
select distinct gender from employee;
select distinct department from employee;
select distinct age from employee;
select * from projects where employeeid is not null;
select * from projects where employeeid is null;
update projects  set employeeid = 1003 where projectid = 6;
desc projects;

-- IN, BETWEEN AND LIKE --
select * from employee where age between 25 and 28;
select * from employee where employeeid between 1003 and 1007;
select * from employee where employeeid in (1003,1005,1007);
select * from employee where employeeid = 1003 or employeeid = 1005 or employeeid = 1007;
select * from employee where age in (23,25,27) and department = "IT";

-- LIKE OPERATOR --
select * from employee where fullname like "m%";
select * from employee where fullname like "%y";
select * from employee where fullname like "%y%";
select * from employee where fullname like "%t_";

select * from t388.like;
select * from t388.like where fullname like "a%";
select * from t388.like where fullname like "_u%";
select * from `like`;
select * from t388.like where fullname like "%n%";
select * from t388.like where fullname like "a%t";
select avg(salary) from employee;
select min(salary) from employee;
select max(salary) from employee;
select count(*) from employee;
select count(*) as TotalEmp,avg(salary) as Avgsalary,sum(salary) as totalsalary from employee;

-- MATH FUNCTION --
select abs(-35); -- absolute function returns unsigned number --
select abs(500-800);
select (6*(-7));

select abs(datediff(startdate , enddate)) as duration from projects;
select mod(12,7) as remainder;
select ceil(33.7);
select floor(45.9);
select truncate(12456.234566,3);
select truncate(4578,-1);


