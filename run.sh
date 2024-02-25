#!/bin/bash

docker build -t nginx-proxy-pass-bug .
docker run -d -p 80:80 nginx-proxy-pass-bug