select 3*4 as multiplication;
select 14/7 as Quotient;
select 15%5 as Remainder;
select 5+6 as Addition;
select 7-2 as Subtraction;
select 34>45 as compare;
select database();
-- Logical operators --
select 2<3 or 23>34 as or_result;
select not 23>34;
select 2<3 and 23>34 as and_result;

use t388;
select database();
show databases;

CREATE TABLE Employee (
  EmployeeId INT PRIMARY KEY,
  FullName VARCHAR(45) NOT NULL,
  Department VARCHAR(45) NOT NULL,
  Salary float NOT NULL,
  Gender VARCHAR(45) NOT NULL,
  Age INT NOT NULL
);







select * from Employee;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25);
delete from employee;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25), 
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27), 
(1003, 'James Brown', 'Finance', 50000, 'Male', 28), 
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26), 
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25), 
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27), 
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28), 
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28), 
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);