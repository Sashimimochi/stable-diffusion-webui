#!/bin/bash

genie -s
sudo systemctl start docker
DOCKER_BUILDKIT=1 /usr/local/bin/docker-compose --profile download up --build
DOCKER_BUILDKIT=1 /usr/local/bin/docker-compose --profile auto up
DOCKER_BUILDKIT=1 /usr/local/bin/docker-compose --profile auto up --build
