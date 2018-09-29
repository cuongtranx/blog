#!/bin/bash

source ./build.sh

docker run \
    -it \
    cuongtn-blog \
    jekyll build blog
