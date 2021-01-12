@echo off
title re-deploy

echo "------start--------"
docker-compose stop
docker-compose rm
docker-compose up -d
echo "------end--------"
pause