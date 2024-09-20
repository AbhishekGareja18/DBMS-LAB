CREATE TABLE SALES_DATA(
	Region VARCHAR(50),
	Product VARCHAR(30),
	Sales_Amount INT,
	Year INT
)
INSERT INTO SALES_DATA VALUES
	('North_America', 'Watch',1500,2023),
	('Europe','Mobile' ,1200,2023),
	('Asia', 'Watch',1800,2023),
	('North_America' ,'TV', 900,2024),
	('Europe', 'Watch', 2000,2024),
	('Asia' ,'Mobile' ,1000 ,2024),
	('North_America', 'Mobile', 1600, 2023),
	('Europe' ,'TV' ,1500,2023),
	('Asia', 'TV', 1100, 2024),
	('North_America' ,'Watch' ,1700 ,2024)		SELECT * FROM SALES_DATA--Lab 8 Perform SQL queries for Group by with having and Order by
--Table: SALES_DATA

--Part – A:
--1. Display Total Sales Amount by Region.
	SELECT SUM(Sales_Amount) AS TOTAL_SALES
	FROM SALES_DATA
	GROUP BY Region
--2. Display Average Sales Amount by Product
	SELECT AVG(Sales_Amount) AS AVERAGE_SALES
	FROM SALES_DATA
	GROUP BY Product
--3. Display Maximum Sales Amount by Year
	SELECT MAX(Sales_Amount) AS Maximum_Amount
	FROM SALES_DATA
	GROUP BY Year
--4. Display Minimum Sales Amount by Region and Year
	SELECT MIN(Sales_Amount) AS Minimum_Amount
	FROM SALES_DATA
	GROUP BY Region,Year
--5. Count of Products Sold by Region
	SELECT COUNT(Product) AS PRODUCT_COUNT
	FROM SALES_DATA
	GROUP BY Region
--6. Display Sales Amount by Year and Product
	SELECT SUM(Sales_Amount) AS TOTAL_AMOUNT
	FROM SALES_DATA
	GROUP BY YEAR,Product
--7. Display Regions with Total Sales Greater Than 5000
	SELECT Region,SUM(Sales_Amount) AS SUM_AMOUNT
	FROM SALES_DATA
	GROUP BY Region
	HAVING SUM(Sales_Amount)>5000
--8. Display Products with Average Sales Less Than 10000
	SELECT Product,AVG(Sales_Amount) AS AVG_SALES
	FROM SALES_DATA
	GROUP BY Product
	HAVING AVG(Sales_Amount)<10000
--9. Display Years with Maximum Sales Exceeding 500
	SELECT YEAR,MAX(Sales_Amount) AS MAX_SALES
	FROM SALES_DATA
	GROUP BY YEAR
	HAVING MAX(Sales_Amount)>500
--10. Display Regions with at Least 3 Distinct Products Sold.
	SELECT Region, COUNT(DISTINCT Product) AS UNIQUE_PRODUCT
	FROM SALES_DATA
	GROUP BY Region
--11. Display Years with Minimum Sales Less Than 1000
	SELECT YEAR,MIN(Sales_Amount) AS MIN_SALES
	FROM SALES_DATA
	GROUP BY YEAR
	HAVING MIN(Sales_Amount)<1000
--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
	SELECT Region,SUM(Sales_Amount) AS SUM_SALES
	FROM SALES_DATA
	GROUP BY Region,YEAR
	HAVING Year=2023
	ORDER BY SUM(Sales_Amount)