#!/bin/bash

# Update system
yum update -y

# Install required packages
yum install -y git python3

# Clone the GitHub repository
cd /opt
git clone YOUR_GITHUB_REPO_URL fastapi

# Install Python dependencies
cd /opt/fastapi
python3 -m pip install -r requirements.txt

# Start FastAPI
nohup python3 -m uvicorn main:app \
    --host 0.0.0.0 \
    --port 8000 \
    > /var/log/fastapi.log 2>&1 &
