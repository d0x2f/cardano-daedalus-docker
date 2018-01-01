#!/usr/bin/env bash

touch /tmp/.docker.xauth
xauth nlist ${DISPLAY} | sed -e 's/^..../ffff/' | xauth -f /tmp/.docker.xauth nmerge -

docker-compose up