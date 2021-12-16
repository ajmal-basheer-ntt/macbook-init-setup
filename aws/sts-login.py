#!/usr/bin/env python
import os
import boto3
from time import sleep
session = boto3.Session()
credentials = session.get_credentials()
# important or `get_frozen_credentials` could return nothing
sleep(3)
# get creds and save as env variables
credentials = credentials.get_frozen_credentials()
access_key = credentials.access_key
secret_key = credentials.secret_key
security_token = credentials.token
os.putenv('AWS_ACCESS_KEY_ID', access_key)
os.putenv('AWS_SECRET_ACCESS_KEY', secret_key)
os.putenv('AWS_SESSION_TOKEN', security_token)
os.system('bash')
