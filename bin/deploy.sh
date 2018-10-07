#!/bin/bash

export JEKYLL_VERSION=3.8

echo "Running container"
docker run \
    --rm \
    --volume="$PWD/blog:/srv/jekyll" \
    -it \
    -e JEKYLL_UID=$(id -u) \
    -e JEKYLL_GID=$(id -g) \
    jekyll/builder:$JEKYLL_VERSION \
    jekyll build
