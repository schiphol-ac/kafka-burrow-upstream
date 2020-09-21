#!/bin/bash

: "${GITHUB_USER?}"
: "${GITHUB_TOKEN?}"

VERSION="1.3.4"
IMAGE_TAG="ghcr.io/schiphol-ac/kafka-burrow-upstream/kafka-burrow-upstream:$VERSION"

echo "Logging into registry"
echo "${GITHUB_TOKEN}" | docker login https://ghcr.io -u "${GITHUB_USER}" --password-stdin

echo; echo "Building Burrow version $VERSION"
cd Burrow; git checkout "v$VERSION"; cd ..
docker build --tag $IMAGE_TAG Burrow/

echo; echo "Pushing image to $IMAGE_TAG"
docker push "$IMAGE_TAG"
