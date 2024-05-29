#!/bin/bash

# Ensure the script exits on any error
set -e

# Define Docker Hub credentials and image details
DOCKER_USERNAME="nafilatest"
DOCKER_REPOSITORY="nafi_test_1"
DOCKER_TAG="latest1"

# Pull Docker image from Docker Hub
docker pull "${DOCKER_USERNAME}/${DOCKER_REPOSITORY}:${DOCKER_TAG}"

# Stop and remove the existing container if it exists
docker stop nafi_dev_test_1 || true
docker rm nafi_dev_test_1 || true

# Run a new container with the pulled image, mapping port 8082 to the container's port
docker run -d --name nafi_dev_test_1 -p 8082:8082 "${DOCKER_USERNAME}/${DOCKER_REPOSITORY}:${DOCKER_TAG}"

