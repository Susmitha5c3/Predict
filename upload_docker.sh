#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=susmithasusmi13/udacityproj

# Step 2:  
# Authenticate & tag
export DOCKER_ID_USER="susmithasusmi13"
docker login
docker tag udacityproj $DOCKER_ID_USER/udacityproj
docker push $DOCKER_ID_USER/udacityproj

# Step 3:
# Push image to a docker repository
docker push susmithasusmi13/udacityproj