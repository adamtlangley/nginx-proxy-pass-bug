#!/bin/bash

docker kill $(docker ps -q)
docker build -t nginx-proxy-pass-bug .
docker run -d -p 80:80 nginx-proxy-pass-bug