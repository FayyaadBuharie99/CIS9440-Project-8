USE HOUSING_CIS9440;

USE SCHEMA HOUSINGNY;



SELECT NAME, COUNT(*) AS Duplicate_Count
FROM SCHOOL_DATA
GROUP BY NAME
HAVING COUNT(*) > 1;


-- Delete duplicate rows while keeping only one version
DELETE FROM SCHOOL_DATA
WHERE NAME IN (
    SELECT NAME
    FROM (
        SELECT NAME,
               ROW_NUMBER() OVER (PARTITION BY NAME ORDER BY NAME) AS row_num
        FROM SCHOOL_DATA
        WHERE NAME IN (
            SELECT NAME
            FROM SCHOOL_DATA
            GROUP BY NAME
            HAVING COUNT(*) > 1
        )
    )
    WHERE row_num > 1
);



SELECT COUNT(DISTINCT NAME) AS unique_schools_count
FROM SCHOOL_DATA;

-- Check Unique school entries
SELECT DISTINCT NAME
FROM SCHOOL_DATA
ORDER BY NAME;

-- Check schools in "NY"
SELECT DISTINCT NAME
FROM SCHOOL_DATA
WHERE STATE = 'NY'
ORDER BY NAME;

-- Delete all other schools that do not have "NY" as their state
DELETE FROM SCHOOL_DATA
WHERE STATE != 'NY';


-- Check Unique school entries
SELECT DISTINCT NAME
FROM SCHOOL_DATA
ORDER BY NAME;


-- Update null values in RankStars column to reflect a number of "0" to indicate no school ranking
UPDATE SCHOOL_DATA
SET RANKSTARS = COALESCE(RANKSTARS, '0')
WHERE STATE = 'NY';

-- Update null values in PupilTeacherRatio column to reflect a number of "0" to indicate no school ranking
UPDATE SCHOOL_DATA
SET PUPILTEACHERRATIO = COALESCE(PUPILTEACHERRATIO, '0')
WHERE STATE = 'NY';

-- Update remaining null values in RankStars column and PupilTeacherRatio column
UPDATE SCHOOL_DATA
SET 
    "RANKSTARS" = CASE WHEN "RANKSTARS" = 'n/a' THEN '0' ELSE "RANKSTARS" END,
    "PUPILTEACHERRATIO" = CASE WHEN "PUPILTEACHERRATIO" = 'n/a' THEN '0' ELSE "PUPILTEACHERRATIO" END
WHERE "STATE" = 'NY';

-- Update remaining null values in LowGrade column and HighGrade column to "Not Reported"
UPDATE SCHOOL_DATA
SET 
    "LOWGRADE" = COALESCE("LOWGRADE", 'Not Reported'),
    "HIGHGRADE" = COALESCE("HIGHGRADE", 'Not Reported')
WHERE "STATE" = 'NY';


-- Null values in "LEVEL" column should read "Not Reported"
UPDATE SCHOOL_DATA
SET "LEVEL" = 'Not Reported'
WHERE "LEVEL" IS NULL;


-- View Data

SELECT *
FROM SCHOOL_DATA;
