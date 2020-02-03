#!/bin/bash

docker run --rm -e JUPYTER_ENABLE_LAB -p 8888:8888 -v "$PWD":/home/jovyan/work csizsek/jupyter:latest

