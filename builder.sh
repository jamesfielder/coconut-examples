#!/usr/bin/env bash

for f in *.coco
do
    coconut $f
done

watchmedo shell-command \
    --patterns="*.coco" \
    --recursive \
    --command='coconut "${watch_src_path}"' \
    .