                        -- 8TH PRACTICAL --
						 -- JOINS --
use t388;
select * from t388_name;
select * from t388_salary;
select t388_names.id,salary,name from t388_names join t388_salary  -- inner join --
on t388_names.id = t388_salary.id;

select t388_names.id,salary,name from t388_names left join t388_salary  -- left join --
on t388_names.id = t388_salary.id;
select t388_names.id,salary,name from t388_salary left join t388_names  -- left join --
on t388_names.id = t388_salary.id;

select t388_names.id,salary,name from t388_names right join t388_salary  -- right join --
on t388_names.id = t388_salary.id;
