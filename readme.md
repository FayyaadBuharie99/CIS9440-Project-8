### Group 8 - Project 9 - Housing 
# New York State Housing

## Team Members
Gabriele DAmelio Sanches

Mohammed Fayyaad Buharie

Jay Ramirez

Chunran Chen

Wilson Cen Wu


## Table of Contents

- [Business Problem](#business-problem)
- [Business Impact](#business-impact)
- [Business Persona](#business-persona)
- [Information Architecture](#information-architecture)
- [Data Sources](#data-sources)
- [Data Modeling](#data-modeling)
- [Methods](#methods)
- [Interface](#interface)


## Report 

### Business Problem

We are looking to buy a new home, but not sure where to buy it. The final decision, to decide in which county to buy the home, will be based on the cost of living, housing sale price, crime rate and school rating. Those variables will help us identify the best counties and rank them to help finalize the decision of where to buy a new home. 


### Business Impact

Our goal is to help the user to make a decision of where to buy a new home, based on the cost of living, housing sale price, crime rate and school rating. Using a combination of these criterias, you will be able to locate your dream home in an area of your choosing. This will have a great impact on job seekers, new families, and even individuals who are keen on investing in to new properties in New York State


### Business Persona
Our system is created to assist people who are considering to purchase a house in New York State. For this system, we are collecting and analyzing useful data to support the house buyers to compare all necessary living indexes in New York State. The actors of the system could include all house buyers, real estate companies, and investors as well as all the system developers.


### Information Architecture
<img width="1301" alt="Screenshot 2024-04-28 at 10 04 54 PM" src="https://github.com/FayyaadBuharie99/CIS9440-Project-8/assets/159973139/9812c351-01c9-401f-a7b1-5e147ca4699f">


### Data Sources
- MIT Living Wage (204 kb) (https://livingwage.mit.edu/counties/13151)
  
  Metadata: [data_dictionary_MITLivingWage.xlsx](https://github.com/FayyaadBuharie99/CIS9440-Project-8/files/15144604/data_dictionary_MITLivingWage.xlsx)
- NYC Housing Data (112 GB) (https://www.dolthub.com/repositories/dolthub/us-housing-prices-v2/data/main/sales)

   Metadata: [data_dictionary_housing_prices.xlsx](https://github.com/FayyaadBuharie99/CIS9440-Project-8/files/15144647/data_dictionary_housing_prices.xlsx)
- Crime Data (32KB) (https://www.mylocalcrime.com/?kbid=62750#40.732326%2C%20-73.25099)

   Metadata: [data_dictionary_Crime_data.xlsx](https://github.com/FayyaadBuharie99/CIS9440-Project-8/files/15144651/data_dictionary_Crime_data.xlsx)
- School Ranking Data (15MB) (https://developer.schooldigger.com/)

   Metadata: [data_dictionary_SchoolRankings.xlsx](https://github.com/FayyaadBuharie99/CIS9440-Project-8/files/15144652/data_dictionary_SchoolRankings.xlsx)


### Data Modeling
<img width="1030" alt="Screenshot 2024-04-28 at 10 04 15 PM" src="https://raw.githubusercontent.com/FayyaadBuharie99/CIS9440-Project-8/main/models/Updated%20Data%20Modeling.png">


### Methods
We use python scripts to extract the data from each of our datasets, such as: the housing data which contained information about various sales of home from all the states, the crime data which contained information about crime rates in each county, the school ranking data which contained information about the school ranking in each county, and the living wage data which contained information about the living wage in each county. All of the extracted data is then uploaded to a cloud storage -- in our case we opted to utilize Google Cloud Platform to achieve this. Our goal is to perform the ELT as there is a lot of data (namely the housing data), and it would less extensive to transform it. 

We were able to sucessfully clean all of our data in Snowflake and even encountered issues that were resolved, such as Property ID and Sales ID only containing null values, so we generated our set of numbers to improve data integrity. We joined all the dimensions along with the columns pertaning to the facts in our data model to create a facts table in snowflake whose dta is joined by the specfifc dimension such dim_sales, dim_profession, dim_property etc. The culmination of thesse joins made it easier to send the data to tableau and visualize it as without any trouble.


### Data Tools
1.  Snowflake - to upload the stored data to a data warehouse
2.  Google Cloud Platform - to upload the raw data extracted from our datasets to a cloud  storage platform.
3.  Visual Studio - to clone our repository that contains our scripts, data models, and data dictionaries.
4.  Tableau - to visualize the data by utilizing the data from the data warehouse.


### Visual Interface

After we cleaned all the data in Snowflake, we then used Tableau -- a visualization software to produce results for each of the datasets incorporated into our system. We used different visualization styles such as:

1. Crime Data - We visualized the average crime rate by county to display the top five with the highest average crime rate and bottom 5 lowest crime rate by utilizing a bar graph.

<img width="1205" alt="Screenshot 2024-05-11 at 10 13 23 PM" src="https://github.com/FayyaadBuharie99/CIS9440-Project-8/assets/159973139/fc9f9edd-5827-43bd-887c-7f3683fe106a">

2. School Ranking Data - This shows a line graph of the average school ranks in each county

<img width="1438" alt="Screenshot 2024-05-11 at 10 11 49 PM" src="https://github.com/FayyaadBuharie99/CIS9440-Project-8/assets/159973139/ecd98e96-70d5-4f47-940d-1c05fc220d85">

3. Housing Data - This graph shows the average sales prices for each county through a combination of aggregated zipcode data.

<img width="1375" alt="Screenshot 2024-05-11 at 10 11 16 PM" src="https://github.com/FayyaadBuharie99/CIS9440-Project-8/assets/159973139/f3946a9f-ea7b-4cf1-ba46-22d89dd03694">

4. MIT Living Wage Data - This shows the average cost of living for each county in New York State

<img width="793" alt="Screenshot 2024-05-11 at 10 12 27 PM" src="https://github.com/FayyaadBuharie99/CIS9440-Project-8/assets/159973139/64cca142-8eeb-4d16-82c1-33dcbf21eb1e">


5. Interactive Tableau Dashboard: https://public.tableau.com/app/profile/gabriele.sanches/viz/NYHousng-InteractiveVisuals/NYHousingDashboard#1
   (Also available in the "docs" folder for the tableau desktop file)

- New York State Map
    - Interactive map to find the best county and zip code that meet your requirements: 
        - Choose the average price of housing sales
        - Choose the average school rank
        - Choose the average count of robbery 

- Living Wage vs. Minimum Wage 
    - Chart showing the NY State Minimum Wage  ($16/hour) and what is the wage necessary to be considered a living wage by state

- Annual Salary by Occupation vs. Average Living Expenses by County
    - Interactive chart that shows the average living expenses by county compared to the average annual salary by occupation (average salary by occupation by the State of NY)
        - Select the profession title that most relates to your current or targeted job and compare the annual salary to the living expenses by state
