--maths
--1) ABS()
SELECT ABS(20), ABS(-50)
--2)CEILING()
--Returns the smallest integer value that is >= a number
SELECT CEILING(-13.5), CEILING(25.7),CEILING(25.3)
--3) FLOOR()
--Returns the largest integer value that is <= to a number
SELECT FLOOR(-13.5), FLOOR(25.75)
--4) PI()
--Returns the value of PI
SELECT PI()
--5) POWER()
--Returns the value of a number raised to the power of another number
SELECT POWER(4, 2)
--6) ROUND()
--Rounds a number to a specified number of decimal places
SELECT ROUND(235.415, 0),ROUND(235.415, 1),ROUND(235.465, 2)
--7) SIGN()
--Returns the sign of a number 
--(If number > 0, it returns 1, 
--If number = 0, it returns 0, 
--If number < 0, it returns -1)
SELECT SIGN(-12), SIGN(12), SIGN(0)
--8) SQRT()
--Returns the square root of a number
SELECT SQRT(64)
--9) SQUARE()
--Returns the square of a number
SELECT SQUARE(8)
------string functions---
--1) ASCII()
--The ASCII() returns the ASCII code value of the leftmost character of the character 
--expression.
SELECT ASCII('A'), ASCII('a'),ASCII('AB')
--2) CONCAT()
--CONCAT() function is used To join two or more strings into one
SELECT CONCAT('Darshan',' ','University')
--3) CONCAT_WS()
--concatanation with seperator
SELECT CONCAT_WS(',','Darshan','University')
SELECT CONCAT_WS('_','Darshan','University')
SELECT CONCAT_WS('#123','Darshan',',','University')
SELECT CONCAT_WS('#123','Darshan','University','abc')
--4) CHARINDEX()
--return the index of a specific string expression within a given string. 
SELECT CHARINDEX('t', 'Customer'), CHARINDEX('World','Hello World'),CHARINDEX('a','Hello 
World')
--5) LEFT(), RIGHT()
--used to extract a specific number of characters from the left-side or right-side of a 
--string.
SELECT LEFT('Darshan University',5) , RIGHT('Darshan University',5)
--6) LOWER(), UPPER()
Select LOWER('Darshan'), UPPER('Darshan')
--7) LTRIM(), RTRIM()
--used to remove additional spaces from the left side or right side of an input string.
SELECT RTRIM('Darshan ') + LTRIM(' University')
SELECT ('Darshan ') + (' University')
select TRIM(' DARSHAN UNIVERSITY ')
SELECT TRIM('r' FROM 'rrrrSQL Serverrrrr')
--8)STRING_SPLIT()
--It is a table-valued function that splits a string into a 
--table that consists of rows of substrings based on a specified separator.
SELECT value FROM STRING_SPLIT('red,green,,blue', ',')
--9) REPLACE()
--To replace all occurrences of a substring within a string with a new substring
SELECT REPLACE('Darshan Institute','Institute','University')
--10)REPLICATE()
--It repeats a string a specified number of times.
SELECT REPLICATE('Darshan',3)
--11) REVERSE()
--It accepts a string argument and returns the reverse order of that string.
SELECT REVERSE('Darshan')
--12) SPACE()
--It returns a string of repeated spaces.
SELECT SPACE(5)+ 'Darshan'
--13) SUBSTRING()
--It extracts a substring with a specified length 
--starting from a location in an input string.
--Syntax: SUBSTRING(input_string, Start, Length);
SELECT SUBSTRING('SQL Server SUBSTRING', 5, 6)
--14)LEN()
--the number of characters in a string without including trailing spaces.
Select LEN('Darshan University')
Select LEN('Darshan University ')
Select LEN(' Darshan University')
--other functions
--1)CAST()
--It converts a value (of any type) into a specified datatype.
SELECT CAST(25.65 AS varchar)
--error
SELECT CAST(25.65 AS varchar)+10
SELECT CAST(25.65 AS int)+10
--error
select cast('abc' as int)
--2) CONVERT()
SELECT CONVERT(varchar,25.65)
SELECT CONVERT(int,25.65)
--error
SELECT CONVERT(int,'abc')
--DATE TIME FUNCTION
--1 GETDATE()
SELECT GETDATE() AS CURRENTDATE
--2) DAY()
--DAY accepts a date, datetime, or valid date string and returns the Day part as an 
--integer value
SELECT DAY(GETDATE()) AS [Day]
SELECT DAY('20220105') AS [Day] 
SELECT DAY('2024-07-2 15:46:19.277') AS [Day]
--MONTH()
SELECT MONTH(GETDATE()) AS MONTH
SELECT MONTH('20220105') AS [MONTH] 
SELECT MONTH('2024-07-2 15:46:19.277') AS [MONTH]
--YEAR() 
SELECT YEAR(GETDATE()) AS [YEAR]
SELECT YEAR('20220105') AS [YEAR] 
SELECT YEAR('2024-07-2 15:46:19.277') AS [YEAR]
--4) DATEPART() 
--It returns an integer corresponding to the 
--datepart specified in DATEPART function.
SELECT DATEPART(YEAR, GETDATE()) AS 'Year'; 
SELECT DATEPART(MONTH, GETDATE()) AS 'Month'; 
SELECT DATEPART(DAY, GETDATE()) AS 'Day'; 
SELECT DATEPART(WEEK, GETDATE()) AS 'Week'; 
SELECT DATEPART(HOUR, GETDATE()) AS 'Hour'; 
SELECT DATEPART(MINUTE, GETDATE()) AS 'Minute'; 
SELECT DATEPART(SECOND, GETDATE()) AS 'Second';
--5)DATENAME() 
--It returns a string corresponding to the datepart specified for the given date
SELECT DATENAME(MONTH, GETDATE()) AS 'Month'; 
--6)EOMONTH() 
--The date function EOMONTH accepts a 
--date, datetime, or valid date string and returns the end of month date as a datetime
SELECT EOMONTH(GETDATE())
SELECT EOMONTH('20220701')
SELECT
EOMONTH(GETDATE()) as 'End Of Current Month',
EOMONTH(GETDATE(),-1) as 'End Of Previous Month',
EOMONTH(GETDATE(),3) as 'End Of Month after 3 month';
--7) DATEADD()
--It returns datepart with added interval as a datetime.
--day
SELECT DATEADD(d, 1, '2024-07-4 15:15:20') AS ADDEDDATE
SELECT DATEADD(d, 1, getdate()) AS ADDEDDATE
SELECT DATEADD(dd, 1, '2024-07-4 15:15:20') AS ADDEDDATE
SELECT DATEADD(day, 1, '2024-07-4 15:15:20') AS ADDEDDATE
--month
SELECT DATEADD(m, 1, '2024-07-4 15:15:20') AS ADDEDDATE
SELECT DATEADD(mm, 1, '2024-07-4 15:15:20') AS ADDEDDATE
SELECT DATEADD(month, 1, '2024-07-4 15:15:20') AS ADDEDDATE
--year
SELECT DATEADD(yy, 1, '2024-07-4 15:15:20') AS ADDEDDATE
SELECT DATEADD(yyyy, 1, '2024-07-4 15:15:20') AS ADDEDDATE
SELECT DATEADD(year, 1, '2024-07-4 15:15:20') AS ADDEDDATE
--8) DATEDIFF() : 
--difference between two dates 
SELECT DATEDIFF(MINUTE, '2024-07-13', '2024-07-14')
SELECT DATEDIFF(HOUR, '2024-07-13', '2024-07-14')
SELECT DATEDIFF(DAY, '2024-07-01', '2024-07-14')
SELECT DATEDIFF(MONTH, '2024-07-01', '2024-08-14')
SELECT DATEDIFF(YEAR, '2024-07-01', '2025-08-14')
--9)ISDATE() : 
--To check a string to see if it is a valid Date or Datetime field. 
--ISDATE return 1 if true or 0 if false.
SELECT ISDATE('20220101') as 'Valid';
SELECT ISDATE('2022-13-01') as 'Not Valid';