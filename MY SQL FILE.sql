CREATE DATABASE studentInfo;
USE studentInfo;

CREATE TABLE studentInfo(
ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Student_name varchar(30) NOT NULL,
Address varchar (255) NOt NULL,
City varchar(50) NOT NULL,
Age int NOT NULL,
DOB date NOT NULL,
Class varchar(50) NOT NULL,
Fee decimal (15,2) NOT NULL,
Mobile varchar(10) NOT NULL);

ALTER TABLE studentInfo
ADD Email varchar(255);

SELECT * FROM studentInfo;
ALTER TABLE studentInfo 
INSERT INTO studentInfo (Student_name, Address, City, Age, DOB,
Class, Fee, Mobile)
VALUES ('Umesh Kumar', '103, Street No. 14', 'Jaipur', 17, '2006-3-5', '10' , 42000, '9188822200');

INSERT INTO studentInfo (Student_name, Address, City, Age, DOB, Class, Fee, Mobile)
VALUES ('Raju Kumar', '72, Street No. 1', 'Jaipur', 16, '2007-2-3','9',43000, '9188822211');

INSERT INTO studentInfo (Student_name, Address, City, Age, DOB, Class, Fee, Mobile)
VALUES ('Anil Kumar', 'P76, Block No. 5', 'Bihar', 15, '2008-3-6','8',44000, '9177711100');

INSERT INTO studentInfo (Student_name, Address, City, Age, DOB, Class, Fee, Mobile)
VALUES ('Daanish', 'RK Nagar,New Bus Stand', 'Patna', 14, '2009-11-1', '7',45000, '9177733322');
SELECT Student_name, Mobile, City from studentInfo;


SELECT Student_name, Mobile
FROM studentInfo
WHERE Class = '9';

SELECT Student_name, Mobile
FROM studentInfo
WHERE Class = '10';

SELECT Student_name, Mobile, Class, Fee
FROM studentInfo
WHERE Fee>42000;

SELECT Student_name, Mobile, Class, Fee
FROM studentInfo
WHERE Fee>41000;


UPDATE studentInfo
SET Address = 'P79, Block No.5'
WHERE ID=7;

SELECT * FROM studentInfo;

UPDATE studentInfo
SET Student_name = 'Ranjeet'
WHERE ID=4;



DELETE FROM studentInfo
WHERE ID = 5;

SELECT ID, Student_name
FROM studentInfo
WHERE Class = '9' AND Age > 14;

SELECT ID, Student_name
FROM studentInfo
WHERE Class = '7' AND City = 'Patna';

SELECT * FROM studentInfo;

SELECT ID, Student_name, City
FROM studentInfo
|WHERE City = 'Patna' OR Fee = 45000;

SELECT ID, Student_name, City
From studentInfo
WHERE NOT City = 'Patna';

SELECT *FROM studentInfo
WHERE City LIKE 'J%'

SELECT *FROM studentInfo
WHERE Student_name LIKE 'U%';

SELECT *FROM studentInfo
WHERE Student_name LIKE '%r';

SELECT *FROM studentInfo
WHERE Mobile LIKE '__7%';

SELECT *FROM studentInfo
WHERE Student_name NOT LIKE 'U%';

SELECT *FROM studentInfo
WHERE City IN ('Bihar', 'Patna');

SELECT *FROM studentInfo
WHERE City NOT IN ('Bihar', 'Patna');

SELECT *FROM studentInfo
WHERE Class IN ('9');

SELECT *FROM studentInfo
WHERE Fee BETWEEN 30000 AND 50000;

SELECT *FROM studentInfo
WHERE ID BETWEEN 3 AND 5;

SELECT *FROM studentInfo
WHERE DOB BETWEEN '2007-2-3' AND '2008-3-6';

SELECT *FROM studentInfo
LIMIT 3;

 
SELECT * FROM studentInfo
ORDER BY Student_name, Fee;

SELECT * FROM studentInfo
ORDER BY Student_name DESC;

SELECT COUNT(Student_name)
FROM studentInfo;

SELECT SUM(Fee)
FROM studentInfo;

SELECT AVG(Fee)
FROM studentInfo;

SELECT Student_name,MIN(Fee) AS LowestFee
FROM studentInfo;

SELECT Student_name,MAX(Fee) AS HighestFee
FROM studentInfo;

CREATE DATABASE Companydb;

USE companydb;

CREATE TABLE Customer
(
CustomerID int primary key,
CustomerName varchar(20),
City varchar(20)
);

SELECT * FROM Customer;

