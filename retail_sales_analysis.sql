

#Q-1: Top 10 Products by Revenue

select PRODUCT_NAME,
sum(Sales) as TOTAL_SALES
from superstore
group by product_name
order by TOTAL_SALES DESC
FETCH FIRST 10 ROWS ONLY;


#Q-2: Month-over-Month Sales Growth

select month,total_sales,LAG(total_sales) OVER(ORDER BY month) AS previous_month_sales,
ROUND(
(total_sales-LAG(total_sales) OVER (ORDER BY month))/LAG(total_sales) OVER (ORDER BY month)*100,2) AS mom_growth_percent
FROM(
SELECT TO_CHAR(order_date,'YYYY-MM') AS month,
SUM(sales) AS total_sales
FROM superstore
GROUP BY TO_CHAR(order_date,'YYYY-MM'))
ORDER BY month;


#Q-3: Customer Segments with Highest Profit Margins

SELECT segment,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(
(SUM(profit)/SUM(sales))*100,2) AS profit_margin_percent
FROM superstore
GROUP BY segment
ORDER BY profit_margin_percent
DESC;


#Q-4: Regions where Discounts are Hurting Profitability

SELECT region,
ROUND(AVG(discount)*100,2) AS average_discount_percent,
SUM(sales) AS total_sales,
SUM(profit) AS total_profit,
ROUND(
(SUM(profit)/SUM(sales))*100,2) AS profit_margin_percent
FROM superstore
GROUP BY region
ORDER BY profit_margin_percent
ASC;