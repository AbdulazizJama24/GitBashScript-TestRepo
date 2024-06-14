#!/bin/bash

targets=("bbc.com" "google.com" "localhost")

for target in "${targets[@]}"; do
    if ping -c 1 "$target" &> /dev/null; then
        echo "$target is reachable"
    else
        echo "$target is not reachable"
        echo "Additional information:"
        ping -c 1 "$target"
    fi
done

