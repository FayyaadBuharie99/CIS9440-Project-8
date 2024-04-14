import requests
from bs4 import BeautifulSoup
import pandas as pd

# List of URLs you want to scrape
urls = ['URL_1_HERE', 'URL_2_HERE', 'URL_3_HERE']

# List to store all tables
all_tables = []

# Iterate over each URL in the list
for url_index, url in enumerate(urls):
    # Add a row with the website URL
    website_row = pd.DataFrame([['Website:', url]], columns=['Information', 'Value'])
    all_tables.append(website_row)

    # Send a GET request to the URL
    response = requests.get(url)

    # Parse the HTML content of the page
    soup = BeautifulSoup(response.content, 'html.parser')

    # Find all tables in the page
    tables = soup.find_all('table')

    # Iterate over each table and convert it to a DataFrame
    for table_index, table in enumerate(tables):
        rows = table.find_all('tr')
        table_data = []
        for row in rows:
            cols = row.find_all(['td', 'th'])
            cols = [ele.text.strip() for ele in cols]
            table_data.append(cols)
        
        # Use the first row as column headers and the rest as data
        if table_data:
            headers = table_data[0]
            data = table_data[1:]
            df = pd.DataFrame(data, columns=headers)
        else:
            df = pd.DataFrame()
        
        # Add the DataFrame to the list of all tables
        all_tables.append(df)

        # Add a row with a separator (can be adjusted as needed)
        separator = pd.DataFrame([['-' * 10] * len(headers)], columns=headers)
        all_tables.append(separator)

    # Remove the last separator added for the last table of each site
    all_tables.pop()

# Concatenate all tables into a single DataFrame
final_df = pd.concat(all_tables, ignore_index=True)

# Save the final DataFrame as a CSV file
final_df.to_csv('all_tables.csv', index=False)
