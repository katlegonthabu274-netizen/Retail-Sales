-- Databricks notebook source
--returns all columns and rows in the data table
SELECT*
FROM retail.sales.dataset;

--Early date of collection is 2023-01-01
SELECT MIN(Date) AS min_date
FROM retail.sales.dataset;

--The latest date of collection is 2023-01-01
--The date range of collection is therefore 1 year
SELECT MAX(Date) As max_date
FROM retail.sales.dataset;

--Each row represents a single transaction from a unique customer
SELECT COUNT(*) AS cnt_rows,
       COUNT(DISTINCT 'Transaction ID') As number_of_transactions,
       COUNT (DISTINCT 'Customer ID') As number_of_customers
FROM retail.sales.dataset;

--Only two genders are contained which is male and female
SELECT DISTINCT gender
FROM retail.sales.dataset;

--Three categories are observed include Beauty, Clothing and Electronics
SELECT DISTINCT `Product Category`
FROM retail.sales.dataset;

--The youngest age is 18 years old
SELECT MIN(Age) As min_age
FROM retail.sales.dataset;

--The oldest age is 64 years old
SELECT MAX(Age) AS max_age
FROM retail.sales.dataset;

--Several aggregate functions are observed below to have an overview of the data presented. 
--The total number of units sold are 2514 and the total revenue is 456000
--The average spend is 456
-- The minimum price per unit is 25 and the maximum price price per unit is 500
--The minimum age is 18 years old and the maximum age is 64 years old
--Lastly the early date of collection is 2023-01-01 and the latest date of collection is 2024-01-01
--The ranges are derived from the minimum and mximum values. 
SELECT SUM(Quantity) AS number_of_units_sold,
       SUM(`Total Amount`) AS total_revenue,
       AVG(`Total Amount`) AS avg_spend,
       MIN(`Price per unit`) AS min_price,
       MAX(`Price per unit`) AS max_price,
       MIN(Age) As min_age,
       MAX(Age) AS max_age,
       MIN(Date) AS min_date,
       MAX(Date) AS max_date
FROM retail.sales.dataset;
