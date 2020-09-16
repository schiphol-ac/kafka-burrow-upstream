#!/bin/bash

: "${GITHUB_USER?}"
: "${GITHUB_TOKEN?}"

VERSION="1.3.4"
IMAGE_TAG="docker.pkg.github.com/schiphol-ac/kafka-burrow/kafka-burrow-upstream:$VERSION"

echo "Logging into registry"
echo "${GITHUB_TOKEN}" | docker login https://docker.pkg.github.com -u "${GITHUB_USER}" --password-stdin

echo; echo "Building Burrow version $VERSION"
cd Burrow; git checkout "v$VERSION"; cd ..
docker build --tag $IMAGE_TAG Burrow/

echo; echo "Pushing image to $IMAGE_TAG"
docker push "$IMAGE_TAG"
