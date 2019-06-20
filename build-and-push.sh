#!/bin/bash

IMAGE_TAG="schipholgroup/kafka-burrow:latest"
docker build -t $IMAGE_TAG Burrow/
docker push $IMAGE_TAG
