# Retail Sales Analysis

## Project Overview

This project analyzes retail sales data using SQL and Excel to identify sales trends, high-performing products, customer segments, and the impact of discounts on profitability.

## Business Questions

1. Which 10 products generated the highest revenue?
2. How did sales change month over month?
3. Which customer segments had the highest profit margins?
4. Which regions showed signs that discounts were hurting profitability?

## Tools Used

- SQL / Oracle SQL Developer
- Microsoft Excel
- GitHub

## Analysis Performed

### 1. Top 10 Products by Revenue
Used SQL aggregation and sorting to identify the products generating the highest total sales.

### 2. Month-over-Month Sales Growth
Used monthly sales aggregation and the `LAG()` window function to compare each month's sales with the previous month.

### 3. Customer Segment Profitability
Calculated total sales, total profit, and profit margin for each customer segment.

### 4. Regional Discount Analysis
Compared average discount levels with sales, profit, and profit margin across regions.

## Dashboard
The Excel dashboard contains:

- Total Sales
- Total Profit
- Average Sales
- Average Profit
- Top 10 Products by Revenue
- Month-over-Month Sales Growth
- Profit Margin by Customer Segment
- Regional Discount & Profitability Analysis

## Key Finding

The Canon imageCLASS 2200 Advanced Copier was the highest-selling product in the dataset, generating approximately 61.6K in total sales.

## Files

- `retail_sales_analysis.sql` — SQL queries used for the analysis
- `Retail_Sales_Analysis.xlsx` — Excel analysis and dashboard

## Skills Demonstrated

- SQL querying
- Aggregation and `GROUP BY`
- Window functions using `LAG()`
- Business metrics and profit-margin analysis
- Data visualization
- Excel dashboard creation
- Business insight generation
