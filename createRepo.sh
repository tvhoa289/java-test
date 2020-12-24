#!/bin/bash


aws ecr create-repository --repository-name lssp-documentupload --image-tag-mutability IMMUTABLE --image-scanning-configuration scanOnPush=true --region ap-southeast-1 > repo.txt
aws ecr create-repository --repository-name lssp-portal --image-tag-mutability IMMUTABLE  --region ap-southeast-1 >>repo.txt
aws ecr create-repository --repository-name lssp-auditlog --image-tag-mutability IMMUTABLE --region ap-southeast-1 >>repo.txt
repo="$(grep -oP '(?<="repositoryUri": ")[^"]*' repo.txt)"
echo "image URL for Repository"
grep -oP '(?<="repositoryUri": ")[^"]*' repo.txt