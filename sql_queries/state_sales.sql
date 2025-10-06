-- Drop the table if it already exists
DROP TABLE IF EXISTS state_sales;

-- Create table with aggregated state-level sales
CREATE TABLE state_sales AS
SELECT
    `State` AS state,
    ROUND(SUM(Sales), 5) AS total_sales,        -- Round sales to 5 decimal places
    ROUND(SUM(Profit), 5) AS total_profit,      -- Round profit to 5 decimal places
    ROUND(SUM(Profit)/SUM(Sales)*100, 2) AS profit_margin  -- Profit margin in percentage, 2 decimals
FROM superstore_cleaned_final
GROUP BY `State`;

-- Check the results
SELECT * FROM state_sales;
