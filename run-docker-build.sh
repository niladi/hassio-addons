#!/bin/bash
ARCH=amd64
cd s3-backup || exit
docker build \
  --build-arg BUILD_FROM="homeassistant/$ARCH-base:latest" \
  --build-arg ARCH=$ARCH \
  -t local/my-test-addon \
  .