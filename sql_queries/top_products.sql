SELECT
    `Product Name` AS product_name,
    ROUND(SUM(Sales), 5) AS Total_Sales,
    ROUND(SUM(Profit), 5) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Percent
FROM superstore_cleaned_final
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 50;
