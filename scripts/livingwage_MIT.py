# web scraper for the MIT living wage 
    # extract all county data (NY) and save as CSV files

import os
import psycopg2
import requests
import pandas as pd
from bs4 import BeautifulSoup


def check_url(url):
    # function to check the main url in order to being scraping
    try:
        response = requests.get(url)
        response.raise_for_status()
        return response.text
    except requests.exceptions.RequestException as e:
        print("wrong website")
        return None


def collect_county_and_links(html):
    # function that will collect all of the counties and their hyperlinks

    if html is None:
        print("website is not working")
        return None
    
    base_url = 'https://livingwage.mit.edu'
    try:
        soup = BeautifulSoup(html, 'html.parser')
        county_div = soup.find('div', class_="counties list-unstyled")
        if county_div:
            county_dict = {}
            ul_elements = county_div.find_all('ul')
            for ul in ul_elements:
                li_elements = ul.find_all('li')
                for li in li_elements:
                    county_name = li.find('a').text.strip()
                    county_path_url = li.find('a')['href']
                    county_complete_url = base_url + county_path_url
                    
                    county_dict[county_name] = county_complete_url
            
            return county_dict
    except Exception as e:
        print("Error: Unable to scrape data from the website:", e)
        return None


def scrape_data(html, county):
    #function that takes the county name and link to scrape 3 tables per link
    if html is None:
        print("No HTML content to scrape check url, something is wrong")
        return None
    
    try:
        soup = BeautifulSoup(html, 'html.parser')
        # store all dataframes
        dfs = {'table1': [], 'table2': [], 'table3': []}

        # collects all table elements on page: should be 3, stores in a list
        tables = soup.find_all('table')
        if tables:
            for i, table in enumerate(tables, 1):
                rows = []
                data_rows = table.find('tbody').find_all('tr')
                for row in data_rows:
                    row_data = [cell.text.strip() for cell in row.find_all('td')] + [county]
                    rows.append(row_data)
                
                df = pd.DataFrame(rows)
                dfs[f'table{i}'].append(df)
        # return list of dataframe
        return dfs
    except Exception as e:
        print("Error: Unable to scrape data from the website:", e)
        return None

# get the current directory
current_directory = os.path.dirname(os.path.realpath(__file__))
# define the folder name where the CSV file will be stored
folder_name = 'CIS9440-Project-8'

main_url = 'https://livingwage.mit.edu/states/36/locations'
html = check_url(main_url)
if html:
    county_data = collect_county_and_links(html)
    if county_data:
        dfs_combined = {'table1': [], 'table2': [], 'table3': []}
        # dict: key = county name; value = the county link
        for county, county_link in county_data.items():
            # fetch HTML content for the county link 
            county_html = check_url(county_link)
            if county_html:
                table_data = scrape_data(county_html, county)
                if table_data:
                    for key, value in table_data.items():
                        dfs_combined[key].extend(value)
        
        for key, dfs in dfs_combined.items():
            combined_df = pd.concat(dfs, ignore_index=True)
            combined_df.to_csv(f"{folder_name}/all_{key}.csv", index=False)