### Group 8 - Project 9 - Housing 
# New York State (all counties) housing datasets 

## Report 
1. Business Problem: We are looking to buy a new home, but not sure where to buy it. The final decision, to decide in which county to buy the home, will be based on the cost of living, housing sale price, crime rate and school rating. Those variables will help us identify the best counties and rank them to help finalize the decision of where to buy a new home. 

2. Business Impact: Our goal is to help the user to make a decision of where to buy a new home, based on the cost of living, housing sale price, crime rate and school rating. Using a combination of these criterias, you will be able to locate your dream home in an area of your choosing. This will have a great impact on job seekers, new families, and even individuals who are keen on investing in to new properties in New York State

3. Business Persona: Our system is created to assist people who are considering to purchase a house in New York State. For this system, we are collecting and analyzing useful data to support the house buyers to compare all necessary living indexes in New York State. The actors of the system could include all house buyers, real estate companies, and investors as well as all the system developers.

4. Data Sources:
    - MIT Living Wage (204 kb) (https://livingwage.mit.edu/counties/13151)
    - NYC Housing Data (112 GB) (https://www.dolthub.com/repositories/dolthub/us-housing-prices-v2/data/main/sales)
    - Crime Data (32KB) (https://www.mylocalcrime.com/?kbid=62750#40.732326%2C%20-73.25099)
    - School Ranking Data (15MB) (https://developer.schooldigger.com/)

5. Methods: We use python scripts to extract the data from each of our datasets, such as: the housing data which contained information about various sales of home from all the states, the crime data which contained information about crime rates in each county, the school ranking data which contained information about the school ranking in each county, and the living wage data which contained information about the living wage in each county. All of the extracted data is then uploaded to a cloud storage -- in our case we opted to utilize Google Cloud Platform to achieve this. Our goal is to perform the ELT as there is a lot of data (namely the housing data), and it would less extensive to transform it.

6. Data Tools: 1.  

7. Interface: 

