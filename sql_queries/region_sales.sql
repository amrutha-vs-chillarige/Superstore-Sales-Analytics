DROP TABLE IF EXISTS state_sales;

CREATE TABLE state_sales AS
SELECT
    `State` AS state,
    ROUND(SUM(CASE WHEN Sales > 0 THEN Sales ELSE 0 END), 5) AS total_sales,
    ROUND(SUM(CASE WHEN Profit > 0 THEN Profit ELSE 0 END), 5) AS total_profit,
    ROUND(
        SUM(CASE WHEN Profit > 0 THEN Profit ELSE 0 END) / 
        SUM(CASE WHEN Sales > 0 THEN Sales ELSE 0 END) * 100, 2
    ) AS profit_margin
FROM superstore_cleaned_final
GROUP BY `State`;

SELECT * FROM state_sales;
