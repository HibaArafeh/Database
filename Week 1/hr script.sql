create database HR;
use HR;

CREATE TABLE `hr`.`employees` (
  Employee_id INT auto_increment primary key,
  First_Name VARCHAR(25) NOT NULL,
  Last_Name VARCHAR(25) NOT NULL,
  Salary INT NULL,
  Location_id int,
  fOREIGN KEY (Location_id) REFERENCES Locations(Location_id));
  
CREATE TABLE `hr`.`Locations` (
  Location_id INT auto_increment primary key,
  Country VARCHAR(25) NOT NULL);
  
 
  
show tables;

insert into employees(First_Name, Last_Name, Salary, Location_id)
values ('Hiba', 'Arafeh', 30000,3),
('Wissam','Moustafa',30000,5),
('Ahmad', 'Moustafa', 30000,1),
('Soodeh', 'Shabani',30000,2),
('Sedra', 'Sankari', 30000,4),
('Rand', 'Aboudan', 30000,6),
('Rima', 'Jlilaty', 30000,8),
('Noura', 'Jlilaty', 30000,10),
('May', 'Albab', 30000,9),
('Mela', 'Albab', 3000,7);

select *from employees;

insert into Locations(Country)
values ('Sweden'),
('Italy'),
('Spain'),
('USA'),
('Syria'),
('Iran'),
('Germany'),
('Canada'),
('China'),
('Japan');

select * from Locations;






  


  

 
  
  