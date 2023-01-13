#!/bin/sh
docker buildx build --platform linux/amd64 -t turbopatent/docker-lambda:nodejs18.x --push .
