#!/bin/bash

yum update -y
yum install -y git python3

cd /opt

git clone https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git tp3-app

cd /opt/tp3-app

python3 -m pip install -r requirements.txt

nohup python3 -m uvicorn app:app \
    --host 0.0.0.0 \
    --port 8000 \
    > /var/log/fastapi.log 2>&1 &
