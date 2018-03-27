#!/bin/bash

docker run -it -p 25565:25565 -v /opt/docker/docker-minecraft/world:/opt/minecraft/world np-minecraft
