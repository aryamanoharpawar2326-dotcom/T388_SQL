                     -- 7th practical --
use t388;
                 -- multiple row subQuery --use in,any,all --

select * from employee;
select age from employee where employeeid in (1002,1003);
select age from employee where age in (select age from employee where employeeid in (1002,1003));
                 -- ANY OPERATER -- OR -- MORE THAN MINIMUM -- LESS THAN MAXIMUM --
select * from employee where salary > any(select salary from employee where employeeid in (1001,1002));
 -- shows values more than the minimum when used ANY where minimum is the salary of 1001 i.e 35000  --
select * from employee where salary >= any(select salary from employee where employeeid between 1001 and 1003); 
select * from employee where salary < any(select salary from employee where employeeid between 1001 and 1003); 
select * from employee where salary <= any(select salary from employee where employeeid between 1001 and 1003); 
                -- ALL OPERATER -- AND -- MORE THAN MAXIMUM -- LESS THAN MINIMUM --
select * from employee where salary >= all(select salary from employee where employeeid between 1001 and 1003);
select * from employee where salary < all(select salary from employee where employeeid in (1001,1003)); 

 -- shows values more than maxmimum when used ALL where maximum is the salary of 1003 i.e 50000 --


