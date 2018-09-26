#! /bin/bash
DOCKER_REPO=$(cat docker-repo.txt)

echo "Starting container from $DOCKER_REPO"
echo ""

docker run \
-d \
-p 8888:8888 \
-v $(pwd)/notebook:/home/jovyan \
--name jupyter $DOCKER_REPO