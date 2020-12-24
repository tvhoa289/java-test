#!/bin/bash


aws ecr create-repository --repository-name lssp-documentupload-p8088 --image-tag-mutability IMMUTABLE --image-scanning-configuration scanOnPush=true --region ap-southeast-1 > repo.txt
aws ecr create-repository --repository-name lssp-portal-p8082 --image-tag-mutability IMMUTABLE  --region ap-southeast-1 >>repo.txt
aws ecr create-repository --repository-name lssp-auditlog-p8083 --image-tag-mutability IMMUTABLE --region ap-southeast-1 >>repo.txt
repo="$(grep -oP '(?<="repositoryUri": ")[^"]*' repo.txt)"
echo "image URL for Repository"
grep -oP '(?<="repositoryUri": ")[^"]*' repo.txt