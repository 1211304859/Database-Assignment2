#!/bin/bash
aws s3 mb s3://my-static-site-bucket
aws s3 cp index.html s3://my-static-site-bucket/ --acl public-read
aws s3 cp error.html s3://my-static-site-bucket/ --acl public-read
aws s3 website s3://my-static-site-bucket/ --index-document index.html --error-document error.html
