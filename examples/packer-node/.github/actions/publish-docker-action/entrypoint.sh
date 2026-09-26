#!/bin/bash
set -o errexit
set -o nounset

docker --version
make clean deps lint build-docker
cat logs/packer-build-docker.log
echo "${DOCKERHUB_TOKEN}" | docker login --username cliffano --password-stdin
docker inspect cliffano/backpackerexample
make publish-docker