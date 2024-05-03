-- Update 'STATE' column to 'Unknown State' for null values
UPDATE CLEAN_TABLE_0
SET STATE = 'Unknown State'
WHERE STATE IS NULL;
 
-- Update 'PROPERTY_ZIP5' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_ZIP5 = 0
WHERE PROPERTY_ZIP5 IS NULL;
 
-- Update 'PROPERTY_STREET_ADDRESS' column to 'Unknown Address' for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_STREET_ADDRESS = 'Unknown Address'
WHERE PROPERTY_STREET_ADDRESS IS NULL;
 
-- Update 'PROPERTY_CITY' column to 'Unknown City' for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_CITY = 'Unknown City'
WHERE PROPERTY_CITY IS NULL;
 
-- Update 'PROPERTY_COUNTY' column to 'Unknown County' for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_COUNTY = 'Unknown County'
WHERE PROPERTY_COUNTY IS NULL;
 
-- Update 'PROPERTY_ID' column to 'Unknown ID' for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_ID = 'Unknown ID'
WHERE PROPERTY_ID IS NULL;
 
-- Update 'SALE_DATETIME' column to 'Unknown Date' for null values
UPDATE CLEAN_TABLE_0
SET SALE_DATETIME = 'Unknown Date'
WHERE SALE_DATETIME IS NULL;
 
-- Update 'PROPERTY_TYPE' column to 'Unknown Type' for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_TYPE = 'Unknown Type'
WHERE PROPERTY_TYPE IS NULL;
 
-- Update 'SALE_PRICE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET SALE_PRICE = 0
WHERE SALE_PRICE IS NULL;
 
-- Update 'SELLER_1_NAME' column to 'Unknown Seller 1' for null values
UPDATE CLEAN_TABLE_0
SET SELLER_1_NAME = 'Unknown Seller 1'
WHERE SELLER_1_NAME IS NULL;
 
-- Update 'BUYER_1_NAME' column to 'Unknown Buyer 1' for null values
UPDATE CLEAN_TABLE_0
SET BUYER_1_NAME = 'Unknown Buyer 1'
WHERE BUYER_1_NAME IS NULL;
 
-- Update 'BUILDING_NUM_UNITS' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_NUM_UNITS = 0
WHERE BUILDING_NUM_UNITS IS NULL;
 
-- Update 'BUILDING_YEAR_BUILT' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_YEAR_BUILT = 0
WHERE BUILDING_YEAR_BUILT IS NULL;
 
-- Update 'SOURCE_URL' column to 'Unknown URL' for null values
UPDATE CLEAN_TABLE_0
SET SOURCE_URL = 'Unknown URL'
WHERE SOURCE_URL IS NULL;
 
-- Update 'BOOK' column to 'Unknown Book' for null values
UPDATE CLEAN_TABLE_0
SET BOOK = 'Unknown Book'
WHERE BOOK IS NULL;
 
-- Update 'PAGE' column to 'Unknown Page' for null values
UPDATE CLEAN_TABLE_0
SET PAGE = 'Unknown Page'
WHERE PAGE IS NULL;
 
-- Update 'TRANSFER_DEED_TYPE' column to 'Unknown Deed Type' for null values
UPDATE CLEAN_TABLE_0
SET TRANSFER_DEED_TYPE = 'Unknown Deed Type'
WHERE TRANSFER_DEED_TYPE IS NULL;
 
-- Update 'PROPERTY_TOWNSHIP' column to 'Unknown Township' for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_TOWNSHIP = 'Unknown Township'
WHERE PROPERTY_TOWNSHIP IS NULL;
 
-- Update 'PROPERTY_LAT' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_LAT = 0
WHERE PROPERTY_LAT IS NULL;
 
-- Update 'PROPERTY_LON' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET PROPERTY_LON = 0
WHERE PROPERTY_LON IS NULL;
 
-- Update 'SALE_ID' column to 'Unknown Sale ID' for null values
UPDATE CLEAN_TABLE_0
SET SALE_ID = 'Unknown Sale ID'
WHERE SALE_ID IS NULL;
 
-- Update 'DEED_DATE' column to 'Unknown Deed Date' for null values
UPDATE CLEAN_TABLE_0
SET DEED_DATE = 'Unknown Deed Date'
WHERE DEED_DATE IS NULL;
 
-- Update 'BUILDING_NUM_STORIES' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_NUM_STORIES = 0
WHERE BUILDING_NUM_STORIES IS NULL;
 
