create database CSE_3B_346

create table student_info
(
	rno int,
	name varchar(25),
	branch varchar(25),
	spi decimal(8,2),
	bklog int
)

insert into student_info(rno,name,branch,spi,bklog)
values
(101,'raju','ce',8.80,0),
(102,'amit','ce',2.20,3),
(103,'sanjay','me',1.50,6),
(104,'neha','ec',7.65,1),
(105,'meera','ee',5.52,2),
(106,'mahesh','ec',4.50,3)

select * from student_info


--------------------------------------------PART-A----------------------------------
--1.Create a view Personal with all columns.
    create view personal as
	select * from student_info

--2.Create a view Student_Details having columns Name, Branch & SPI.
   create view vw_students_details as select branch,name,spi from student_info

---3.Create a view AcademicData having columns RNo, Name, Branch.
  create view academicdata as select rno,name,branch from student_info

---4.Create a view Student_ bklog having all columns but students whose bklog more than 2.
    create view vw_student_bklog as select * from student_info where bklog>2

---5.Create a view Student_Pattern having RNo, Name & Branch columns in which Name consists of four letters. 
   create  view vw_student_pattern as select rno,name,branch from student_info where name like'____'

---6.Insert a new record to AcademicData view. (107, Meet, ME)
  insert into academicdata values(107,'meet','me')

---7.Update the branch of Amit from CE to ME in Student_Details view.
     update vw_students_details set branch='me' where branch ='ce'

---8.Delete a student whose roll number is 104 from AcademicData view.
      delete from academicdata where rno=104

	 ---------------------------------------------- Part � B---------------------------------------------
-----1.Create a view that displays information of all students whose SPI is above 8.5
    create view stu_spi as select*from  student_info where spi>8.5

---2.Create a view that displays 0 backlog students.
  creste view dipalys as select* from student_info where bklog=0

---3.Create a view Computerview that displays CE branch data only.
    create view computerview as select *from student_info where branch='ce'

----------------------------------------------Part � C-------------------------------
---1.Create a view Result_EC that displays the name and SPI of students with SPI less than 5 of branch EC.
  create view result_ec as select name,spi from student_info where spi<5 and branch='ec'

--2.Update the result of student MAHESH to 4.90 in Result_EC view.
  update result_ec set spi=4.90 where name='mahesh'

---3.Create a view Stu_Bklog with RNo, Name and Bklog columns in which name starts with �M� and having bklogs more than 5.
     create view vw_stu_bklog as select rno,name,bkog from student_info where name like'%m' and bklog>5

---4.Drop Computerview form the database
    drop view computerview