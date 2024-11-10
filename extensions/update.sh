#!/bin/bash

source config

VERBOSE="${1}"

echo "Building Slang extensions:"

for directory in */; do
    pushd ${directory} 1>/dev/null

        echo "Building $(pwd)..."

        $(
            cd src
            git pull 1>/dev/null 2>&1
        )
        $(
            mkdir -p build
            cd build
            make all 1>/dev/null 2>&1
        )

        sudo cp build/lib/* /usr/local/share/slang/libs

    popd 1>/dev/null
done
