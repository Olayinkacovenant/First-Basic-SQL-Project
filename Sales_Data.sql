SELECT *
From Salesdataproject..sales_data

-- (1) What month of the year generally has the most orders?
SELECT distinct(MONTH_ID), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by MONTH_ID
Order by No_of_Orders desc

--Answer: November has the highest number of orders.

-- (1b) What month in each year has the most orders in 2003?
SELECT distinct(MONTH_ID), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Where YEAR_ID = 2003
Group by MONTH_ID
Order by No_of_Orders desc

--Answer: November has the highest number of orders in 2003.


-- (1c) What month in each year has the most orders in 2004?
SELECT distinct(MONTH_ID), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Where YEAR_ID = 2004
Group by MONTH_ID
Order by No_of_Orders desc

--Answer: November has the highest number of orders in 2004.


-- (1d) What month in each year has the most orders in 2005?
SELECT distinct(MONTH_ID), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Where YEAR_ID = 2005
Group by MONTH_ID
Order by No_of_Orders desc
--Answer: May has the highest number of orders in 2003.
-- As seen, 2005 has only 5 months of sales as opposed to other years that had 12 months.


-- (2) What quarter of the year generally has the most orders?
SELECT distinct(QTR_ID), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by QTR_ID
Order by No_of_Orders desc
--Answer: Quarter 4 has the highest amount of orders.


-- (3) What quarter of the year generally has the most sales?
SELECT distinct(QTR_ID), Sum(SALES) as Sales
From Salesdataproject..sales_data
Group by QTR_ID
Order by Sales desc
--Answer: Quarter 4 has the highest amount of sale.


--(4) What productline gets ordered for the most?
SELECT Distinct(PRODUCTLINE), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by PRODUCTLINE
Order by No_of_Orders desc

--Answer: Classic Cars was ordered for the most.

-- (5) What product line generally has the most sales?
SELECT Distinct(PRODUCTLINE), Sum(SALES) as Sales
From Salesdataproject..sales_data
Group by PRODUCTLINE
Order by Sales desc
--Answer: Classic Cars has the highest sales.

-- (6) What city do products get ordered for the most?
SELECT Distinct(CITY), Count(City) as No_of_Orders
From Salesdataproject..sales_data
Group by CITY
Order by No_of_Orders desc

SELECT Distinct(CITY), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by CITY
Order by No_of_Orders desc

--Answer: Madrid

-- (7) What country do products get ordered for the most?
SELECT Distinct(COUNTRY), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by COUNTRY
Order by No_of_Orders desc

SELECT Distinct(COUNTRY), Count(COUNTRY) as No_of_Orders
From Salesdataproject..sales_data
Group by COUNTRY
Order by No_of_Orders desc

--Answer: USA

-- (8) What Territory do products get ordered for the most?
SELECT Distinct(TERRITORY), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by TERRITORY
Order by No_of_Orders desc

--Answer: EMEA

--(9) What dealsize gets ordered for the most?
SELECT Distinct(DEALSIZE), Sum(QUANTITYORDERED) as No_of_Orders
From Salesdataproject..sales_data
Group by DEALSIZE
Order by No_of_Orders desc
--Answer: Medium


--(10) What dealsize sells the most?
SELECT Distinct(DEALSIZE), Sum(Sales) as Sales
From Salesdataproject..sales_data
Group by DEALSIZE
Order by Sales desc
--Answer: Medium
