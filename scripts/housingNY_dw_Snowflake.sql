CREATE SCHEMA HOUSINGNY;

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_BUILDING ( 
	BUILDING_ID          integer NOT NULL   ,
	BUILDING_NUM_UNITS   integer    ,
	BUILDING_YEAR_BUILT  integer    ,
	BUILDING_NUM_STORIES integer    ,
	BUILDING_NUM_BEDS    integer    ,
	BUILDING_NUM_BATHS   integer    ,
	BUILDING_NUM_SQFT    integer    ,
	CONSTRAINT PK_DIM_BUILDING PRIMARY KEY ( BUILDING_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_LAND ( 
	LAND_ID              integer NOT NULL   ,
	LAND_TYPE            varchar(255)    ,
	CONSTRAINT PK_DIM_LAND PRIMARY KEY ( LAND_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_LOCATION ( 
	LOCATION_ID          integer NOT NULL   ,
	COUNTIES             varchar(255)    ,
	ZIP_CODE             integer    ,
	LONGITUDE            integer    ,
	LATITUDE             integer    ,
	STATE_NAME           varchar(255)    ,
	CITY                 varchar(255)    ,
	STREET_ADDRESS       varchar(255)    ,
	TOWNSHIP             varchar(255)    ,
	PROPERTY_TYPE        varchar(255)    ,
	CONSTRAINT PK_DIM_LOCATION PRIMARY KEY ( LOCATION_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_PROFESSION ( 
	PROFESSION_ID        integer NOT NULL   ,
	PROFESSION_TITLE     varchar(255)    ,
	CONSTRAINT PK_DIM_PROFESSION PRIMARY KEY ( PROFESSION_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_SALE ( 
	SALE_ID              integer NOT NULL   ,
	PROEPRTY_ID          integer    ,
	CONSTRAINT PK_DIM_SALE PRIMARY KEY ( SALE_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_SCHOOL ( 
	SCHOOL_ID            integer NOT NULL   ,
	SCHOOL_NAME          varchar(255)    ,
	IS_PRIVATE           varchar(100)    ,
	SCHOOL_LEVEL         varchar(100)    ,
	LOW_GRADE            integer    ,
	HIGH_GRADE           integer    ,
	RANK_STARS           integer    ,
	CONSTRAINT PK_DIM_SCHOOL PRIMARY KEY ( SCHOOL_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_SELLER ( 
	SELLER_ID            integer NOT NULL   ,
	SELLER_INFORMATION   varchar(255)    ,
	CONSTRAINT PK_DIM_SELLER PRIMARY KEY ( SELLER_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.DIM_TIME ( 
	TIME_ID              integer NOT NULL   ,
	YEAR_NUM             integer    ,
	CONSTRAINT PK_DIM_TIME PRIMARY KEY ( TIME_ID )
 );

CREATE  TABLE "housingNY_dw_lgl".HOUSINGNY.FACTS_HOUSING ( 
	FACTS_ID             integer NOT NULL   ,
	LIVING_WAGE          DECIMAL(8,2)    ,
	POVERTY_WAGE         DECIMAL(8,2)    ,
	MINIMUM_WAGE         DECIMAL(8,2)    ,
	LIVING_EXPENSES      DECIMAL(10,2)    ,
	TYPICAL_ANNUAL__SALARY DECIMAL(10,2)    ,
	BUILDING_ASSESSED_VALUE DECIMAL(10,2)    ,
	BUILDING_APPRAISED_VALUE DECIMAL(10,2)    ,
	SALE_PRICE           DECIMAL(10,2)    ,
	LAND_APPRAISED_VALUE DECIMAL(10,2)    ,
	LAND_ASSESSED_VALUE  DECIMAL(10,2)    ,
	POPULATION_NUM       integer    ,
	INDEX_TOTAL_COUNT    integer    ,
	VIOLENT_TOTAL_COUNT  integer    ,
	MURDER_COUNTRAPE_COUNT integer    ,
	ROBBERY_COUNT        integer    ,
	AGGREVATED_ASSAULT_COUNT integer    ,
	PROPERTY_TOTAL_COUNT integer    ,
	BURGLARY_COUNT       integer    ,
	LARCENY_COUNT        integer    ,
	MV_THEFT_COUNT       integer    ,
	PUPIL_TEACHER_RATIO  integer    ,
	TIME_ID              integer NOT NULL   ,
	SCHOOL_ID            integer    ,
	BUILDING_ID          integer NOT NULL   ,
	SALE_ID              integer NOT NULL   ,
	SELLER_ID            integer NOT NULL   ,
	LAND_ID              integer NOT NULL   ,
	PROFESSION_ID        integer NOT NULL   ,
	LOCATION_ID          integer NOT NULL   
 );
