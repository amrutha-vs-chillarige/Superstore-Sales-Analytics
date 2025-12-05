-- 1️⃣ Use the database
USE superstore_project;

-- 2️⃣ Calculate RFM metrics
WITH rfm AS (
    SELECT
        `Customer ID`,
        DATEDIFF('2018-12-31', STR_TO_DATE(MAX(`Order Date`), '%m/%d/%Y')) AS Recency,
        COUNT(DISTINCT `Order ID`) AS Frequency,
        ROUND(SUM(Sales), 5) AS Monetary
    FROM superstore_cleaned_final
    GROUP BY `Customer ID`
),

-- 3️⃣ Compute percentile ranks for R, F, M
rfm_percentiles AS (
    SELECT
        *,
        NTILE(5) OVER (ORDER BY Recency ASC) AS R_score,   -- smaller Recency = higher score
        NTILE(5) OVER (ORDER BY Frequency DESC) AS F_score,
        NTILE(5) OVER (ORDER BY Monetary DESC) AS M_score
    FROM rfm
)

-- 4️⃣ Assign segments based on RFM scores
SELECT
    `Customer ID`,
    Recency,
    Frequency,
    Monetary,
    R_score,
    F_score,
    M_score,
    (R_score + F_score + M_score) AS RFM_score,
    
    CASE
        WHEN (R_score + F_score + M_score) >= 13 THEN 'Champions'
        WHEN (R_score + F_score + M_score) BETWEEN 10 AND 12 THEN 'Loyal'
        WHEN (R_score + F_score + M_score) BETWEEN 7 AND 9 THEN 'Regular'
        ELSE 'At Risk'
    END AS Segment

FROM rfm_percentiles
ORDER BY RFM_score DESC;
