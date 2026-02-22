-- Total Revenue
SELECT ROUND(SUM(sales),2) AS total_revenue
FROM sales_clean;

-- Sales by Region
SELECT region, ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY region
ORDER BY total_sales DESC;

-- Sales by Category
SELECT category, ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY category
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
       ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY month
ORDER BY month;

-- Top Products
SELECT product_name, ROUND(SUM(sales),2) AS total_sales
FROM sales_clean
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

