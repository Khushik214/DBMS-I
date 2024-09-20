-----Perform SQL queries for Set operator and, Subqueries-------

-----sub-queries-----

create table student_data
(
	rno int,
	name varchar(25),
	city varchar(25),
	did int
)

insert into student_data(rno,name,city,did)
values
(101,'raju','rajkot',10),
(102,'amit','ahmedabad',20),
(103,'sanjay','baroda',40),
(104,'neha','rajkot',20),
(105,'meera','ahmedabad',30),
(106,'mahesh','baroda',10)

select * from student_data

drop table student_data

create table academic
(
	rno int,
	spi decimal(8,2),
	bklog int
)

insert into academic(rno,spi,bklog)
values
(101,8.8,0),
(102,9.2,2),
(103,7.6,1),
(104,8.2,4),
(105,7.0,2),
(106,8.9,3)

select * from academic
---drop table academic

create table department
(
	did int,
	dname varchar(25)
)

insert into department(did,dname)
values
(10,'computer'),
(20,'electrical'),
(30,'mechanical'),
(40,'civil')


select * from department


----------------------------part-A----------------------------------

--1. Display details of students who are from computer department
select name from student_data where did=(select did from department where dname='computer')

--2.Displays name of students whose SPI is more than 8.
 select name from student_data where rno in (select rno from academic where spi>8)

--3.Display details of students of computer department who belongs to Rajkot city.
select * from student_data where did in (select did from department where dname='computer') and city='rajkot'

--4.Find total number of students of electrical department.
select count(name) from student_data where did = (select did from department where dname='electrical')

--5.Display name of student who is having maximum SPI.
select name from student_data where rno=(select rno from academic where spi = (select max(spi) from academic))

--6.Display details of students having more than 1 backlog.
 select rno,name from student_data  where rno in (select rno from academic where bklog>1)

 select * from student_data
 select * from academic
 select * from department

 --------------------------------------------PART-B ----------------------------------------------------

 --1.Display name of students who are either from computer department or from mechanical department.
 select name from student_data where did in (select did from department where dname='computer' or dname='mechanical')

--2.Display name of students who are in same department as 102 studying in.
select name from student_data where did = (select did from department where dname='electrical')

------------------------------------------------Part – C-----------------------------------------

--1.Display name of students whose SPI is more than 9 and who is from electrical department.
select name from student_data where rno in (select rno from academic where spi>9) AND  did = (select did from department where dname='electrical')

--2.Display name of student who is having second highest SPI.
  SELECT  NAME FROM  STUDENT_DATA WHERE SPI<(SELECT 

--3.Display city names whose students branch wise SPI is 9.2.
 select city from student_data where rno in (select rno from academic where spi=9.2)


 --------------set operators----------------------

 --------------------------------------------------------PART-A------------------------------------------

 CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);


INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');
 select * from computer

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');
select * from Electrical



---1.Display name of students who is either in Computer or in Electrical.
      select name from computer union select name from Electrical

---2.Display name of students who is either in Computer or in Electrical including duplicate data.
     select name from computer union  all select name from Electrical

--3.Display name of students who is in both Computer and Electrical.
    select name from Computer intersect select name from Electrical

---4.Display name of students who are in Computer but not in Electrical.
      select name from Computer except select name from Electrical

---5.Display name of students who are in Electrical but not in Computer.
       select name from Electrical except select name from Computer

---6.Display all the details of students who are either in Computer or in Electrical.
     select * from computer union select * from Electrical

---7.Display all the details of students who are in both Computer and Electrical.
    select * from computer intersect select * from Electrical





------------------ PART B ----------------------



CREATE TABLE Emp_DATA (
    EID INT,
    Name VARCHAR(50)
);

INSERT INTO Emp_DATA (EID, Name) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

select* from Emp_DATA

CREATE TABLE Customer (
    CID INT,
    Name VARCHAR(50)
);

INSERT INTO Customer (CID, Name) VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');

select * from Customer


  
 --- 1.Display name of persons who is either Employee or Customer.
  select name from Emp_DATA union select name from Customer


---2.Display name of persons who is either Employee or Customer including duplicate data.
 select name from Emp_DATA union all select name from Customer


---3.Display name of persons who is both Employee as well as Customer.
 select name from Emp_DATA intersect select name from Customer


---4.Display name of persons who are Employee but not Customer.
   select name from Emp_DATA except select name from Customer

--5.Display name of persons who are Customer but not Employee.
 select name from Customer except select name from  Emp_DATA


--------------------------------------Part – C----------------------------------------


---1.Perform all the queries of Part-B but display ID and Name columns instead of Name only.


 --- 1.Display all the details of persons who is either Employee or Customer.
  select * from Emp_DATA union select * from Customer


---2.Display all  the details of persons who is either Employee or Customer including duplicate data.
 select * from Emp_DATA union all select * from Customer


---3.Display all the details of persons who is both Employee as well as Customer.
 select * from Emp_DATA intersect select * from Customer


---4.Display all the details of persons who are Employee but not Customer.
   select * from Emp_DATA except select * from Customer

--5.Display all the details of persons who are Customer but not Employee.
 select * from Customer except select * from  Emp_DATA



