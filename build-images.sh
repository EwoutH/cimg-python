#!/usr/bin/env bash
# Do not edit by hand; please use build scripts/templates to make changes
set -eo pipefail

docker context create cimg
docker buildx create --use cimg
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.12/Dockerfile -t cimg/python:3.12.3 -t cimg/python:3.12 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.12/node/Dockerfile -t cimg/python:3.12.3-node -t cimg/python:3.12-node --push .
docker buildx build --platform=linux/amd64 --file 3.12/browsers/Dockerfile -t cimg/python:3.12.3-browsers -t cimg/python:3.12-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.11/Dockerfile -t cimg/python:3.11.9 -t cimg/python:3.11 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.11/node/Dockerfile -t cimg/python:3.11.9-node -t cimg/python:3.11-node --push .
docker buildx build --platform=linux/amd64 --file 3.11/browsers/Dockerfile -t cimg/python:3.11.9-browsers -t cimg/python:3.11-browsers --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.10/Dockerfile -t cimg/python:3.10.14 -t cimg/python:3.10 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --file 3.10/node/Dockerfile -t cimg/python:3.10.14-node -t cimg/python:3.10-node --push .
docker buildx build --platform=linux/amd64 --file 3.10/browsers/Dockerfile -t cimg/python:3.10.14-browsers -t cimg/python:3.10-browsers --push .
