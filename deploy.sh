#!/bin/bash

# Define Docker Hub credentials and image details
DOCKER_USERNAME="nafilatest"
DOCKER_PASSWORD="Nafitest-user@2"
DOCKER_REPOSITORY="dev"
DOCKER_IMAGE="nafi_test_1"
DOCKER_TAG="latest1"  # Update this if using a different tag

# Log in to Docker Hub
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

# Pull Docker image from Docker Hub
docker pull "${DOCKER_USERNAME}/${DOCKER_REPOSITORY}:${DOCKER_TAG}"

# Stop and remove existing container if it exists
docker stop nafi_dev_test_1 || true
docker rm nafi_dev_test_1 || true

# Run new container, mapping port 8082 to the container's port
docker run -d --name nafi_dev_test_1 -p 8082:8082 "${DOCKER_USERNAME}/${DOCKER_REPOSITORY}:${DOCKER_TAG}"


