# Personal Expense Tracker – SQL Analytics

## Description
This project is built using SQL to track user expenses and generate analytical reports.

## Technologies Used
- MySQL
- SQL

## Database Name
expense_tracker

## Tables Used
1. users  
2. categories  
3. expenses  

## Features
- Track daily expenses  
- Category wise expense analysis  
- Monthly reports  
- Highest spending user  
- Date range analysis  

## Sample SQL Queries

### 1. Total Expense by Category
SELECT category, SUM(amount)
FROM expenses
GROUP BY category;

### 2. Monthly Expense Report
SELECT MONTH(date), SUM(amount)
FROM expenses
GROUP BY MONTH(date);

### 3. Highest Spending User
SELECT user_id, SUM(amount)
FROM expenses
GROUP BY user_id
ORDER BY SUM(amount) DESC;

## How to Run

1. Install MySQL  
2. Create database  
3. Run database.sql file  
4. Insert sample data  
5. Execute queries  

## Learning Outcomes
- SQL Joins  
- Aggregations  
- Group By  
- Subqueries  
- Real time analytics
