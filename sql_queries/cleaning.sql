-- 1️⃣ Select the database
USE superstore_project;

-- 2️⃣ Drop previous cleaned tables if they exist (to avoid errors)
DROP TABLE IF EXISTS superstore_cleaned;
DROP TABLE IF EXISTS superstore_cleaned_final;

-- 3️⃣ Create a cleaned table with only valid rows
-- Remove rows with missing profit or sales <= 0 or negative discounts/quantity
CREATE TABLE superstore_cleaned AS
SELECT *
FROM superstore
WHERE Sales > 0
  AND Profit IS NOT NULL
  AND Discount >= 0
  AND Quantity > 0;

-- 4️⃣ OPTIONAL: check for duplicates in Order ID
-- This won’t modify the table, just shows if duplicates exist
SELECT `Order ID`, COUNT(*) AS cnt
FROM superstore_cleaned
GROUP BY `Order ID`
HAVING cnt > 1;

-- 5️⃣ Fast duplicate removal (if duplicates exist)
-- This creates a new table keeping only the first row for each Order ID
CREATE TABLE superstore_cleaned_final AS
SELECT * 
FROM superstore_cleaned sc
WHERE `Row ID` IN (
    SELECT MIN(`Row ID`) 
    FROM superstore_cleaned
    GROUP BY `Order ID`
);

-- 6️⃣ Now, superstore_cleaned_final is your fully cleaned table
-- ✅ Use this table for all analytics queries
