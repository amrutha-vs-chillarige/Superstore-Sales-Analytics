-- 1️⃣ Use the database
USE superstore_project;

-- 2️⃣ Total Sales & Profit by Region
SELECT Region,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_cleaned_final
GROUP BY Region
ORDER BY Total_Profit DESC;

-- 3️⃣ Sales & Profit by Category
SELECT Category,
       ROUND(SUM(Sales), 2) AS Total_Sales,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_cleaned_final
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 4️⃣ Monthly Sales Trend
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS Month,
       ROUND(SUM(Sales), 2) AS Monthly_Sales
FROM superstore_cleaned_final
GROUP BY Month
ORDER BY Month;

-- 5️⃣ Top 10 States by Profit
SELECT State,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_cleaned_final
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;
