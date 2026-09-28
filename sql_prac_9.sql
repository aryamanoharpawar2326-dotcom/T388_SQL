                     -- 9th prac --
                   -- outer join --
use t388;
select * from t388_names;
select * from t388_salary;

select n.ID as name_id,s.id as salary_id, name,salary
 from t388_names as n left join t388_salary as s 
 on s.ID = n.ID union all
select s.ID as salary_id,n.id as name_id, name,salary 
from t388_names as n right join t388_salary as s
 on s.ID = n.ID;

