#!/bin/bash

cd s3-backup || exit
docker build \
  --build-arg BUILD_FROM="homeassistant/amd64-base:latest" \
  -t local/my-test-addon \
  .