@echo off
title makeImage

echo "------start--------"
docker build -t duobab:2021010815 .
echo "------end--------"
pause