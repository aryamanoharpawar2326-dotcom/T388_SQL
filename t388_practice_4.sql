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

