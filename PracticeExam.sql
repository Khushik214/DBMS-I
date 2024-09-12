--1) NOT NULL Constraint---------------

--Create a table “Person” in which 
--"ID", "LastName" columns will NOT accept NULL values.
drop table person
CREATE TABLE Person(
ID int NOT NULL,
FirstName varchar(255) NOT NULL,
Age int );
insert into Person values(1,'geeta',null);
--error
insert into Person values(null,'meeta',30);
insert into Person values(2,null,30);
--Create a NOT NULL constraint on the "Age" column 
--when the "Persons" table is already created.
select * from person
ALTER TABLE Person
ALTER COLUMN Age int NOT NULL;
select * from person
delete from person where age is null
insert into person values(1,'xyz',null)
insert into person values(3,'mita',25)\


--2) CHECK Constraint--------------
drop table Persons1
CREATE TABLE Persons1 (
 ID int,
 LastName varchar(255),
 FirstName varchar(255),
 Age int CHECK (Age>=18)
);
--error
insert into Persons1 values (1,'abc','xyz',12)
insert into Persons1 values (1,'abc','xyz',25)
---
drop table Persons1
CREATE TABLE Persons1 (
 ID int ,
 LastName varchar(255),
 FirstName varchar(255) ,
 Age int
);
ALTER TABLE Persons1
ADD CHECK (Age>=18);
insert into Persons1 values(1,'mita','patel',18);


--3) DEFAULT CONSTRAINT--------------
CREATE TABLE Person2 (
 ID int ,
 LastName varchar(255) ,
 FirstName varchar(255),
 Age int DEFAULT 18,
);
INSERT INTO PERSON2 (ID,LastName,FirstName) VALUES (1,'PATEL','SEEMA')
SELECT * FROM PERSON2
--error
insert into PERSON2 values (2,'sima','shah')
--WITH ALTER
drop table person2
CREATE TABLE Person2 (
 ID int,
 LastName varchar(255) ,
 FirstName varchar(255),
 Age int );
ALTER TABLE Person2
ADD CONSTRAINT df_Age
DEFAULT 18 FOR Age;
INSERT INTO Person2 (ID,LastName,FirstName) VALUES (1,'PATEL','SEEMA')
SELECT * FROM Person2


--4) UNIQUE KEY----------------------
CREATE TABLE Person3 (
 ID int UNIQUE,
 LastName varchar(255),
 FirstName varchar(255) ,
 Age int
);
INSERT INTO Person3 VALUES(1,'PATEL','BHOOMI',19)
--error
INSERT INTO Person3 VALUES(1,'PATEL','BHOOMI',19)
INSERT INTO Person3 VALUES(null,'shah','krishna',19)
--error
INSERT INTO Person3 VALUES(null,'patel','krishna',19)
--WITH ALTER
ALTER TABLE Person3
ADD UNIQUE (FirstName);
INSERT INTO Person3 VALUES(2,'PATEL','mita',19)


--5) primary key-------
drop table Person4
CREATE TABLE Person4 (
 ID int PRIMARY KEY,
 LastName varchar(255),
 FirstName varchar(255),
 Age int
);
INSERT INTO Person4 VALUES(1,'PATEL','BHOOMI',19)
--error (as ID is not unique)
INSERT INTO Person4 VALUES(1,'PATEL','SITAL',19)
--with alter
drop table person4
CREATE TABLE person4 (
 ID int not null,
 LastName varchar(255),
 FirstName varchar(255) ,
 Age int
);
--id column must be not null
ALTER TABLE person4
ADD PRIMARY KEY (ID);
INSERT INTO Person4 VALUES(1,'PATEL','BHOOMI',19)
--error
INSERT INTO Person4 VALUES(1,'PATEL','SITAL',19)
INSERT INTO Person4 VALUES(null,'PATEL','SITAL',19)

--6)---------foriegn key
CREATE TABLE person5 (
 ID int primary key,
 LastName varchar(255),
 FirstName varchar(255) ,
 Age int
);
CREATE TABLE Orders (
OrderNo int NOT NULL,
PersonID int FOREIGN KEY REFERENCES person5(ID) );
--insert 
--error
insert into Orders values(1,5);
--firts insert into person5 (parent table)
insert into person5 values(5,'patel','seema',23)
--now insert in order table
insert into Orders values(1,5);
select * from person5
select * from Orders