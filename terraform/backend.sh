#!/bin/bash

component=$1
environment=$2
appVersion=$3

dnf install ansible -y

# Create virtual environment (optional)
source venv/bin/activate  # Modify the path if needed

pip install botocore boto3

ansible-pull -i localhost \
  -U https://github.com/daws-78s/expense-ansible-roles-tf.git \
  main.yaml \
  -e env=$environment -e component=$component -e appVersion=$appVersion

# Deactivate virtual environment (optional)
deactivate