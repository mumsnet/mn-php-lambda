# php-lambda
PHP for use in AWS Lambda

This repo is used to build and push a PHP docker image that can be used as the base for a PHP Lambda runtime.

## Instructions

Run `./build.sh` to build the image, tag it and publish it to the mumsnet docker hub.  Make sure to have the mumsnet docker hub password handy.

## PHP versions

The current PHP version we're using is 7.3.6

If you wish to change this, create a new repo in the mumsnet docker hub (eg: called `php-lambda-8.1.0`, then edit `Dockerfile`, `build.sh` and this `README.md` to match.  You will then be able to update the php_lambda_runtime repo to make use of the new image.
