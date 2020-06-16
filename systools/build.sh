#!/bin/bash
set -e
image=registry.cn-hangzhou.aliyuncs.com/arrome/systools
version=v1

docker build -t $image:$version .
docker push $image:$version
