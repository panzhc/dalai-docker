#!/bin/bash

DALAI_VERSION=0.3.1

docker build \
    --no-cache \
    --build-arg "DALAI_VERSION=${DALAI_VERSION}" \
    --tag panzhc/dalai:${DALAI_VERSION} \
    assets
if [ $? -ne 0 ]; then
    echo "Docker build image failed."
    exit 1
fi

docker push panzhc/dalai:${DALAI_VERSION}
if [ $? -ne 0 ]; then
    echo "Docker push image failed."
    exit 1
fi

echo Done.
