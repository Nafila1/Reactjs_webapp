#!/bin/bash

# Ensure the script exits on any error
set -e

# Define the local Docker image details
DOCKER_IMAGE="nafi_test_1"
DOCKER_TAG="latest1"  # Update this if using a different tag

# Optional: Build the Docker image locally
# Uncomment and customize the following line if you need to build the image
# docker build -t "${DOCKER_IMAGE}:${DOCKER_TAG}" .

# Stop and remove the existing container if it exists
docker stop nafi_dev_test_1 || true
docker rm nafi_dev_test_1 || true

# Run a new container with the local image, mapping port 8082 to the container's port
docker run -d --name nafi_dev_test_1 -p 8082:8082 "${DOCKER_IMAGE}:${DOCKER_TAG}"

