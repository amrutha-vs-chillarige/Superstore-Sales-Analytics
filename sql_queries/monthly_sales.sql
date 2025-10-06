SELECT
    DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Month,
    ROUND(SUM(Sales), 5) AS Total_Sales,
    ROUND(SUM(Profit), 5) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS Profit_Margin_Percent
FROM superstore_cleaned_final
GROUP BY month
ORDER BY month;
