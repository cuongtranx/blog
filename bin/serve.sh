#!/bin/bash

echo "Building image"
source ./bin/build.sh

docker run --rm \
    --volume="$PWD/blog:/usr/src" \
    --volume="$PWD/bundle:/usr/local/bundle" \
    -p 4000:4000 \
    -it \
    blog \
    jekyll serve
