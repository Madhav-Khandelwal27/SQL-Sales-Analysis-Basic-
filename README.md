# SQL-Sales-Analysis-Basic-
The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries. 

-------------------------------------------------------------------------------------------------------------------
Objectives:

-Set up a retail sales database: Create a retail sales database with the provided sales data.

-Data Cleaning: Identify and remove any records with missing or null values.

-Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.

-Business Analysis: Use SQL queries to answer specific business questions and derive insights from the sales data.

-------------------------------------------------------------------------------------------------------------------

1. Database Setup

Database Creation: The project starts by creating a database named SQL_p1.

Table Creation: A table named retail_sales is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

-------------------------------------------------------------------------------------------------------------------

2. Data Exploration & Cleaning

Record Count: Determine the total number of records in the dataset.

Customer Count: Find out how many unique customers are in the dataset.

Category Count: Identify all unique product categories in the dataset.

Null Value Check: Check for any null values in the dataset and delete records with missing data.

-------------------------------------------------------------------------------------------------------------------

3. Data Analysis & Findings

The following questions were answered:

Q1. Write an SQL query to fetch all the data where the product category is 'Clothing', and the quantity sold is greater than or equal to 4.

Q2. Write an SQL query to find the total sales amount for each category.

Q3. Write an SQL query to find the average age of customers who purchased items from the 'Beauty' category.

Q4. Write an SQL query to find all transactions where the total_sale is greater than 1000.

Q5. Write an SQL query to find the total number of transactions made by each gender in each category.

Q6. Write an SQL query to find the top 5 customers based on the highest total sales.

Q7. Write an SQL query to find the number of unique customers who purchased items from each category,

Q8. Write an SQL query to find the gender, age and count of unique customers whose age is greater than 50.

-------------------------------------------------------------------------------------------------------------------

SQL queries:

Ans1. Select * from retail_sales where category = 'Clothing' and 
quantity >=4;


Ans2. Select sum(total_sale) as Total_Sales, category from retail_sales
group by category;


Ans3. Select round(avg(age),2) as Average_Age, category from retail_sales where category = 'Beauty';

Ans4. Select * from retail_sales where total_sale >1000;

Ans5. Select count(*) as total_transactions, category, gender from retail_sales
group by category, gender
order by category;


Ans6. SELECT customer_id, SUM(total_sale) as total_sales
FROM retail_sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 5;


Ans7. Select category, count(distinct customer_id) as unique_customer
from retail_sales
group by category;

Ans8. Select age,gender, count(distinct customer_id) as unique_customers from retail_sales
group by age, gender
having age >50;

