USE DATABASE HOUSING_CIS9440;
USE SCHEMA HOUSINGNY;


-- Populate dim_school with unique school names from SCHOOL_DATA and insert data into dim_school

INSERT INTO HOUSING_CIS9440.HOUSINGNY.DIM_SCHOOL (
    SCHOOL_ID,
    SCHOOL_NAME,
    IS_PRIVATE,
    SCHOOL_LEVEL,
    LOW_GRADE,
    HIGH_GRADE,
    RANK_STARS
)
SELECT
    ROW_NUMBER() OVER (ORDER BY NAME) AS SCHOOL_ID,
    NAME AS SCHOOL_NAME,
    CASE WHEN ISPRIVATE THEN 'True' ELSE 'False' END AS IS_PRIVATE,
    LEVEL AS SCHOOL_LEVEL,
    LOWGRADE AS LOW_GRADE,
    HIGHGRADE AS HIGH_GRADE,
    CASE WHEN RANKSTARS = 'null' THEN NULL ELSE TO_NUMBER(RANKSTARS) END AS RANK_STARS
FROM 
    HOUSING_CIS9440.HOUSINGNY.SCHOOL_DATA;




-- See distinct values that may be causing trouble in LOWGRADE column
SELECT DISTINCT LOWGRADE FROM HOUSING_CIS9440.HOUSINGNY.SCHOOL_DATA;


-- Label "Not Reported" for all null values in LOW_GRADE and HIGH_GRADE columns in dim_school table
UPDATE HOUSING_CIS9440.HOUSINGNY.DIM_SCHOOL
SET LOW_GRADE = 'Not Reported'
WHERE LOW_GRADE IS NULL;

UPDATE HOUSING_CIS9440.HOUSINGNY.DIM_SCHOOL
SET HIGH_GRADE = 'Not Reported'
WHERE HIGH_GRADE IS NULL;



-- See all values
SELECT *
FROM DIM_SCHOOL