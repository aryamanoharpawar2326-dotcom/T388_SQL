                                  -- WINDOWS FUNCTIONS --
use t388;
select * from employee;
select employeeid,fullname,salary,department,age,row_number() over(partition by department ) as ranking from employee;
select employeeid,fullname,salary,department,age,rank() over(order by salary) as ranking from employee;
select employeeid,fullname,salary,department,age,rank() over(order by department) as ranking from employee;
select employeeid,fullname,salary,department,age,dense_rank() over(order by salary) as ranking from employee;
select employeeid,fullname,salary,department,age,sum(salary) over(partition by department) as total,
avg(salary) over(partition by department) as average from employee where gender = "FEMALE" order by salary desc;
select employeeid,fullname,department,age,salary,lag(salary,3,0) over( order by employeeid) as lagging from employee order by employeeid,age;
select employeeid,fullname,department,age,salary,lead(salary,3,0) over( order by employeeid) as lagging from employee order by employeeid,age;

                           -- row number,rank,dense rank,lag,lead,first value --
                           

