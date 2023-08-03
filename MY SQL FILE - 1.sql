create database employeesInfo;

use employeesInfo;

create table employees(
emp_id int not null,
first_name varchar(20),
last_name varchar(20),
salary int,
primary key(emp_id)
);

select * from employees;

describe employees;

alter table employees add column contact int;

describe employees;

select * from employees;

alter table employees rename column contact to job_code;

describe employees;

select * from employees;

insert into employees(emp_id,first_name,last_name,salary) values (1,'jennifer','aniston',100000);

select * from employees;

insert into employees(emp_id,first_name,last_name,salary) values (2,'Charlie','sheen',200000);

insert into employees(emp_id,first_name,last_name,salary) values (3,'Matt','Damon',300000);

insert into employees(emp_id,first_name,last_name,salary) values (4,'jennifer','lopez',400000);

insert into employees(emp_id,first_name,last_name,salary) values (5,'charlie','harper',500000);

insert into employees(emp_id,first_name,last_name,salary) values (6,'matt','leblanc',600000);

select * from employees;

update employees set last_name='hathaway' where emp_id=1;

select * from employees;

delete from employees where emp_id in (1,4);

select * from employees;

select * from employees where salary=100000;

select * from employees where first_name='jennifer' and salary=400000;

select * from employees where first_name='matt' and last_name='damon';

select * from employees where first_name='matt' or last_name='lopez';











