#!/bin/bash

source config

VERBOSE="${1}"

echo "Updating Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Updating $(pwd)..."

        pushd src 1>/dev/null

            git fetch -p
            git switch main
            git pull

        popd 1>/dev/null

    popd 1>/dev/null
done

