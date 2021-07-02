#!/bin/bash

docker stop cicd-server
docker rm   cicd-server

docker build -t devops/cicd-server ./server
docker run -d \
  --name cicd-server \
  -p 8000:8000 \
  --restart unless-stopped \
  devops/cicd-server

docker ps -a
curl 127.0.0.1:8000
