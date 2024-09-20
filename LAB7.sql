CREATE TABLE EMP(
	EID INT,
	ENAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY INT,
	JOINIMG_DATE DATETIME,
	CITY VARCHAR(30)
)
INSERT INTO EMP VALUES

(101, 'Rahul', 'Admin',56000, '01-Jan-1990' ,'Rajkot'),
(102, 'Hardik', 'IT' ,18000 ,'25-Sep-90', 'Ahmedabad'),
(103, 'Bhavin', 'HR',25000, '14-May-1991' ,'Barod'),
(104, 'Bhoomi', 'Admin',39000, '08-Feb-1991','Rajkot'),
(105, 'Rohit', 'IT' ,17000,'23-Jul-1990' ,'Jamnagar'),
(106, 'Priya', 'IT',9000, '18-Oct-1990' ,'Ahmedabad'),
(107, 'Bhoomi', 'HR',34000, '25-Dec-1991' ,'Rajkot')
SELECT * FROM EMP
TRUNCATE TABLE EMP

--Part – A:
--Create table and inset records as per below.--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
	SELECT MAX(SALARY) AS Highest_salary,MIN(SALARY) AS Lowest_salary 
	FROM EMP

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,respectively.
	SELECT SUM(SALARY) AS TOTAL_salary,AVG(SALARY) AS AVG_salary 
	FROM EMP
--3. Find total number of employees of EMPLOYEE table.
	SELECT COUNT(EID) AS TOTAL_EMP
	FROM EMP
--4. Find highest salary from Rajkot city.
	SELECT MAX(SALARY) AS Highest_salary
	FROM EMP
	WHERE CITY='RAJKOT'
--5. Give maximum salary from IT department.
	SELECT MAX(SALARY) AS Highest_salary
	FROM EMP
	WHERE DEPARTMENT='IT'
--6. Count employee whose joining date is after 8-feb-91.
	SELECT COUNT(EID) AS TOTAL_EMP
	FROM EMP
	WHERE JOINIMG_DATE>'08-feb-1991'
--7. Display average salary of Admin department.
	SELECT AVG(SALARY) AS AVG_SALARY
	FROM EMP
	WHERE DEPARTMENT='Admin'
--8. Display total salary of HR department.
	select SUM(SALARY) AS TOTAL_SALARY
	FROM EMP
	WHERE DEPARTMENT='HR'
--9. Count total number of cities of employee without duplication.
	SELECT COUNT(DISTINCT CITY) AS CITY
	FROM EMP
	
--10. Count unique departments.
	SELECT COUNT(DISTINCT DEPARTMENT) AS UNIQUECITY
	FROM EMP
--11. Give minimum salary of employee who belongs to Ahmedabad.
	SELECT MIN(SALARY) AS MIN_SALARY
	FROM EMP
--12. Find city wise highest salary.
	SELECT MAX(SALARY) AS MAX_SALARY
	FROM EMP
	GROUP BY CITY
--13. Find department wise lowest salary.
	SELECT MIN(SALARY) AS MIN_SALARY
	FROM EMP
	GROUP BY DEPARTMENT
--14. Display city with the total number of employees belonging to each city.
	SELECT CITY ,COUNT(EID)
	FROM EMP
	GROUP BY CITY
---15. Give total salary of each department of EMP table.
	SELECT DEPARTMENT,SUM(SALARY) AS TOATAL_SALARY
	FROM EMP
	GROUP BY DEPARTMENT
--16. Give average salary of each department of EMP table without displaying the respective departmentname.	SELECT MAX(SALARY)-MIN(SALARY) AS DFF	FROM EMP