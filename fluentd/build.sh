#!/bin/bash

set -eu

readonly REPOSITORY_NAME="suna-fluentd"

docker build . \
  --tag ${REPOSITORY_NAME}:latest \
  --build-arg FLUENTD_IMAGE_TAG=${FLUENTD_IMAGE_TAG}

docker tag ${REPOSITORY_NAME}:latest ${REPOSITORY_NAME}:${FLUENTD_IMAGE_TAG}

echo ${REPOSITORY_NAME}:${FLUENTD_IMAGE_TAG}
