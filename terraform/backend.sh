#!/bin/bash
component=$1
environment=$2
app_Version=$3
dnf install ansible -y
pip3.9 install botocore boto3
ansible-pull -i localhost \
  -U https://github.com/Revanth228/expense-ansible-roles-expense-ansible-roles-tf.git \
  main.yaml \
  -e "env=$environment component=$component appVersion=$appVersion"
