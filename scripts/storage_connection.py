# import Libraries
import pandas as pd
import numpy as np
import json
import requests
from google.cloud import storage
from io import StringIO


# Google Cloud Storage Functions
def gcs_upload_blob(bucket_name, blob_name, data):
    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(blob_name)
    blob.upload_from_string(data)
    print(f"Uploaded to Google Cloud Storage: {blob_name}")

def gcs_download_blob(bucket_name, blob_name):
    storage_client = storage.Client()
    bucket = storage_client.bucket(bucket_name)
    blob = bucket.blob(blob_name)
    return blob.download_as_string()

# Web API Code to get the data:
def check_url(url, params=None):
    response = requests.get(url, params=params)
    if response.status_code == 200:
        return response
    else:
        print("Bad connection")
        return None

url = 'https://data.cityofnewyork.us/resource/h9gi-nx95.json'

# Set the limit per request
limit_per_request = 2000

# Initialize variables
offset = 0
all_data = []

while True:
    params = {'$limit': limit_per_request, '$offset': offset}
    data = check_url(url, params)

    if data:
        current_data = data.json()
        if not current_data:
            break

        all_data.extend(current_data)
        offset += limit_per_request
    else:
        print("not working")
        break

# Convert the JSON data to a Pandas DataFrame
df = pd.DataFrame(all_data)

# Google Cloud Storage Configuration
BUCKET_NAME = "housingproject_cis9440"
blob_name = "greentaxi.csv"

# Convert DataFrame to CSV
output = StringIO()
df.to_csv(output, index=False)
data = output.getvalue()
output.close()

# Upload the CSV data to Google Cloud Storage
gcs_upload_blob(BUCKET_NAME, blob_name, data)

print(f"Uploaded {blob_name} to Google Cloud Storage in bucket {BUCKET_NAME}.")
