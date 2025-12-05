-- 1️⃣ Use the database
USE superstore_project;

-- 2️⃣ Discount Impact on Profit
SELECT Discount,
       ROUND(AVG(Profit), 2) AS Avg_Profit
FROM superstore_cleaned_final
GROUP BY Discount
ORDER BY Discount;

-- 3️⃣ Top 10 Most Profitable Products
SELECT `Product Name`,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_cleaned_final
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- 4️⃣ Bottom 10 Least Profitable Products
SELECT `Product Name`,
       ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_cleaned_final
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;

-- 5️⃣ Average Profit by Ship Mode
SELECT `Ship Mode`,
       ROUND(AVG(Profit), 2) AS Avg_Profit
FROM superstore_cleaned_final
GROUP BY `Ship Mode`
ORDER BY Avg_Profit DESC;
