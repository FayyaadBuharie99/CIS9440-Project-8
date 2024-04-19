#!/usr/bin/env python
# coding: utf-8

# In[3]:


# import Librairies
import pandas as pd
import numpy as  np
import json
import requests
import boto3
from azure.storage.blob import BlobServiceClient, BlobClient, ContainerClient
from google.cloud import storage
from io import StringIO


# In[5]:


df_raw = pd.read_json("school_digger_AK_NE 1.json")
print(df_raw.head())


# In[8]:


df_raw2 = pd.read_json("SchoolDigger_NH_WY 1.json")
print(df_raw2.head())


# In[10]:


df_raw


# In[11]:


df_raw2


# In[12]:


df_raw.info()


# In[13]:


df_raw2.info()


# In[14]:


#Copy of dataframes

df_cleaned = df_raw.copy()

df_cleaned2 = df_raw2.copy()


# In[17]:


print(df_raw.shape)

print(df_raw2.shape)


# In[20]:


print(df_raw.columns)

print(df_raw2.columns)


# In[21]:


memory_usage_mb = df_raw.memory_usage().sum() / (1024 ** 2) # Converting bytes to MB
print("Memory usage:")
print(df_raw.memory_usage() / (1024 ** 2)) # Memory usage in MB for each column
print(f"Total memory usage: {memory_usage_mb} MB")


# In[22]:


memory_usage_mb2 = df_raw2.memory_usage().sum() / (1024 ** 2) # Converting bytes to MB
print("Memory usage:")
print(df_raw2.memory_usage() / (1024 ** 2)) # Memory usage in MB for each column
print(f"Total memory usage: {memory_usage_mb2} MB")


# In[23]:


# Combine the two DataFrames
combined_df = pd.concat([df_raw, df_raw2], ignore_index=True)

# Display the combined DataFrame
print(combined_df)


# In[24]:


df_raw3 = combined_df


# In[25]:


df_raw3


# In[26]:


#Copy of combined dataframe

df_cleaned3 = df_raw3.copy()


# In[27]:


#Memory usage of final combined dataframe

memory_usage_mb3 = df_raw3.memory_usage().sum() / (1024 ** 2) # Converting bytes to MB
print("Memory usage:")
print(df_raw3.memory_usage() / (1024 ** 2)) # Memory usage in MB for each column
print(f"Total memory usage: {memory_usage_mb3} MB")


# In[28]:


# Convert DataFrame to CSV
output = StringIO()
df_raw3.to_csv(output, index=False)
data = output.getvalue()
output.close()

