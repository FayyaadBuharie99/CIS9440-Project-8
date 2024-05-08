USE DATABASE HOUSING_CIS9440;
USE SCHEMA HOUSINGNY;

-- Populate dim_profession with unique professions from MIT_typicalannualsalaries
INSERT INTO dim_profession (PROFESSION_ID, PROFESSION_TITLE)
SELECT 
    ROW_NUMBER() OVER (ORDER BY "Occupational Area") AS PROFESSION_ID,
    "Occupational Area" AS PROFESSION_TITLE
FROM "MIT_typicalannualsalaries"
WHERE "Occupational Area" IS NOT NULL
GROUP BY "Occupational Area";