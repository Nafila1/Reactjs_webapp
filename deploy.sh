#!/bin/bash

# Pull the Docker image
docker pull nafi_test_1

# Run the Docker container
docker run -d -p 8082:8082 nafi_test_1

