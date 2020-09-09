#!/bin/bash

VERSION="1.3.4"
IMAGE_TAG="schipholgroup/kafka-burrow:$VERSION"

cd Burrow
git checkout "v$VERSION"
docker build -t $IMAGE_TAG Burrow/
docker push $IMAGE_TAG
