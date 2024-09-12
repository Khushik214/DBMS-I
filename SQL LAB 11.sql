create database CSE_3B_346

create table stu_info
(
	rno int,
	name varchar(25),
	branch varchar(25),
	
)

insert into stu_info(rno,name,branch)
values
(101,'raju','ce'),
(102,'amit','ce'),
(103,'sanjay','me'),
(104,'neha','ec'),
(105,'meera','ee'),
(106,'mahesh','me')

select * from stu_info
 DROP TABLE STU_INFO
create table result
(
     RNO INT,
	spi decimal(8,2)
	
)

insert into result(RNO,spi)
values
(101,8.8),
(102,9.2),
(103,7.6),
(104,8.2),
(105,7.0),
(107,8.9)

select * from result

create table employee_master
(
	 employeeNo varchar(25),
	name varchar(25),
	managerNo varchar(25),
	
	
)

insert into employee_master (employeeNo,name,managerNo )
values
('E01','TARUN','NULL'),
('E02','ROHAN','E02'),
('E03','PRIYA','E01'),
('E04','MILAN','E03'),
('E05','JAY','E01'),
('E06','ANJANA','E04')

select * from employee_master 

-----------------------------------------------PART-A---------------------------------------------

---1.Combine information from student and result table using cross join or Cartesian product.
     SELECT * FROM STU_INFO CROSS JOIN RESULT
	 SELECT * FROM STU_INFO , RESULT

--2.Perform inner join on Student and Result tabl_es.
  SELECT* FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO

--3.Perform the left outer join on Student and Result tables.
 SELECT* FROM STU_INFO LEFT OUTER JOIN RESULT  ON STU_INFO.RNO=RESULT.RNO

--4.Perform the right outer join on Student and Result tables.
    SELECT* FROM STU_INFO RIGHT OUTER JOIN RESULT  ON STU_INFO.RNO=RESULT.RNO

--5.Perform the full outer join on Student and Result tables.
 SELECT* FROM STU_INFO FULL OUTER JOIN RESULT  ON STU_INFO.RNO=RESULT.RNO

--6.Display Rno, Name, Branch and SPI of all students.
  SELECT STU_INFO.RNO,NAME,BRANCH,SPI FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO

--7.Display Rno, Name, Branch and SPI of CE branch’s student only.
     SELECT STU_INFO.RNO,NAME,BRANCH,SPI FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO WHERE BRANCH='CE'

--8.Display Rno, Name, Branch and SPI of other than EC branch’s student only.
   SELECT STU_INFO.RNO,NAME,BRANCH,SPI FROM STU_INFO INNER  JOIN RESULT ON STU_INFO.RNO=RESULT.RNO WHERE BRANCH <> 'EC'

--9.Display average result of each branch.
   SELECT BRANCH, AVG(RESULT.SPI) FROM STU_INFO  INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO GROUP BY STU_INFO.BRANCH

--10.Display average result of CE and ME branch.
     SELECT BRANCH, AVG(RESULT.SPI) FROM STU_INFO INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO GROUP BY STU_INFO.BRANCH
	 HAVING BRANCH='CE' OR BRANCH='ME'

	 ---------------------------------------------PART-B-------------------------------------------------------
--1.Display average result of each branch and sort them in ascending order by SPI.
 SELECT BRANCH, AVG(RESULT.SPI) FROM STU_INFO  INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO GROUP BY STU_INFO.BRANCH
		  ORDER BY AVG(RESULT.SPI)

--2.Display highest SPI from each branch and sort them in descending order.
   SELECT BRANCH, MAX(RESULT.SPI) FROM STU_INFO  INNER JOIN RESULT ON STU_INFO.RNO=RESULT.RNO GROUP BY STU_INFO.BRANCH
		   ORDER BY  MAX(RESULT.SPI) DESC

----------------------------------------Part – C--------------------------------------------
--1.Retrieve the names of employee along with their manager’s name from the Employee table.
   SELECT E1.NAME,E2.NAME FROM employee_master AS E1 LEFT OUTER JOIN employee_master AS E2 ON E1.managerNo=E2.employeeNo