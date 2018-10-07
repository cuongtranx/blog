#!/bin/bash

export JEKYLL_VERSION=3.8

docker run \
    -it \
    --rm \
    --volume="$PWD/blog:/srv/jekyll" \
    --volume="$PWD/bundle:/usr/local/bundle" \
    -p 0.0.0.0:4000:4000 \
    jekyll/jekyll:$JEKYLL_VERSION \
    jekyll serve
