#!/bin/bash

echo "Stopping all containers"
docker stop $(docker ps -a -q)

echo "Deleting all containers"
docker rm $(docker ps -a -q)