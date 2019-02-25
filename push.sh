#!/bin/bash

AWS_ACCOUNT_ID=SET_ME

$(aws ecr get-login --no-include-email --region us-east-1)

docker build -t docker-golang-base .

docker tag docker-golang-base:latest $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/docker-golang-base:latest

docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/docker-golang-base:latest
