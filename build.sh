#!/usr/bin/env bash
# For reference, make the image tag patch version number match the PHP patch version number
docker build -t php-lambda-7-3:1.0.6 -t php-lambda-7-3:latest .
docker tag php-lambda-7-3:1.0.6 mumsnet/php-lambda-7-3:1.0.6
docker tag php-lambda-7-3:latest mumsnet/php-lambda-7-3:latest
docker login --username=mumsnet
docker push mumsnet/php-lambda-7-3:1.0.6
docker push mumsnet/php-lambda-7-3:latest