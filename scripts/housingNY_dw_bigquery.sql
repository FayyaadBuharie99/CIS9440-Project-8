CREATE SCHEMA INSTANCE;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_building ( 
	building_id int64 NOT NULL  ,
	building_num_units int64  ,
	building_year_built int64  ,
	building_num_stories int64  ,
	building_num_beds int64  ,
	building_num_baths int64  ,
	building_num_sqft int64  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_building ADD PRIMARY KEY ( building_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_land ( 
	land_id int64 NOT NULL  ,
	land_type string  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_land ADD PRIMARY KEY ( land_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	county string  ,
	zip_code int64  ,
	longitude int64  ,
	latitude int64  ,
	state string  ,
	city string  ,
	street_address string  ,
	township string  ,
	property_type string  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_profession ( 
	profession_id int64 NOT NULL  ,
	profession_title string  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_profession ADD PRIMARY KEY ( profession_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_sale ( 
	sale_id int64 NOT NULL  ,
	proeprty_id int64  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_sale ADD PRIMARY KEY ( sale_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_school ( 
	school_id int64 NOT NULL  ,
	school_name string  ,
	is_private string  ,
	school_level string  ,
	low_grade int64  ,
	high_grade int64  ,
	rank_stars int64  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_school ADD PRIMARY KEY ( school_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_seller ( 
	seller_id int64 NOT NULL  ,
	seller_information string  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_seller ADD PRIMARY KEY ( seller_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.dim_time ( 
	time_id int64 NOT NULL  ,
	year int64  
 );

ALTER TABLE housingNY_dw_lgl.INSTANCE.dim_time ADD PRIMARY KEY ( time_id )  NOT ENFORCED;

CREATE TABLE housingNY_dw_lgl.INSTANCE.facts_housing ( 
	facts_id int64 NOT NULL  ,
	living_wage numeric  ,
	poverty_wage numeric  ,
	minimum_wage numeric  ,
	food_price numeric  ,
	child_care_price numeric  ,
	medical_price numeric  ,
	housing_price numeric  ,
	transportation_price numeric  ,
	civic_price numeric  ,
	internet_mobile_price numeric  ,
	other_price numeric  ,
	annual__income_after_taxes numeric  ,
	annual_taxes numeric  ,
	annual_income_before_taxes numeric  ,
	typical_annual__salary numeric  ,
	building_assessed_value numeric  ,
	building_appraised_value numeric  ,
	sale_price numeric  ,
	land_appraised_value numeric  ,
	land_assessed_value numeric  ,
	population int64  ,
	index_total_count int64  ,
	violent_total_count int64  ,
	murder_countrape_count int64  ,
	robbery_count int64  ,
	aggrevated_assault_count int64  ,
	property_total_count int64  ,
	burglary_count int64  ,
	larceny_count int64  ,
	MV_theft_count int64  ,
	pupil_teacher_ratio int64  ,
	time_id int64 NOT NULL  ,
	school_id int64  ,
	building_id int64 NOT NULL  ,
	sale_id int64 NOT NULL  ,
	seller_id int64 NOT NULL  ,
	land_id int64 NOT NULL  ,
	profession_id int64 NOT NULL  ,
	location_id int64 NOT NULL  
 );
