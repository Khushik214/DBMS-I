create database CSE_3B_346


--------------------------------------------------------------Part – A------------------------------

---1. Find all persons with their department name & code.
   SELECT DEPT.DEPARTMENTNAME,DEPT.DEPARTMENTCODE,PERSON.PERSONNAME FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID

--2. Find the person's name whose department is in C-Block.
    SELECT PERSON.PERSONNAME,DEPT.LOCATION FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID WHERE DEPT.LOCATION='C-BLOCK'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
    SELECT PERSON.PERSONNAME,DEPT.DEPARTMENTNAME,PERSON.SALARY FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID WHERE PERSON.CITY='JAMNAGAR'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT PERSON.PERSONNAME,DEPT.DEPARTMENTNAME,PERSON.SALARY,PERSON.CITY FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID WHERE PERSON.CITY<>'RAJKOT'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT PERSON.PERSONNAME,PERSON.CITY FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID WHERE DEPT.DEPARTMENTNAME='CIVIL'AND PERSON.JOININGDATE> '1-AUG-2001'

--6.Find details of all persons who belong to the computer department.
 SELECT   PERSON.PERSONNAME , DEPT.DEPARTMENTNAME FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID WHERE DEPT.DEPARTMENTNAME='COMPUTER'

 --7.Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
    SELECT * FROM 

--8.Find department wise person counts.
      SELECT COUNT(PERSON.PERSONID),DEPT.DEPARTMENTNAME FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID GROUP BY DEPT.DEPARTMENTNAME 

--9.Give department wise maximum & minimum salary with department name.
SELECT MAX(PERSON.SALARY),MIN(PERSON.SALARY),DEPT.DEPARTMENTNAME FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID GROUP BY DEPT.DEPARTMENTNAME

--10.Find city wise total, average, maximum and minimum salary.
 SELECT SUM(PERSON.SALARY),AVG(PERSON.SALARY),MAX(PERSON.SALARY),Min(PERSON.SALARY),PERSON.CITY FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID GROUP BY PERSON.CITY

--11.Find the average salary of a person who belongs to Ahmedabad city.
 SELECT AVG(PERSON.SALARY),PERSON.PERSONNAME FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID WHERE PERSON.CITY='AHMEDABAD' GROUP BY PERSON.PERSONNAME

--12.Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)
    SELECT PERSON.PERSONNAME+'LIVES IN'+PERSON.CITY+'AND WORKS IN'+DEPT.DEPARTMENTNAME'DEPARMENT'FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID


-----------------------------------------------------------Part – B:---------------------------------------------------


--1.Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In SINGLE COLUMN)
SELECT PERSON.PERSONNAME+'EARNS'+PERSON.SALARY+'FROM'+DEPT.DEPARTMENTNAME'DEPARMENT MONTHLY'FROM DEPT INNER JOIN PERSON ON DEPT.DEPARTMENTID=PERSON.DEPARTMENTID

---2.Find city & department wise total, average & maximum salaries.

--3.Find all persons who do not belong to any department.

---4.Find all departments whose total salary is exceeding 100000.


------------------------------------------------------------Part – C:----------------------------------------------


---1.List all departments who have no person.


--2.List out department names in which more than two persons are working.

---3.Give a 10% increment in the computer department employee’s salary. (Use Update)