CREATE DATABASE CSE_3B_421
--Alter Operation
--Part – A:
--Use Deposit table of lab-1.

SELECT * FROM DEPOSIT

--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT 
ADD CITY VARCHAR(20), PINCODE INT 

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35)
ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35)

--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT

--4. Rename Column ActNo to ANO
SP_RENAME 'DEPOSIT.ACTNO','ANO'

--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT 
DROP COLUMN CITY

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'


--Part – B:

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
SP_RENAME 'DEPOSIT_DETAIL.ADATE','AOPENDATE'
SELECT * FROM DEPOSIT_DETAIL

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName
SP_RENAME 'DEPOSIT_DETAIL.CNAME','CUSTOMER_NAME'


--DELETE, Truncate, Drop Operation
--Part – A:
--Use Deposit_Detail table (Altered table of DEPOSIT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT>=4000
SELECT * FROM DEPOSIT_DETAIL

--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME='CHANDI'

--3. Delete all the accounts having account number (ANO) is greater than 105
DELETE FROM DEPOSIT_DETAIL
WHERE ANO>105

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL

--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL

--Part – B:
--Create following table using query according to the definition.


CREATE TABLE EMPLOYEE_MASTER(
	EmpNo INT,
	EmpName VARCHAR(25),
	JoiningDate DATETIME,
	Salary DECIMAL (8,2),
	City VARCHAR(20)
)

INSERT INTO EMPLOYEE_MASTER VALUES 
(101, 'Keyur' ,'05-JAN-2002', 12000.00 Rajkot)
(102, 'Hardik' ,'15-FEB-2004', 14000.00 Ahmedabad)
((104, 'Bhoomi' ,'23-JUN-2005', 12500.00 Ahmedabad)
(105, 'Harmit' ,'15-FEB-2004', 14000.00 Rajkot)
(106,'Mitesh' ,'25-SEP-2001', 5000.00 Jamnagar)
(107, 'Meera' ,'Null', 7000.00 Morbi)
(108, 'Kishan', '6-FEB-2003', 10000.00 NULL)

SELECT * FROM EMPLOYEE_MASTER


