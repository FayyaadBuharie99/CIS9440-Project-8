# import Libraries

import os
import boto3
from azure.storage.blob import BlobServiceClient
from google.cloud import storage
import pandas as pd
from io import BytesIO, StringIO
import requests
from bs4 import BeautifulSoup


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


df = pd.read_csv("/Users/gabisanches/Desktop/CIS9440 - Data Warehouse/Final_Project/all_table3.csv", encoding="ISO-8859-1")

# Google Cloud Storage Configuration
BUCKET_NAME = "housingproject_cis9440"
blob_name = "MIT_typicalannualsalaries.csv"

# Set the environment variable to the path of your service account key file
os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "/Users/gabisanches/Desktop/CIS9440 - Data Warehouse/Final_Project/CIS9440-Project-8/scripts/config.json"

# Convert DataFrame to CSV
output = StringIO()
df.to_csv(output, index=False)
data = output.getvalue()
output.close()

# Upload the CSV data to Google Cloud Storage
gcs_upload_blob(BUCKET_NAME, blob_name, data)

print(f"Uploaded {blob_name} to Google Cloud Storage in bucket {BUCKET_NAME}.")
