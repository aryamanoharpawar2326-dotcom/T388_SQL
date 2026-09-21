Create database pizza_sales_analysis;
show databases;
use T388;
create table `ORDER`  (
Id int primary key,
Date date not null
);
alter table orders add Time time after date;
rename table `order` to orders;
