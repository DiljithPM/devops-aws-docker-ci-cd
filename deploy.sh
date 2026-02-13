#!/bin/bash

cd /root/devops-aws-docker-ci-cd || exit

git pull origin main

docker stop diljith-container || true
docker rm diljith-container || true

docker build -t diljith-app .
docker run -d --name diljith-container -p 80:80 diljith-app

