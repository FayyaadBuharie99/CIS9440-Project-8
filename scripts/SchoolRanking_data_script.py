#!/usr/bin/env python
# coding: utf-8

# In[21]:


# import Librairies
import pandas as pd
import numpy as  np
import json
import requests
import boto3
from azure.storage.blob import BlobServiceClient, BlobClient, ContainerClient
from google.cloud import storage
from io import StringIO
import os


# In[4]:


# Load JSON data from the first file
with open("school_digger_AK_NE 1.json", "r") as file:
    json_data1 = json.load(file)

# Load JSON data from the second file
with open("SchoolDigger_NH_WY 1.json", "r") as file:
    json_data2 = json.load(file)


# In[5]:


def flatten_data(json_data):
    flattened_data = []
    for item in json_data:
        for sub_item in item:
            flattened_data.append(sub_item)
    return flattened_data


# In[6]:


# Flatten the JSON data from both files
flattened_data1 = flatten_data(json_data1)
flattened_data2 = flatten_data(json_data2)


# In[9]:


# Create DataFrames from flattened data
df1 = pd.DataFrame(flattened_data1)
df2 = pd.DataFrame(flattened_data2)

# Merge the DataFrames
SCHOOL_DATA = pd.concat([df1, df2], ignore_index=True)

# Display the merged DataFrame
print(SCHOOL_DATA)


# In[10]:


SCHOOL_DATA


# In[12]:


SCHOOL_DATA.info()


# In[13]:


SCHOOL_DATA_CLEANED = SCHOOL_DATA.copy()


# In[14]:


#Check if copied correctly

SCHOOL_DATA_CLEANED


# In[15]:


print(SCHOOL_DATA.shape)


# In[17]:


print(SCHOOL_DATA.columns)


# In[18]:


memory_usage_mb = SCHOOL_DATA.memory_usage().sum() / (1024 ** 2) # Converting bytes to MB
print("Memory usage:")
print(SCHOOL_DATA.memory_usage() / (1024 ** 2)) # Memory usage in MB for each column
print(f"Total memory usage: {memory_usage_mb} MB")


# In[19]:


# Convert DataFrame to CSV
output = StringIO()
SCHOOL_DATA.to_csv(output, index=False)
data = output.getvalue()
output.close()


# In[25]:


# Convert DataFrame to CSV
desktop_path = os.path.join(os.path.expanduser('~'), 'Desktop')
csv_file_path = os.path.join(desktop_path, 'SCHOOL_DATA.csv')
SCHOOL_DATA.to_csv(csv_file_path, index=False)

print(f"CSV file saved to {csv_file_path}")

