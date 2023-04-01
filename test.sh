#!/bin/bash

docker rm -f dalai >/dev/null 2>&1

docker run -d \
    --name dalai \
    --volume /volues/dalai/data:/data \
    --publish 3000:3000 \
    panzhc/dalai:0.3.1 \
    npx dalai serve --home /data
