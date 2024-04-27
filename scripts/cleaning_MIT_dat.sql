-- MIT_typicalexpenses
-- Set the database and schema
USE DATABASE HOUSING_CIS9440;
USE SCHEMA HOUSINGNY;

-- Alter the table to drop unwanted columns
ALTER TABLE MIT_typicalexpenses
DROP COLUMN "1 Adult - 1ÊChild",
            "1 Adult - 2ÊChildren",
            "1 Adult - 3ÊChildren",
            "2 Adults (1 W) - 0ÊChildren",
            "2 Adults (1 W) - 1ÊChild",
            "2 Adults (1 W)  - 2ÊChildren",
            "2 Adults (1 W) - 3ÊChildren",
            "2 Adults (Both W) - 0ÊChildren",
            "2 Adults (Both W) - 1ÊChild",
            "2 Adults (Both W) - 2ÊChildren",
            "2 Adults (Both W) - 3ÊChildren";

-- Delete rows where "Fields" column is not 'Required annual income after taxes'
DELETE FROM "MIT_typicalexpenses"
WHERE "Fields" <> 'Required annual income after taxes';

-- Rename column:
ALTER TABLE "MIT_typicalexpenses"
RENAME COLUMN "1 Adult - 0ÊChildren" TO living_expenses;
-- Drop the "Fields" column
ALTER TABLE "MIT_typicalexpenses"
DROP COLUMN "Fields";

---- MIT_livingwage_calculation:
USE DATABASE HOUSING_CIS9440;
USE SCHEMA HOUSINGNY;

ALTER TABLE "MIT_livingwage_calculation"
DROP COLUMN "1 Adult - 1ÊChild",
           "1 Adult - 2ÊChildren",
           "1 Adult - 3ÊChildren",
           "2 Adults (1 W) - 0ÊChildren",
           "2 Adults (1 W) - 1ÊChild",
           "2 Adults (1 W)  - 2ÊChildren",
           "2 Adults (1 W) - 3ÊChildren",
           "2 Adults (Both W) - 0ÊChildren",
           "2 Adults (Both W) - 1ÊChild",
           "2 Adults (Both W) - 2ÊChildren",
           "2 Adults (Both W) - 3ÊChildren";

-- Create or replace the view to organize the data into separate columns
CREATE OR REPLACE VIEW HOUSING_CIS9440.HOUSINGNY.LIVING_WAGE_VIEW AS
SELECT
    MAX(CASE WHEN "Fields" = 'Poverty Wage' THEN "1 Adult - 0ÊChildren" END) AS poverty_wage,
    MAX(CASE WHEN "Fields" = 'Living Wage' THEN "1 Adult - 0ÊChildren" END) AS living_wage,
    MAX(CASE WHEN "Fields" = 'Minimum Wage' THEN "1 Adult - 0ÊChildren" END) AS minimum_wage,
    "Counties " AS Counties
FROM "HOUSING_CIS9440"."HOUSINGNY"."MIT_livingwage_calculation"
GROUP BY "Counties ";

-- Select data from the created view
SELECT *
FROM HOUSING_CIS9440.HOUSINGNY.LIVING_WAGE_VIEW;

USE DATABASE HOUSING_CIS9440;
USE SCHEMA HOUSINGNY;

CREATE TABLE mit_livingwage LIKE LIVING_WAGE_VIEW

select * 
from mit_livingwage

INSERT INTO mit_livingwage
SELECT * FROM LIVING_WAGE_VIEW;