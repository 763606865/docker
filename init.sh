#!/bin/sh

DOCKER_FILE_PATCH=${HOME}/docker

docker-compose -f ${DOCKER_FILE_PATCH}/docker-compose.yml up -d