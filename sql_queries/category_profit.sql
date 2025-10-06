SELECT
    `Category` AS category,
    ROUND(SUM(Sales), 5) AS Total_Sales,
    ROUND(SUM(Profit), 5) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Percent,
    ROUND(AVG(Discount), 5) AS Avg_Discount,
    SUM(Quantity) AS Total_Quantity
FROM superstore_cleaned_final
GROUP BY category
ORDER BY total_profit DESC;
