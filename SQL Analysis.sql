-- 1. Which region generates highest sales and profit?

SELECT region, 
       ROUND(SUM(sales)::numeric, 2) AS total_sales,
       ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- 2. Which product category is most profitable and what is the profit margin?

SELECT category,
       ROUND(SUM(sales)::numeric, 2) AS total_sales,
       ROUND(SUM(profit)::numeric, 2) AS total_profit,
       ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

-- 3. Which customer segment generates highest revenue and profit?

SELECT segment,
       ROUND(SUM(sales)::numeric, 2) AS total_sales,
       ROUND(SUM(profit)::numeric, 2) AS total_profit,
       COUNT(DISTINCT order_id) AS total_orders
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;

-- 4. Which month has peak sales and which has lowest?

SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    ROUND(SUM(sales)::numeric, 2) AS monthly_sales
FROM superstore
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

-- 5. Which states have high discounts but negative profit?

SELECT state,
       ROUND(AVG(discount)::numeric, 2) AS avg_discount,
       ROUND(SUM(profit)::numeric, 2) AS total_profit,
       COUNT(order_id) AS total_orders
FROM superstore
GROUP BY state
HAVING SUM(profit) < 0
ORDER BY total_profit ASC;