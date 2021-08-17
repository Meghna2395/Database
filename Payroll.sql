UC-1:
create database payroll_service;
show databases;
use payroll_service;
 
UC-2:
create Table employee_payroll(id int, name varchar(255), salary int,start_date date);
Describe employee_payroll;

UC-3:
Insert into employee_payroll(id,name, salary, start_date) values(1,'meghna',5000,now());

 
UC-4:
Select * from employee_payroll;
 
UC-5:
Select salary from employee_payroll WHERE name ='meghna';
Select * from employee_payroll where start_date between cast('2020-08-01' AS DATE) AND DATE(now());
 
UC-6: 
Alter Table employee_payroll add gender varchar(255);
update employee_payroll set gender = 'M' where name = 'uma';
select * from employee_payroll;
 
UC-7;
Select SUM(Salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
Select AVG(Salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
Select MIN(Salary) FROM employee_payroll WHERE gender = 'M' GROUP BY gender;
Select MAX(Salary) FROM employee_payroll;
Select COUNT(Salary) FROM employee_payroll;
Select COUNT(Salary) FROM employee_payroll group by gender;

UC-8:
Alter Table employee_payroll add Phone_Number varchar(255);
Alter Table employee_payroll add Address varchar(255) default 'Ngp';
Alter Table employee_payroll add Department varchar(255) not null ;
Select * from employee_payroll;

UC-9:
Alter Table employee_payroll add Basic_Pay int;
Alter Table employee_payroll add Deductions int;
Alter Table employee_payroll add Taxable_Pay int;
Alter Table employee_payroll add Income_Tax int;
Alter Table employee_payroll add Net_Pay int;

UC-10:
Insert into employee_payroll (id,name,salary,start_date,gender,phone_number,address,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) values (6,'Terissa',5000,now(),'F','25000','School Street','Marketing',222,258,852,789,78942);
Insert into employee_payroll (id,name,salary,start_date,gender,phone_number,address,department,basic_pay,deductions,taxable_pay,income_tax,net_pay) values (6,'Terissa',5000,now(),'F','25000','School Street','Marketing',222,258,852,789,78942);

UC-11:
alter table employee_payroll drop column department;
alter table employee_payroll drop column salary;
delete from employee_payroll where start_date = '2021-08-16';
alter table employee_payroll add primary key (id);
create table department(id int,name varchar(255));
alter table department add primary key (id);
insert into department (id,name) values (1,'CSE');
insert into department (id,name) values (2,'CE');
insert into department (id,name) values (3,'ECE');
insert into department (id,name) values (4,'ME');
create table Student_department(id int, dept_key int,emp_key int,Marks int);
alter table emp_department add primary key(id);
insert into emp_department(id,dept_key,emp_key,salary) values (1,2,1,1000);
select * from employee_payroll as ep inner join Student_department as std on std.emp_key = ep.id inner join department as d on d.id = std.dept_key;


