#!/bin/bash

echo "------start--------"
docker-compose stop
docker-compose rm
docker-compose up -d
echo "------end--------"
