#!/usr/bin/env bash
# For reference, make the image tag patch version number match the PHP patch version number
docker build -t php-lambda:7.3b .
docker tag php-lambda:7.3b mumsnet/php-lambda:7.3b
docker login --username=mumsnet
docker push mumsnet/php-lambda:7.3b
