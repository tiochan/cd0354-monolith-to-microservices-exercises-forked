#!/usr/bin/env bash

base_path=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker --version

cd ${base_path}/simple-express
docker build -t simple-express-server .
docker tag simple-express-server tiochan/simple-express:server

cd ${base_path}/reverse-proxy
docker build -t reverse-proxy .
docker tag reverse-proxy tiochan/simple-express:proxy

docker images
