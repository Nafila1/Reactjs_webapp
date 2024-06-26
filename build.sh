#!/bin/bash

# Define Docker Hub credentials and image details
DOCKER_USERNAME="nafilatest"
DOCKER_PASSWORD="Nafitest-user@2"
DOCKER_REPOSITORY="nafi_test_1"
DOCKER_TAG="latest1"

# Log in to Docker Hub
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

# Build Docker image
docker build -t "${DOCKER_USERNAME}/${DOCKER_REPOSITORY}:${DOCKER_TAG}" .

# Push Docker image to Docker Hub
docker push "${DOCKER_USERNAME}/${DOCKER_REPOSITORY}:${DOCKER_TAG}"

