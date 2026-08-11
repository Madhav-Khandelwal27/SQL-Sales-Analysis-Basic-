create database SQL_p1;
use SQL_p1;

create table retail_sales
(   
    transactions_id INT PRIMARY KEY,
    sale_date DATE,	
    sale_time TIME,
    customer_id INT,	
    gender VARCHAR(15),
    age INT,
    category VARCHAR(25),
    quantity INT,
    price_per_unit FLOAT,	
    cogs FLOAT,
    total_sale FLOAT);
    
Select * from retail_sales;

-- Data exploration and cleaning --

Select count(*) from retail_sales;

Select count(distinct customer_id) from retail_sales;

Select distinct category from retail_sales;

Select * from retail_sales 
where sale_date is null or sale_time is null or 
customer_id is null or gender is null or age is null or category is null or quantity is null or 
price_per_unit is null or cogs is null or total_sale is null;

SET SQL_SAFE_UPDATES = 0;

Delete from retail_sales
where
sale_date is null or sale_time is null or 
customer_id is null or gender is null or age is null or category is null or quantity is null or 
price_per_unit is null or cogs is null or total_sale is null;

-- Data Analysis and findings --

Select * from retail_sales where category = 'Clothing' and 
quantity >=4;

Select sum(total_sale) as Total_Sales, category from retail_sales
group by category;

Select round(avg(age),2) as Average_Age, category from retail_sales where category = 'Beauty';

Select * from retail_sales where total_sale >1000;

Select count(*) as total_transactions, category, gender from retail_sales
group by category, gender
order by category;

SELECT customer_id, SUM(total_sale) as total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;

Select category, count(distinct customer_id) as unique_customer
from retail_sales
group by category;

Select age,gender, count(distinct customer_id) as unique_customers from retail_sales
group by age, gender
having age >50;