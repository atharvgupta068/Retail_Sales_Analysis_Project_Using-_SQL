-- SQL RETAIL SALES ANALYSIS PRJECT 

-- CREATE DATABASE sql_project_p1
-- use sql_project_p1

-- CREATING A TABLE
-- CREATE TABLE retail_sales (
-- transactions_id  INT PRIMARY KEY ,
-- 	sale_date   DATE ,
-- 	sale_time   TIME ,
-- 	customer_id INT ,
-- 	gender	VARCHAR(15) ,
--  age	INT,
--  category VARCHAR(15),
-- 	quantiy	INT,
--  price_per_unit FLOAT ,
-- 	cogs FLOAT ,
-- 	total_sale FLOAT
-- );

--  SELECT * FROM retail_sales;

-- SELECT * FROM retail_sales LIMIT 10

-- COUNT NUMBER OF ROWS
-- SELECT COUNT(*) FROM RETAIL_SALES

-- HANDLING NULL VALUES 



     
-- DATA CLEANING

-- SELECT*FROM RETAIL_SALES 
-- WHERE 
-- transactions_id IS NULL
-- OR
-- sale_date IS NULL
-- OR
-- sale_time IS NULL
-- OR
-- gender IS NULL
-- OR 
-- category IS NULL
-- OR
-- quantiy IS NULL
-- OR
-- cogs IS NULL
-- or
-- total_sale IS NULL;

-- SELECT COUNT(*)
-- FROM retail_sales
-- WHERE transactions_id IS NULL
--    OR sale_date IS NULL
--    OR sale_time IS NULL
--    OR gender IS NULL
--    OR category IS NULL
--    OR quantiy IS NULL
--    OR cogs IS NULL
--    OR total_sale IS NULL;


-- DELETE FROM RETAIL_SALES
--  WHERE transactions_id IS NULL
--     OR sale_date IS NULL
--     OR sale_time IS NULL
--     OR gender IS NULL
--     OR category IS NULL
--     OR quantiy IS NULL
--     OR cogs IS NULL
--     OR total_sale IS NULL;




-- DATA EXPLORATION

-- HOW MANY SALES WE HAVE?
-- SELECT  COUNT(*) AS total_sales from retail_sales

-- HOW MANY UNIQUE CUSTOMERS WE HAVE?
-- SELECT  COUNT(DISTINCT CUSTOMER_ID) AS total_sales from retail_sales

-- SELECT  DISTINCT CATEGORY from retail_sales




-- DATA ANALYSIS


-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where total sale is greater than 1000?
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)



-- Q1 Write a SQL query to retrieve all columns for sales made on '2022-11-05?
-- SELECT*FROM RETAIL_SALES
-- WHERE
-- SALE_DATE = '2022-11-05';



-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- SELECT *
-- FROM retail_sales
-- WHERE category = 'Clothing'
--     AND quantiy > 2
--   AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11';


-- Q3 Write a SQL query to calculate the total sales (total_sale) for each category?
-- SELECT 
--     category,
--     SUM(total_sale) as net_sale,
--     COUNT(*) as total_orders
-- FROM retail_sales
-- GROUP BY 1


-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- SELECT 
-- round(AVG(age) , 2) AS avg_age
-- from
-- retail_sales
-- WHERE
-- category='Beauty';



-- Q.5 Write a SQL query to find all transactions where total sale is greater than 1000?
-- SELECT*FROM retail_sales
-- WHERE total_sale>1000





-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- SELECT
-- category,
-- gender,
-- SUM(transactions_id) as total_transactions
-- FROM retail_sales
-- GROUP BY category , gender






 -- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
--   SELECT
--   year(sale_date),
--   month(sale_date),
--   AVG(total_sale) as avg_sale
--   FROM retail_sales
--   GROUP BY 1,2
--   ORDER BY 1,3 DESC




-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales?
-- SELECT 
-- customer_id,
-- SUM(total_sale) AS total_sale
-- FROM retail_sales
-- GROUP BY 1 
-- ORDER BY 2 DESC
-- LIMIT 5



-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category?
-- SELECT
-- category,
-- COUNT(DISTINCT customer_id) AS unique_customers
-- FROM retail_sales
-- GROUP BY category



-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
-- WITH hourly_sales
-- AS(
-- SELECT*,
-- CASE 
--     WHEN hour(sale_time)<12 THEN 'MORNING'
--     WHEN hour(sale_time) between 12 and 17 THEN 'AFTERNOON'
--     ELSE 'EVENING'
-- END AS SHIFT
-- FROM RETAIL_SALES
-- )
-- SELECT
-- shift,
-- COUNT(*) AS total_orders
-- FROM hourly_sales
-- GROUP BY shift







												--  END OF PROJECT --



 

 
 















