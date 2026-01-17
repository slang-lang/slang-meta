#!/bin/bash

source config

VERBOSE="${1}"

echo "Preparing Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Preparing $(pwd)..."

        make prepare

    popd 1>/dev/null
done

