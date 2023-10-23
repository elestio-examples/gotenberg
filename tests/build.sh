#!/usr/bin/env bash
cp ./build/Dockerfile ./
sed -i "s~ARG GOLANG_VERSION~ARG GOLANG_VERSION=1.21~g" Dockerfile
sed -i "s~ARG GOTENBERG_VERSION~ARG GOTENBERG_VERSION=snapshot~g" Dockerfile
sed -i "s~ARG GOTENBERG_USER_GID~ARG GOTENBERG_USER_GID=1001~g" Dockerfile
sed -i "s~ARG GOTENBERG_USER_UID~ARG GOTENBERG_USER_UID=1001~g" Dockerfile
sed -i "s~ARG PDFTK_VERSION~ARG PDFTK_VERSION=v3.3.3~g" Dockerfile
sed -i "s~ARG NOTO_COLOR_EMOJI_VERSION~ARG NOTO_COLOR_EMOJI_VERSION=v2.038~g" Dockerfile
docker buildx build . --output type=docker,name=elestio4test/gotenberg:latest | docker load
