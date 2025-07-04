# AWS Secure Web App Deployment

## Overview
This project simulates secure deployment of a LAMP-based application on AWS EC2 with an RDS backend, using Infrastructure as Code (CloudFormation), scripts, and manual steps.

## Features
- EC2 setup with Apache, PHP
- RDS MySQL connectivity
- Security Group limiting ports
- Shell scripts to automate setup
- CloudFormation template
- phpinfo() test page

## Structure
- `cloudformation/`: YAML template
- `scripts/`: Shell scripts
- `web/`: PHP sample page

## Usage
1. Deploy using CloudShell:
```bash
aws cloudformation create-stack --stack-name myWebAppStack --template-body file://cloudformation/webserver.yaml --parameters ParameterKey=KeyPairName,ParameterValue=your-key
```

2. SSH into EC2 and run:
```bash
bash scripts/install_apache_php.sh
bash scripts/install_mysql_client.sh
```

3. Visit your EC2 Public DNS via browser to verify PHP

## Note
This is part of a university assignment. Some features such as IAM, WAF were omitted due to time and sandbox constraints.
