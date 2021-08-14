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
 select * from employee_payroll;
 
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

