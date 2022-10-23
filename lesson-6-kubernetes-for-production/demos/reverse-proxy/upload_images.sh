#!/usr/bin/env bash

base_path=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "$DOCKER_HUB_TOKEN" | docker login -u "$DOCKER_HUB_USERNAME" --password-stdin
docker push tiochan/simple-express:server
docker push tiochan/simple-express:proxy
