UC- 1:
create database AddressBookService;
use AddressBookService;

UC-2:
create Table addressbook(id int, firstname varchar(255),lastname varchar(255),address varchar(255),city varchar(255), state varchar(255), Zipcode int, PhoneNumber int, email varchar(255));
describe addressbook;

UC-3:
 Insert into addressbook(id,firstname,lastname,address,city,state,Zipcode,PhoneNumber,email) values (2,'Naresh','Pusarla', 'TataNagar','Indore','MP',441222,21356,'np@gmail.com');
 Insert into addressbook(id,firstname,lastname,address,city,state,Zipcode,PhoneNumber,email) values (1,'meghna','borkar', 'kamptee','Nagpur','MH',441001,21356,'np@gmail.com');
 
 
 UC-4:
 update addressbook set city = 'Pune' where name = 'meghna';
 Select * from addressbook;
 
 UC-5:
delete from addressbook where firstname = meghna;
Select * from addressbook;
  
UC-6;  
Select * from addressbook where city = 'Nagpur' or state = 'MP';

UC-7:
Select COUNT(city) from addressbook group by city;
Select COUNT(city), city from addressbook group by city;
Select COUNT(state), state from addressbook group by state;

UC-8:
Select * from addressbook order by addressbook.firstname ASC;
Select * from addressbook order by addressbook.firstname DESC;

UC-9:


 