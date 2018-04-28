# angular-docker

[![Build Status](https://travis-ci.org/SoftInstigate/angular-docker.svg?branch=master)](https://travis-ci.org/SoftInstigate/angular-docker)

A base docker image for **building** [Angular](https://angular.io) 2 or 4 Web applications.

It's based on node 6.x [LTS](https://github.com/nodejs/LTS) images and adds some tools like [yarn](https://yarnpkg.com/) and [typings](https://github.com/typings/typings).

Docker Hub: https://hub.docker.com/r/softinstigate/angular-docker/

## Base image
node:8

## Additional packages
* apt-utils
* rsync
* yarn
* typings 2.x