INSERT INTO Customer VALUES(101,'Ashish','Kota');
INSERT INTO Customer VALUES(102,'Ajay','Ajmer');
INSERT INTO Customer VALUES(104,'Aman','Jhalawar');
INSERT INTO Customer VALUES(105,'Chirag','Udaipur');
INSERT INTO Customer VALUES(106,'Deepak','Jodhpur');
INSERT INTO Customer VALUES(107,'Rohan','Jaipur');
INSERT INTO Customer VALUES(108,'Dinesh','Alwar');
INSERT INTO Customer VALUES(109,'Suresh','Kota');
INSERT INTO Customer VALUES(110,'Ankit','Jaipur');

SELECT * FROM Customer;

CREATE TABLE Orders
(
OrderID int,
CustomerID int primary key,
OrderDate date
);

SELECT * FROM Orders;

INSERT INTO Orders VALUES(1,101,'2021-01-05');
INSERT INTO Orders VALUES(2,102,'2021-02-10');
INSERT INTO Orders VALUES(3,103,'2021-01-04');
INSERT INTO Orders VALUES(4,104,'2021-03-08');
INSERT INTO Orders VALUES(5,105,'2021-04-09');
INSERT INTO Orders VALUES(6,106,'2021-01-05');
INSERT INTO Orders VALUES(7,107,'2021-05-12');
INSERT INTO Orders VALUES(8,108,'2021-02-05');
INSERT INTO Orders VALUES(9,109,'2021-06-03');
INSERT INTO Orders VALUES(10,110,'2021-07-04');

SELECT Orders.OrderID, Customer.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customer ON Orders.CustomerID=Customer.CustomerID;

SELECT Orders.OrderDate, Customer.City
FROM Orders
INNER JOIN Customer ON Orders.CustomerID=Customer.CustomerID;

use student;

SELECT COUNT(Class), SUM(Fee), class
From studentInfo
GROUP BY Class;

INSERT INTO studentInfoBackup
SELECT * FROM studentInfo;

CREATE TABLE studentInfoBackup(
ID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
Student_name varchar(30) NOT NULL,
Address varchar (255) NOt NULL,
City varchar(50) NOT NULL,
Age int NOT NULL,
DOB date NOT NULL,
Class varchar(50) NOT NULL,
Fee decimal (15,2) NOT NULL,
Mobile varchar(10) NOT NULL);

CREATE DATABASE constraintsExample;

USE constraintsExample;

CREATE TABLE notnullExample
(
EmpName varchar(30) NOT NULL,
Age int
);

select * from notnullExample;

INSERT INTO notnullExample (EmpName, Age) VALUES ('Raju',26);

INSERT INTO notnullExample (Age) VALUES (26);

DROP TABLE notnullExample;

CREATE TABLE defaultExample
(
EmpName varchar(30) NOT NULL,
Age int,
Mobile varchar(50) default 'Mobile no. is not available'
);

SELECT * FROM defaultExample;

INSERT INTO defaultExample (EmpName, Age, Mobile)
VALUES ('Raju',26,'001223665');

INSERT INTO defaultExample (EmpName, Age)
VALUES ('Sunil',27);

SELECT * FROM defaultExample;

CREATE TABLE checkExample
( 
EmpName varchar(255),
Age int, CHECK (Age>=18)
);

select * from checkExample;

INSERT INTO checkExample (EmpName, Age) VALUES('Raju', 26);

INSERT INTO checkExample (EmpName, Age) VALUES('Sunil',17);

CREATE TABLE uniqueExample (
EmpName varchar(255) NOT NULL,
Mobile varchar(10) NOT NULL UNIQUE
);

select * from  uniqueExample;

INSERT INTO uniqueExaple (ExpName, Mobile) VALUES ('Raju', '0123456789');

INSERT INTO uniqueExaple (ExpName, Mobile) VALUES ('Manoj', '0123456789');

CREATE TABLE Department
(
Dept_Id int primary key,Dept_Name varchar(50)
);

INSERT INTO Department VALUES (1,'Account');
INSERT INTO Department VALUES (2,'HR');
INSERT INTO Department VALUES (3,'IT');

select * from  Department;

CREATE TABLE Employee_Details
(
Emp_ID int primary key,
Emp_Name varchar(50) Not null,
Dept_Id int,
FOREIGN KEY (DEPT_Id) REFERENCES Department(Dept_Id)
);

INSERT INTO Employee_Details VALUES (1,'Raj',1);
INSERT INTO Employee_Details VALUES (2,'Rahul',2);
INSERT INTO Employee_Details VALUES (3,'Kunal',3);

select * from Employee_Details;

INSERT INTO Employee_Details VALUES (4,'Raju',1);

select * from Employee_Details;