-- Update 'BUILDING_NUM_BEDS' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_NUM_BEDS = 0
WHERE BUILDING_NUM_BEDS IS NULL;
 
-- Update 'BUILDING_NUM_BATHS' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_NUM_BATHS = 0
WHERE BUILDING_NUM_BATHS IS NULL;

-- Update 'BUILDING_AREA_SQFT' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_AREA_SQFT = 0
WHERE BUILDING_AREA_SQFT IS NULL;
 
-- Update 'BUILDING_ASSESSED_VALUE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_ASSESSED_VALUE = 0
WHERE BUILDING_ASSESSED_VALUE IS NULL;
 
-- Update 'BUILDING_ASSESSED_DATE' column to 'Unknown Assessed Date' for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_ASSESSED_DATE = 'Unknown Assessed Date'
WHERE BUILDING_ASSESSED_DATE IS NULL;
 
-- Update 'LAND_AREA_ACRES' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET LAND_AREA_ACRES = 0
WHERE LAND_AREA_ACRES IS NULL;
 
-- Update 'LAND_AREA_SQFT' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET LAND_AREA_SQFT = 0
WHERE LAND_AREA_SQFT IS NULL;
 
-- Update 'LAND_ASSESSED_VALUE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET LAND_ASSESSED_VALUE = 0
WHERE LAND_ASSESSED_VALUE IS NULL;
 
-- Update 'SELLER_2_NAME' column to 'Unknown Seller 2' for null values
UPDATE CLEAN_TABLE_0
SET SELLER_2_NAME = 'Unknown Seller 2'
WHERE SELLER_2_NAME IS NULL;
 
-- Update 'BUYER_2_NAME' column to 'Unknown Buyer 2' for null values
UPDATE CLEAN_TABLE_0
SET BUYER_2_NAME = 'Unknown Buyer 2'
WHERE BUYER_2_NAME IS NULL;
 
-- Update 'LAND_ASSESSED_DATE' column to 'Unknown Land Assessed Date' for null values
UPDATE CLEAN_TABLE_0
SET LAND_ASSESSED_DATE = 'Unknown Land Assessed Date'
WHERE LAND_ASSESSED_DATE IS NULL;
 
-- Update 'SELLER_1_STATE' column to 'Unknown Seller 1 State' for null values
UPDATE CLEAN_TABLE_0
SET SELLER_1_STATE = 'Unknown Seller 1 State'
WHERE SELLER_1_STATE IS NULL;
 
-- Update 'SELLER_2_STATE' column to 'Unknown Seller 2 State' for null values
UPDATE CLEAN_TABLE_0
SET SELLER_2_STATE = 'Unknown Seller 2 State'
WHERE SELLER_2_STATE IS NULL;
 
-- Update 'BUYER_1_STATE' column to 'Unknown Buyer 1 State' for null values
UPDATE CLEAN_TABLE_0
SET BUYER_1_STATE = 'Unknown Buyer 1 State'
WHERE BUYER_1_STATE IS NULL;
 
-- Update 'BUYER_2_STATE' column to 'Unknown Buyer 2 State' for null values
UPDATE CLEAN_TABLE_0
SET BUYER_2_STATE = 'Unknown Buyer 2 State'
WHERE BUYER_2_STATE IS NULL;
 
-- Update 'TOTAL_ASSESSED_VALUE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET TOTAL_ASSESSED_VALUE = 0
WHERE TOTAL_ASSESSED_VALUE IS NULL;
 
-- Update 'TOTAL_APPRAISED_VALUE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET TOTAL_APPRAISED_VALUE = 0
WHERE TOTAL_APPRAISED_VALUE IS NULL;
 
-- Update 'LAND_APPRAISED_VALUE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET LAND_APPRAISED_VALUE = 0
WHERE LAND_APPRAISED_VALUE IS NULL;
 
-- Update 'BUILDING_APPRAISED_VALUE' column to 0 for null values
UPDATE CLEAN_TABLE_0
SET BUILDING_APPRAISED_VALUE = 0
WHERE BUILDING_APPRAISED_VALUE IS NULL;
 
-- Update 'LAND_TYPE' column to 'Unknown Land Type' for null values
UPDATE CLEAN_TABLE_0
SET LAND_TYPE = 'Unknown Land Type'
WHERE LAND_TYPE IS NULL;