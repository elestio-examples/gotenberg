#!/usr/bin/env bash
cp ./build/Dockerfile ./
docker buildx build . --output type=docker,name=elestio4test/gotenberg:latest | docker load
