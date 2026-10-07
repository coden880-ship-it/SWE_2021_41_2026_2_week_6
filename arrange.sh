#!/bin/bash

for file in files/*; do
    [ -f "$file" ] || continue
    name=$(basename "$file")
    first=$(echo "${name:0:1}" | tr '[:upper:]' '[:lower:]')
    mkdir -p "$first"
    mv "$file" "$first/"
done
