#!/bin/bash
ARCH=aarch64
cd s3-backup || exit
docker build \
  --build-arg BUILD_FROM="homeassistant/$ARCH-base:latest" \
  --build-arg ARCH=$ARCH \
  -t local/my-test-addon \
    .
docker run --name my-test-addon --rm local/my-test-addon