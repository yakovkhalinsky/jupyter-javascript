#! /bin/bash
DOCKER_REPO=$(cat docker-repo.txt)

echo "Pushing image to Docker Hub for $DOCKER_REPO"
echo ""

docker push $DOCKER_REPO