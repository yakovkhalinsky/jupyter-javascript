#! /bin/bash
DOCKER_REPO=$(cat docker-repo.txt)

echo "Building image for $DOCKER_REPO"
echo ""

docker build -t $DOCKER_REPO .