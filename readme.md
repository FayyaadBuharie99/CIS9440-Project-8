### Group 8 - Project 9 - Housing 
# New York State (all counties) housing datasets 

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
- NYC Housing Data (112 GB) (https://www.dolthub.com/repositories/dolthub/us-housing-prices-v2/data/main/sales)
- Crime Data (32KB) (https://www.mylocalcrime.com/?kbid=62750#40.732326%2C%20-73.25099)
- School Ranking Data (15MB) (https://developer.schooldigger.com/)


### Data Modeling
<img width="1030" alt="Screenshot 2024-04-28 at 10 04 15 PM" src="https://github.com/FayyaadBuharie99/CIS9440-Project-8/assets/159973139/a661894a-33b8-4ff9-883a-ec44b46944f8">


### Methods
We use python scripts to extract the data from each of our datasets, such as: the housing data which contained information about various sales of home from all the states, the crime data which contained information about crime rates in each county, the school ranking data which contained information about the school ranking in each county, and the living wage data which contained information about the living wage in each county. All of the extracted data is then uploaded to a cloud storage -- in our case we opted to utilize Google Cloud Platform to achieve this. Our goal is to perform the ELT as there is a lot of data (namely the housing data), and it would less extensive to transform it.


### Data Tools
1.  Snowflake - to upload the stored data to a data warehouse
2.  Google Cloud Platform - to upload the raw data extracted from our datasets to a cloud  storage platform.
3.  Visual Studio - to clone our repository that contains our scripts, data models, and data dictionaries.
4.  Tableau - to visualize the data by utilizing the data from the data warehouse.


### Interface:
NEED TO DO ##The final interface will be a web-based application where the Persona can visualize the results.  People should be able also to connect to your  data using Tableau/PowerBI and do their own analysis. ##
